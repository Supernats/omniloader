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
print vim_dir ? "done" : "failed"
puts 

print "Reverting to old .vimrc..."
File.open("vimrc", "w") do |f|
  f.puts vimrc_copy
end
`mv vimrc .vimrc`
print "done\n"
puts

print "Reverting to old .bashrc..."
File.open(".bashrc", "w") do |f|
  f.puts bashrc_copy
end
print "done\n"
puts

prints "Removing setupd directory..."
remove = system("rm -rf omniloader_setup")
print remove ? "done" : "failed"
puts 

puts "-------------------------------------------------------------------------"
puts "                              End OMNILOADER                             "
puts "-------------------------------------------------------------------------"
puts "ENJOY BEING VANILLA AND BORING"
