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
puts

print "Copying backup .bashrc..."
bashrc_copy = File.read("bashrc_copy")
print "done"
puts 

Dir.chdir
print "Deleting .vim directrory..."
vim_dir = system("rm -rf .vim")
puts vim_dir ? "done" : "failed"
puts 

print "Reverting to old .vimrc..."
File.open("vimrc", "w") do |f|
  f.puts vimrc_copy
end
`mv vimrc .vimrc`
puts "done"
puts

print "Reverting to old .bashrc..."
File.open(".bashrc", "w") do |f|
  f.puts bashrc_copy
end
puts "done"
puts

print "Removing setupd directory..."
remove = system("rm -rf omniloader_setup")
print remove ? "done" : "failed"

puts "-------------------------------------------------------------------------"
puts "                              End OMNILOADER                             "
puts "-------------------------------------------------------------------------"
puts "ENJOY BEING VANILLA AND BORING"
