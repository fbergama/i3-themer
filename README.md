<h1>i3-themer</h1>

![](https://img.shields.io/github/last-commit/cizordj/i3wm-themer/master)
![](https://img.shields.io/github/license/cizordj/i3wm-themer)
![](https://img.shields.io/github/languages/top/cizordj/i3wm-themer?label=bash)

<ul>
Personal collection of themes and scripts for <a href="https://www.i3wm.org">i3wm</a>.

![](assets/screenshots/workflow.gif?raw=true)
</ul>

<h1>Why?</h1>
<ul>
<li>You like CLI tools too much</li>
<li>You like simple and minimalistic desktop themes</li>
<li>You always wanted to use i3wm but can't figure it out on your own</li>
<li>You want to change themes on the go</li>
<li><a href="https://www.i3wm.org">i3wm</a> is awesome</li>
</ul>

<h1>What you will need</h1>

<P>The i3 themer relies on a couple of dependencies to work nicely.</p>
<p>Fedora</p>
    
    # dnf install adobe-source-code-pro-fonts dunst i3 polybar nitrogen rofi bash fontawesome-fonts sensible-utils xdg-utils alsa-utils rxvt-unicode
    
<p>Debian</p>

    # apt-get install dunst i3 polybar nitrogen rofi bash fonts-font-awesome xdg-utils sensible-utils alsa-utils rxvt-unicode

<p>You can download the remaining dependencies for Debian <a href="https://github.com/cizordj/i3-themer/blob/master/assets/debian_dependencies/">here</a></p>

<p>FreeBSD</p>

    # pkg install bash i3 dunst polybar nitrogen rofi xdg-utils rxvt-unicode font-awesome sourcecodepro-ttf

<h2>How to apply themes</h2>
<ul>

<p>FreeBsd</p>

Download this repo and run the script:

    git clone --depth=1 https://github.com/cizordj/i3-themer.git
    cd i3-themer/
    ./i3-themer

The first time you run the script it will show you the help text and the available
themes altogether with the possible command line options.

To list the available themes type
    
    ./i3-themer -l

To apply a desired theme
    
    ./i3-themer -a [THEME_ID]

And that's it, you have now a beatiful desktop!
</ul>

<h2>Available Themes</h2>
<ul>
Just take a look at the <a href="themes/">Theme collection</a> and pick the ones you like.

![](assets/screenshots/themepreview.png?raw=true)

</ul>
<h2>Contributing</h2>
<ul>
If you are interested in contributing with new themes
click <a href="https://github.com/cizordj/i3wm-themer/tree/master/assets/templates">here</a>
</ul>

<h2>Guidelines</h2>
Users can add their own static configuration in the default.d/ directory, all the files in that place will be concatenated with the template files.
