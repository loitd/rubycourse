#Format a string
=begin

puts "%05d" % 123
puts "%-5s: %08x" % ["loi", self.object_id]
puts "-5s: %{avar}" % {:avar=>"Clicale"}

=end

#
#puts "ho"*3

#capitalize
a="johnny"
puts a.capitalize #-> new copy str
a.capitalize! # -> modify str
puts a
puts a.capitalize
#downcase
a="joHHHNY"
a.downcase
a.downcase!


#center -> new str
puts a.center(8, "aaa")

#end_with?
#start_with?
puts "abc def".end_with?("f")
#include? ""
puts "abc def".include? "c d"


#length
puts "abc".length

#lstrip, rstrip, lstrip!, 
#"abc"match(pattern) -> matchdata or nil

#reverse
"abc".reverse

###################################################################
#append
a = "s1"
a << "s2"
#puts a
a.concat("s3")
#puts a
a.concat(40)
#puts a

#compare strings
cp = "abc" <=> "abcd"
#puts cp
#-1 less
#0 equal
#+1 greater
#nil: unable to compare

#select 
a="Casablanca123.23.45.678"
puts a[-2]
puts a[1..2] #start, to
puts a[1,2] #start, length
puts a[/(?<myreg1>(\d{1}+))/,"myreg1"]


#chomp -> new str and remove \r \n and \r\n but not \n\r
puts a.chomp
puts "a\r".chomp
puts "a\r\n".chomp
puts "a\n\r".chomp
puts "abc".chomp("bc")
puts "abc".chomp! #modify this string
puts "abc".chomp!("bc") #modify this string

#chop -> remove last char or \r\n, \r, \n
puts "a\r\n".chop
puts "a\r".chop
puts "a\n".chop
puts "abc".chop
puts "abc".chop! #-> modify

###hash function with salt string
puts "a".crypt("salt")


#gsub(pattern, replacement)
"hello".gsub(/[aeiou]/, '*')                  #=> "h*ll*"
#insert
"abcd".insert(0, "X")
"abcd".insert(-1, "X")


#split
#split(" ")
#split("ll")



















