# create and test regex's using http://rubular.com
# lets match all numbers and the word rwanda

results_that_regex_matched = "adfas 2 asdf 4  asdf 5 2 adsf 2 rwanda".scan(/\d|rwanda/)
puts results_that_regex_matched.inspect