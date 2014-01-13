# Navigate to root, make directory to hold installation files and backups
Dir.chdir
Dir.mkdir("omniloader_setup")
vimrc = File.read(".vimrc")
bashrc = File.read(".bashrc")
# bash_profile = File.read(".bash_profile")
Dir.chdir("omniloader_setup")
File.open("vimrc_copy.txt", "w") do |f|
  f.puts vimrc
end

File.open("bashrc_copy.txt", "w" do |f|
  f.puts bashrc
end