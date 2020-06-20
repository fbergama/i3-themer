<h1>i3-themer</h1>

![](https://img.shields.io/github/last-commit/cizordj/i3wm-themer/master)
![](https://img.shields.io/github/license/cizordj/i3wm-themer)
![](https://img.shields.io/github/languages/top/cizordj/i3wm-themer?label=bash)

<ul>
Personal collection of themes and scripts for <a href="https://www.i3wm.org">i3wm</a>.

![](assets/workflow/workflow.gif?raw=true)
</ul>

<h1>Why?</h1>
<ul>
<li>You like CLI tools too much</li>
<li>You like simple and minimalistic desktop themes</li>
<li>You always wanted to use i3wm but can't figure it out on your own</li>
<li>You want to change themes on the go</li>
<li><a href="https://www.i3wm.org">i3wm</a> is awesome</li>
<li>Satan > Jesus</li>
</ul>

<h1>What you will need</h1>
<ul>
    <li><a href="https://www.gnu.org/software/bash/">Bash</a> v4 or later</li>
    <li><a href="https://i3wm.org">i3</a></li>
    <li><a href="https://github.com/jaagr/polybar">Polybar</a></li>
    <li><a href="https://github.com/DaveDavenport/rofi">Rofi</a></li>
    <li><a href="https://fontawesome.com">Font-Awesome-5</a></li>
    <li><a href="https://packages.debian.org/sid/x11/nitrogen">Nitrogen</a></li>
    <li><a href="https://github.com/adobe-fonts/source-code-pro">Adobe Source Code Pro font</a></li>
    <li><a href="https://packages.debian.org/sid/rxvt">rxvt-unicode</a></li>
    <li><a href="https://packages.debian.org/sid/dunst">Dunst notification manager</a></li>
</ul>

<p>For Fedora users:</p>
    
    # dnf install adobe-source-code-pro-fonts dunst i3 polybar nitrogen rofi bash fontawesome-fonts sensible-utils
    
<p>For Debian users:</p>

    # apt-get install dunst i3 polybar nitrogen rofi bash fonts-font-awesome sensible-utils

<p>You can download the missing dependencies for Debian <a href="https://github.com/cizordj/i3-themer/blob/master/assets/debian_dependencies/">here</a></p>
<h2>Using the script</h2>
<ul>

Download this repo and run the script:

    git clone https://github.com/cizordj/i3-themer.git
    cd i3-themer/
    chmod +x i3-themer
    ./i3-themer

The first time you run the script it will show you the help text and the available
themes altogether with the possible command line options.

To list the available themes type
    
    ./i3-themer -l

To apply a desired theme
    
    ./i3-themer -a [THEME_ID]

And here you go, you have now a beatiful desktop!
</ul>

<h2>Available Themes</h2>
<ul>
Just take a look at the <a href="themes/">Theme collection</a> and pick the ones you like.

![](assets/workflow/themepreview.png?raw=true)

</ul>
<h2>Contributing</h2>
<ul>
If you are interested in contributing with new themes
click <a href="https://github.com/cizordj/i3wm-themer/tree/master/assets/templates">here</a>
</ul>
