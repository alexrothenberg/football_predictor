#Run this file using: ruby writing_files.rb

File.open('example_of_writing_file.txt', 'w') do |file|  
  file.write "This file was created with writing_files.rb"
end

# To learn more see:
# * http://ruby-doc.org/core/classes/File.html
# * http://ruby-doc.org/core/classes/FileUtils.html