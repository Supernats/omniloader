omniloader
==========

Install
-------
<pre><code>curl https://raw.github.com/Supernats/omniloader/master/install.rb | ruby</code></pre>

Uninstall
---------
<pre><code>curl https://raw.github.com/Supernats/omniloader/master/uninstall.rb | ruby</code></pre>

Do you work in an environemnt where you are often switching between machines? Do you tire of your boring terminal and miss your beautiful .vimrc and plugins? Omniloader is for you, my friend. You can start your day with one curl, code your amazingness, and then run the uninstall curl and it will be like you were never there. The machine's existing .bashrc and .vimrc are copied off and, upon uninstall, they revert and the entire installation directory is wiped.  

These settings work pretty well for me, but it'd be rad if you guys started forking this and changing it to fit you like a glove. The current architecture should work for any Nix-like rig.  

Go. Be awesome. Use Omniloader.  

Current plugin package
----------------------

+ [Pathogen](https://github.com/tpope/vim-pathogen) 
    + God mode for plugin managers. Tim Pope is all the hacks. You'll be seeing more of him in this list.
+ [NERDTree](https://github.com/scrooloose/nerdtree)
    + File tree explorer. Super handy for making new files and directories.
+ [Ctrl-P](https://github.com/kien/ctrlp.vim)
    + Full path fuzzy finder. Searchable by file, buffer, mru, and tag. Super simple integrated support for opening multiple files in a split at once.
+ [Rainbow Parentheses](https://github.com/kien/rainbow_parentheses.vim)
    + Paren/Bracket/Brace/Caret matching
+ [Fugitive](https://github.com/tpope/vim-fugitive)
    + Sweet Git wrapper. Swap file problems begone!
+ [Indent Guides](https://github.com/nathanaelkane/vim-indent-guides)
    + Uh, they're indent guides. What more do you want to know? You want this.
+ [Vim-Rails](https://github.com/tpope/vim-rails.git)
    + Another gem from tpope. Run all your sweet generators and Rails commands from within your vim. Also does a bunch of rad stuff that you probably want to check his docs about.
+ [Commentary](https://github.com/tpope/vim-commentary.git)
    + Comment and uncomment with ease: `(N)gcc` to comment N lines down, starting on the current. `gcu` to uncomment a block.
+ [Backbone.vim](https://github.com/mklabs/vim-backbone.git)
    + A bunch of Backbone snippets. Bet you didn't see that one coming.
+ [Vim-Javascript](https://github.com/pangloss/vim-javascript.git)
    + Fix your Javascript formatting. Have you some snippets. Enjoy your delicious docs.
+ [Rename](https://github.com/danro/rename.vim.git)
    + Rename things while keeping the path. `mv` for lazy people.
+ [Snipmate](https://github.com/garbas/vim-snipmate.git)
    + Snippets, sweet snippets
    + It has some dependencies. You wanna know about them?
        + [TLib](https://github.com/tomtom/tlib_vim.git)
        + [MW Utils](https://github.com/MarcWeber/vim-addon-mw-utils.git)
        + [Vim Snippets](https://github.com/honza/vim-snippets.git)

tl;dr
=====
ENJOY BEING AWESOME
