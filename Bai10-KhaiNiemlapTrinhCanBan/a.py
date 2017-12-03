class Animal(object):
	"""docstring for Animal"""
	def __init__(self):
		super(Animal, self).__init__()
	
	def keu(self):
		print("I am an animal")

class Plant(object):
	"""docstring for Plant"""
	def __init__(self):
		super(Plant, self).__init__()

	def keu(self):
		print("I am a plant")

	def qh(self):
		print("I am qhing")

class Cat(Animal):
	"""docstring for Cat"""
	def __init__(self, arg):
		super(Cat, self).__init__()
		self.arg = arg

	def keu(self):
		print("I am a cat")

class BlackCat(Animal, Plant):
	"""docstring for BlackCat"""
	def __init__(self, arg):
		super(BlackCat, self).__init__()
		self.arg = arg
	
	# def keu():
	# 	print("I am a black cat")

if __name__ == '__main__':
	bc = BlackCat(1)
	bc.keu()
	bc.qh()
	