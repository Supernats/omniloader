#!/usr/bin/env ruby

puts "-------------------------------------------------------------------------"
puts "                             Begin OMNILOADER                            "
puts "-------------------------------------------------------------------------"

Dir.chdir
print "Making setup directory..."
Dir.mkdir("omniloader_setup") unless Dir.exists?("omniloader_setup")
print "done\n"
puts

print "Copying .vimrc..."
vimrc_copy = File.exists?(".vimrc") ? File.read(".vimrc") : ""
Dir.chdir("omniloader_setup")
File.open("vimrc_copy", "w") do |f|
  f.puts vimrc_copy
end
Dir.chdir
print "done\n"
puts

print "Copying .bashrc..."
bashrc_copy = File.exists?(".bashrc") ? File.read(".bashrc") : ""
Dir.chdir("omniloader_setup")
File.open("bashrc_copy", "w") do |f|
  f.puts bashrc_copy
end
Dir.chdir
print "done\n"
puts

puts "Installing pathogen.vim..."
pathogen = system("mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -so ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim")
puts pathogen ? "done" : "failed"
puts

puts "Installing NERDTree..."
nerd = system("git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree.vim")
puts nerd ? "done" : "failed"
puts

puts "Installing ctrlp.vim..."
ctrlp = system("git clone https://github.com/kien/ctrlp.vim ~/.vim/bundle/ctrlp.vim")
puts ctrlp ? "done" : "failed"
puts

puts "Installing Rainbow Parentheses..."
rain = system("git clone https://github.com/kien/rainbow_parentheses.vim ~/.vim/bundle/rainbow_parentheses.vim")
puts rain ? "done" : "failed"
puts

puts "Installing Fugitive..."
fugitive = system("git clone https://github.com/tpope/vim-fugitive ~/.vim/bundle/vim-fugitive")
puts fugitive ? "done" : "failed"
puts

puts "Installing Indent Guides..."
indent = system("git clone https://github.com/nathanaelkane/vim-indent-guides ~/.vim/bundle/vim-indent-guides")
puts indent ? "done" : "failed"
puts

puts "Installing rails.vim..."
vimrails = system(
  "git clone git://github.com/tpope/vim-rails.git  ~/.vim/bundle/vim-rails"
)
puts vimrails ? "done" : "failed"
puts

puts "Installing vim bundler..."
vimbundler = system(
  "git clone git://github.com/tpope/vim-bundler.git ~/.vim/bundle/vim-bundler"
)
puts vimbundler ? "done" : "failed"
puts

puts "Installing commentary.vim..."
commentary = system(
  "git clone git://github.com/tpope/vim-commentary.git ~/.vim/bundle/vim-commentary"
)
puts commentary ? "done" : "failed"
puts

puts "Installing Vim Backbone..."
backbone = system(
  "git clone git://github.com/mklabs/vim-backbone.git ~/.vim/bundle/vim-backbone"
)
puts backbone ? "done" : "failed"
puts

puts "Installing Vim-Javascript..."
javascript = system(
  "git clone https://github.com/pangloss/vim-javascript.git ~/.vim/bundle/vim-javascript"
)
puts javascript ? "done" : "failed"
puts

puts "Installing rename.vim..."
rename = system(
  "git clone https://github.com/danro/rename.vim.git ~/.vim/bundle/vim-rename"
)
puts rename ? "done" : "failed"
puts

puts "Installing TLib.vim..."
tlib = system(
  "git clone https://github.com/tomtom/tlib_vim.git ~/.vim/bundle/tlib"
)
puts tlib ? "done" : "failed"
puts

puts "Installing MW Utils..."
mwutils = system(
  "git clone https://github.com/MarcWeber/vim-addon-mw-utils.git ~/.vim/bundle/mw_utils"
)
puts mwutils ? "done" : "failed"
puts

puts "Installing Vim Snippets..."
snippets = system(
  "git clone https://github.com/honza/vim-snippets.git ~/.vim/bundle/snippets"
)
puts snippets ? "done" : "failed"
puts

puts "Installing Snipmate.vim..."
snipmate = system(
  "git clone https://github.com/garbas/vim-snipmate.git ~/.vim/bundle/snipmate"
)
puts snipmate ? "done" : "failed"
puts

puts "Applying your .vimrc..."
vimrc_master = `curl https://raw.github.com/Supernats/omniloader/master/dotfiles/.vimrc`
Dir.chdir
File.open("vimrc", "w") do |f|
  f.puts vimrc_master
end
`mv vimrc .vimrc`
puts "done"
puts

puts "Applying your .bashrc..."
bashrc_master = `curl https://raw.github.com/Supernats/omniloader/master/dotfiles/.bashrc`
Dir.chdir
File.open(".bashrc", "w") do |f|
  f.puts bashrc_master
end
puts "done"
puts

puts "-------------------------------------------------------------------------"
puts "                              End OMNILOADER                             "
puts "-------------------------------------------------------------------------"
puts "ENJOY YOUR AWESOME TERMINAL"
