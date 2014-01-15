#!/usr/bin/env ruby

puts "-------------------------------------------------------------------------"
puts "                             Begin OMNILOADER                            "
puts "-------------------------------------------------------------------------"

Dir.chdir
print "Making setup directory..."
Dir.mkdir("omniloader_setup") unless Dir.exists?("omniloader_setup")
print "done\n"

print "Copying .vimrc..."
vimrc = File.exists?(".vimrc") ? File.read(".vimrc") : ""
Dir.chdir("omniloader_setup")
File.open("vimrc_copy.txt", "w") do |f|
  f.puts vimrc
end
Dir.chdir
print "done\n"

print "Copying .bashrc..."
bashrc = File.exists?(".bashrc") ? File.read(".bashrc") : ""
Dir.chdir("omniloader_setup")
File.open("bashrc_copy.txt", "w") do |f|
  f.puts bashrc
end
Dir.chdir
print "done\n"

print "Copying .bash_profile..."
bash_profile = File.exists?(".bash_profile") ? File.read(".bash_profile") : ""
Dir.chdir("omniloader_setup")
File.open("bash_profile_copy.txt", "w") do |f|
  f.puts bash_profile
end
Dir.chdir
print "done\n"

