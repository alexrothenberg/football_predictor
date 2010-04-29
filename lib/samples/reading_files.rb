# __FILE__ is a keyword for the current file, run this file using: ruby reading_files.rb

puts __FILE__
contents = File.read(__FILE__)
puts contents

# Read more here: 
# * http://www.engr.uconn.edu/~rohitm/tutorials/crash2/slide-0-6.html