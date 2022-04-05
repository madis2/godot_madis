extends Node

# GoDot 04
# Matis Russi
# IT-21

var gamers = ["Feake","Bradwell","Dreger","Bloggett","Lambole","Daish","Lippiett","Blackie","Stollenbeck","Houseago","Dugall","Sprowson","Kitley","Mcenamin","Allchin","Doghartie","Brierly","Pirrone","Fairnie","Seal","Scoffins","Galer","Matevosian","DeBlase","Cubbin","Izzett","Ebi","Clohisey","Prater","Probart","Samwaye","Concannon","MacLure","Eliet","Kundt","Reyes"]

func _ready():
	print(gamers[0])
	gamers.erase("Reyes")
	gamers.append("Matis")
	gamers.sort()
	gamers.invert()
	print('Pikim nimi: ',gamers.max())
	for x in gamers:
		print(x)
