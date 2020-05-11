#!/bin/bash

# Debian bullseye dependencies installer for i3wm-themer
# 
# - The script will create Debian packages for the fonts
# required in i3wm-themer and install them.
#
# - The i3-gaps Debian package will be downloaded and
# installed
#
# - The other dependencies will be installed from the
# standard apt-get repository
#
# It requires root for the apt-get operations, there is no
# need to compile anything!

declare -a GENERATED_PACKAGES
declare -a TEMPORARY_REQUIRED_PACKAGES
declare -a REQUIRED_PACKAGES

LOCAL_PACKAGES_DIR="/tmp/localpackages"
TEMPORARY_REQUIRED_PACKAGES=( checkinstall unzip )
REQUIRED_PACKAGES=( rofi polybar nitrogen rxvt alsa-utils mate-power-manager dunst libnotify-bin )

function prepare(){
    cd /tmp
    mkdir -p $LOCAL_PACKAGES_DIR
}
prepare

function installTemporaryPackages(){
    apt-get install -qq -y ${TEMPORARY_REQUIRED_PACKAGES[@]}
}
installTemporaryPackages

function geti3Package(){
    link='https://github.com/barnumbirr/i3-gaps-debian/releases/download/v4.18.1-1/i3-gaps_4.18.1-1_amd64_debian_testing.deb'
    curl -L -s "$link" --output "$LOCAL_PACKAGES_DIR/i3-gaps_4.18.1-1_amd64_debian_testing.deb"
}
geti3Package

function make_scp_package(){
    link='https://github.com/adobe-fonts/source-code-pro/archive/release.zip'
    curl -L -s "$link" --output "release.zip"
    unzip -qq "release.zip"
    cd "source-code-pro-release/TTF"
    printf "
install:
\tmkdir -p /usr/share/fonts/truetype/source-code-pro
\tcp *.ttf -t /usr/share/fonts/truetype/source-code-pro" > Makefile
    echo "Monospaced font family for user interface and coding environments" > description-pak
 
    checkinstall -D --pkgname "fonts-source-code-pro" --pkgversion "1.010" --pkgarch "all" --pkglicense "OFL-1.1" --pkgsource "https://github.com/adobe-fonts/source-code-pro" --maintainer "$USER@$HOSTNAME" --nodoc --install=no -y --pakdir "$LOCAL_PACKAGES_DIR" &> /dev/null
    cd ../../
    rm -rf "release.zip" "source-code-pro-release"
}
make_scp_package

function make_awesome_package(){
    link='https://github.com/FortAwesome/Font-Awesome/releases/download/5.13.0/fontawesome-free-5.13.0-desktop.zip'
    curl -L -s "$link" --output "fontawesome-desktop.zip"
    unzip -qq "fontawesome-desktop.zip"
    cd "fontawesome-free-5.13.0-desktop/otfs"
    echo "The web's most popular icon set and toolkit" > description-pak

    printf "
install:
\tmkdir -p /usr/share/fonts/opentype/font-awesome-5
\tcp *.otf -t /usr/share/fonts/opentype/font-awesome-5" > Makefile

    checkinstall -D --pkgname "fonts-awesome-free-desktop" --pkgversion "5.13.0" --pkgarch "all" --pkglicense "OFL-1.1" --pkgsource "https://github.com/FortAwesome/Font-Awesome" --maintainer "$USER@$HOSTNAME" --nodoc --install=no -y --pakdir "$LOCAL_PACKAGES_DIR" &> /dev/null
    cd ../../
    rm -rf "fontawesome-desktop.zip" "fontawesome-free-5.13.0-desktop"
}
make_awesome_package

function listGeneratedPackages(){
   i=0
   for file in $LOCAL_PACKAGES_DIR/*.deb ; do
       GENERATED_PACKAGES[$i]="$file"
       ((i++))
   done
   unset i
}
listGeneratedPackages

function installPackages(){
    apt-get install -qq -y ${REQUIRED_PACKAGES[@]} ${GENERATED_PACKAGES[@]}
}
installPackages

function removeTempPackages(){
    apt-get remove -qq -y ${TEMPORARY_REQUIRED_PACKAGES[@]}
}
removeTempPackages

function cleanUp(){
    rm ${GENERATED_PACKAGES[@]}
    rmdir $LOCAL_PACKAGES_DIR
    unset REQUIRED_PACKAGES
    unset GENERATED_PACKAGES
    unset LOCAL_PACKAGES_DIR
    unset TEMPORARY_REQUIRED_PACKAGES
}
cleanUp
