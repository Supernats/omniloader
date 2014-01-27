omniloader
==========

Install
-------
<pre><code>curl https://raw.github.com/Supernats/omniloader/master/install.rb | ruby</code></pre>

Uninstall
---------
<pre><code>curl https://raw.github.com/Supernats/omniloader/master/uninstall.rb | ruby</code></pre>


Ruby scripts to install / uninstall my favorite terminal settings.  
<strong>TODO:</strong>

Install should:
+ [x] -  Make directory to hold all files
+ [x] - Copy existing settings new files for safe keeping
+ [ ] - change terminal font
    + Really? No one cares about that. Also, that jazz be super terminal dependent.  
+ [x] - install pathogen and vim plugins
+ [ ] -  set git config
+ [x] - load new vimrc, bashrc, fishconfig

Uninstall should:
+ [x] - revert to old vimrc, bashrc, terminal font, etc.
+ [x] - delete installation directory
