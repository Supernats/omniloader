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

print "Installing pathogen.vim..."
pathogen = system("mkdir -p ~/.vim/autoload ~/.vim/bundle; \ " +
"curl -Sso ~/.vim/autoload/pathogen.vim \ " +
    "https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim")
print pathogen ? "done" : "failed"
print "\n"

print "Installing NERDTree..."
nerd = system("cd ~/.vim/bundle &" +
"git clone https://github.com/scrooloose/nerdtree.git")
print nerd ? "done" : "failed"
print "\n"

print "Installing ctrlp.vim..."
ctrlp = system("git clone https://github.com/kien/ctrlp.vim ~/.vim/bundles/ctrlp.vim")
print ctrlp ? "done" : "failed"
print "\n"

print "Installing Rainbow Parentheses..."
rain = system("git clone https://github.com/kien/rainbow_parentheses.vim ~/.vim/bundles/rainbow_parentheses.vim")
print rain ? "done" : "failed"
print "\n"

print "Installing Fugitive..."
fugitive = system("git clone https://github.com/tpope/vim-fugitive ~/.vim/bundles/vim-fugitive")
print fugitive ? "done" : "failed"
print "\n"

print "Installing Indent Guides..."
indent = system("git clone https://github.com/nathanaelkane/vim-indent-guides ~/.vim/bundles/vim-indent-guides
")
print indent ? "done" : "failed"
print "\n"

print "Applying your .vimrc..."
Dir.chdir(PATH)
Dir.chdir("master_settings")
vimrc_master = File.read(".vimrc")
Dir.chdir
File.open(".vimrc", "w") do |f|
  f.puts vimrc_master
end
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