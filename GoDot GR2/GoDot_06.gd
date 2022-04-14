extends Node

func _ready():
	print("────────────────────────────────────")
	print("──────────── Tapatalgud ────────────")
	print("───────── Kollide maailmas ─────────")
	print("────────────────────────────────────")

var vaenelu = 100
var ammo = 5
var lasud = 0
var pihta = 0
var tegevus = 0

func _process(delta):
	
	
	
	if(vaenelu > 0):
		if Input.is_action_just_pressed("tulista"):
			randomize()
			var number = round(rand_range(0,10))
			var protsent = 6
			if number < protsent:
				if ammo == 0:
					print("Sa ei saa lasta.")
					print("Salv on tühi.")
					print("Vastase elud: ",vaenelu)
					print("────────────────────────────────────")
				else:
					randomize()
					var dmg = round(rand_range(8,12))
					print("Lasid vastast.")
					print("Tegid vastasele ",dmg," kahju.")
					ammo -= 1
					lasud += 1
					vaenelu -= dmg
					pihta += 1
					print("Salv: ",ammo)
					print("Vastase elud: ",vaenelu)
					print("────────────────────────────────────")
					tegevus = 1
			else:
				if ammo == 0:
					print("Sa ei saa lasta.")
					print("Salv on tühi.")
					print("Vastase elud: ",vaenelu)
					print("────────────────────────────────────")
					tegevus = 4
				else:
					randomize()
					print("Lasid vastast.")
					print("Lasid mööda.")
					ammo -= 1
					lasud += 1
					print("Salv: ",ammo)
					print("Vastase elud: ",vaenelu)
					print("────────────────────────────────────") 
					tegevus = 3
					
		if Input.is_action_just_pressed("reload"):
			print("Laadisid relvale uue salve 5 kuuliga.")
			ammo = 5
			print("Vastase elud: ",vaenelu)
			print("────────────────────────────────────")
			tegevus = 2
			
	elif (vaenelu <= 0):
		var effec = 100-((float(pihta)/float(lasud))*100)
		print("VÕIT!!!!!!!!!")
		print()
		print("Tehtud lasud: ", lasud)
		print("Skoor: ", pihta)
		print("Effektiivsus: %0.2f%%" % effec)
		
		tegevus = 5
		
		get_tree().paused = true
		
