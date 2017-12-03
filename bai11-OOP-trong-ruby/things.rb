#!/usr/bin/ruby

#----------------------------------------------------------------------------------------
#| Hướng dẫn cho bài: VÍ DỤ VỀ LẬP TRÌNH HƯỚNG ĐỐI TƯỢNG TRONG RUBY 
#| Thực hiện bởi: Trần Đức Lợi (loitranduc@gmail.com)
#| Tại: Kênh Youtube Trần Đức Lợi
#-----------------------------------------------------------------------------------------

# module must named Things in things.rb file
module Things #to separate namespace to avoid clash
	def helloworld
		puts "Hello to the world"
	end

	class Animal
		@@num_of_animals = 0 #@@ = class var
		def run(speed=1)
			puts "yeah, I am (%s) running so fast at %d km/h" % [@name, speed]
		end
		
		def initialize(name)
			@name = name #@ = instance var
		end

		def setname(newname)
			@name = newname
		end
	end

	class Dog < Animal #Ruby không cho phép đa kế thừa
		def hello()
			puts "Go go"
		end
	end
end

if __FILE__ == $0
	a = Things::Animal.new("Johnny") #implement
	# a.run(5)
	# a.hello()

	b = Things::Dog.new("Mancy")
	b.run(5)
	# b.hello()
	# b.name = "xxx"
	b.setname("Mancyxxx")
	b.run(5)
end

