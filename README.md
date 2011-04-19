ShairportOSX
============

What is it
----------

Start/stop ShairPort by clicking on an OSX menubar icon.

Instructions
------------

Click on the icon to enable ShairPort. Click again to disable it. If you have very good eyes, you'll see the green led on when ShairPort is running. If not, then ctrl-mousewheel (or stop buying 15-inches screens with a Full HD resolution).

Ctrl-click on the icon to quit the app.

How do I know it's really working ?
-----------------------------------

Start iTunes and look at the bottom right, you should see the AirPlay icon. Rock & roll.

Developers
----------

_shaiport_ is included in this project as a git submodule. Execute the following command to get it:

    git submodule init
    git submodule update

You'll then have to compile the c files with `make`, to create the _hairtunes_ binary. Then execute `shaiport.pl`, an error means that you did not follow the instructions from _INSTALL.md_.

Build the Project with Xcode, it will bundle _shaiport.pl_ and _hairtunes_.

Contributors
------------

See [contributors of ShairPort](https://github.com/albertz/shairport/blob/master/README.md).

Icon from [MidTone Design](http://www.easyicon.net/icondetail/17724/).

Changelog
---------
* 0.01 April 19, 2011
  * initial release

TODO (feel free to fork)
------------------------

* hotkeys
* show the Bonjour name (--apname parameter)