#!/usr/bin/env ruby
#
puts "-------------------------------------------------------------------------"
puts "                             Begin OMNILOADER                            "
puts "-------------------------------------------------------------------------"

Dir.chdir
Dir.chdir("omniloader_setup")

print "Copying backup .vimrc..."
vimrc_copy = File.read("vimrc_copy")
print "done"

print "Copying backup .bashrc..."
bashrc_copy = File.read("bashrc_copy")
print "done"
