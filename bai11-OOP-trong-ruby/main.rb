$LOAD_PATH << '.'
require "things"

a = Things::Animal.new("Johnny")
a.run()