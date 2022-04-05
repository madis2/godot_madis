extends Node

# GoDot 02
# Matis Russi
# IT-21

var hind = 100
var raha = 50 
var int1 = 5
var int2 = 5

func _ready():
	if raha >= hind:
		print('Ostsid toote ära!')
	else:
		print('Sul pole piisavalt raha.')
		print('Vaja on veel ', hind-raha)
		
	print()
		
	if int1 == int2:
		print('Kujund on ruut.')
		print('Pindala: ', int1*int2)
	else:
		print('Kujund on ristkülik.')
		print('Pindala: ', int1*int2)
