extends Node

# GoDot_01
# Matis Russi
# IT-21

var nimi = 'Madis'
var elud = 100

func _ready():
	pass
	randomize()
	print('Nimi: ',nimi)
	print('Elud: ', elud)
	print('Nime pikkus: ', nimi.length())
	print('Elud + 2: ',elud+2)
	print('Suvaline nr: ', randi()%19 + 0)
