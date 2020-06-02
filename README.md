<h1>i3wm-themer</h1>

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
    
    $ sudo dnf install adobe-source-code-pro-fonts dunst i3 polybar nitrogen rofi bash fontawesome-fonts sensible-utils
    
<p>For Debian users:</p>

    Still in progress...

<h2>Using the script</h2>
<ul>

Clone this repository and run the script:

    git clone https://github.com/cizordj/i3wm-themer.git
    cd i3wm-themer/
    chmod +x i3wm-themer
    ./i3wm-themer

The first time you run the script it will show you the help text and the available
themes altogether with the possible command line options.

To list the available themes type
    
    ./i3wm-themer -l

To apply a desired theme
    
    ./i3wm-themer -a [THEME_ID]

And here you go, you have a BEAUTIFUL desktop! !!
</ul>

<h2>Disclaimer</h2>
<ul>
I am not responsible for any harm done to your PC by anything in the repository. Use everything with
caution!
</ul>

<h2>Available Themes</h2>
<ul>
Just take a look at the <a href="themes/">Theme collection</a> and pick the ones you like.

![](assets/workflow/themepreview.png?raw=true)

</ul>

<h2>About this fork</h2>
<ul>
This project is a fork from the original <a href="https://github.com/unix121/i3wm-themer">i3wm-themer</a> from <a href="https://github.com/unix121">@unix121</a>.
The biggest difference between the two forks is that in mine the code was completely rewritten in BASH and is more compatible with debian-like systems.
    
Also in this fork the dunst notification manager will be colorized.
</ul>
<h2>Contributing</h2>
<ul>
If you are interested in contributing with new themes
click <a href="https://github.com/cizordj/i3wm-themer/tree/master/assets/templates">here</a>
</ul>
