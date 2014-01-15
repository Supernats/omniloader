#!/usr/bin/env ruby

puts "-------------------------------------------------------------------------"
puts "                             Begin OMNILOADER                            "
puts "-------------------------------------------------------------------------"

PATH = File.expand_path(File.dirname(__FILE__))

Dir.chdir
print "Making setup directory..."
Dir.mkdir("omniloader_setup") unless Dir.exists?("omniloader_setup")
print "done\n"

print "Copying .vimrc..."
vimrc_copy = File.exists?(".vimrc") ? File.read(".vimrc") : ""
Dir.chdir("omniloader_setup")
File.open("vimrc_copy", "w") do |f|
  f.puts vimrc_copy
end
Dir.chdir
print "done\n"

print "Copying .bashrc..."
bashrc_copy = File.exists?(".bashrc") ? File.read(".bashrc") : ""
Dir.chdir("omniloader_setup")
File.open("bashrc_copy", "w") do |f|
  f.puts bashrc_copy
end
Dir.chdir
print "done\n"

puts "Installing pathogen.vim..."
pathogen = system("mkdir -p ~/.vim/autoload ~/.vim/bundle
curl -so ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim")
puts pathogen ? "done" : "failed"

puts "Installing NERDTree..."
nerd = system("git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree.vim")
puts nerd ? "done" : "failed"

puts "Installing ctrlp.vim..."
ctrlp = system("git clone https://github.com/kien/ctrlp.vim ~/.vim/bundle/ctrlp.vim")
puts ctrlp ? "done" : "failed"

puts "Installing Rainbow Parentheses..."
rain = system("git clone https://github.com/kien/rainbow_parentheses.vim ~/.vim/bundle/rainbow_parentheses.vim")
puts rain ? "done" : "failed"

puts "Installing Fugitive..."
fugitive = system("git clone https://github.com/tpope/vim-fugitive ~/.vim/bundle/vim-fugitive")
puts fugitive ? "done" : "failed"

puts "Installing Indent Guides..."
indent = system("git clone https://github.com/nathanaelkane/vim-indent-guides ~/.vim/bundle/vim-indent-guides")
puts indent ? "done" : "failed"

print "Applying your .vimrc..."
Dir.chdir(PATH)
Dir.chdir("master_settings")
vimrc_master = File.read(".vimrc")
Dir.chdir
File.open("vimrc", "w") do |f|
  f.puts vimrc_master
end
`mv vimrc .vimrc`
print "done\n"

print "Applying your .bashrc..."
Dir.chdir(PATH)
Dir.chdir("master_settings")
bashrc_master = File.read(".bashrc")
Dir.chdir
File.open(".bashrc", "w") do |f|
  f.puts bashrc_master
end
print "done\n"

puts "ENJOY YOUR AWESOME TERMINAL"