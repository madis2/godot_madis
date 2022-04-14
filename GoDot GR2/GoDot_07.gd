extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass
func _process(delta):
	var ammo = $"Node".ammo
	var vaenelu = $"Node".vaenelu
	var pihta = $"Node".pihta
	var tegevus = $"Node".tegevus
	
	$"TextureRect/Bg2/reload".text = "AMMO: "+str(ammo)
	$"TextureRect/Bg2/vaenelu".text = "ELUD: "+str(vaenelu)
	$"TextureRect/Bg2/pihta".text = "SCORE: "+str(pihta)
	
	if vaenelu > 0:
		if tegevus == 1: # tulistamine
			$"TextureRect/Bg2/syndmus".text = "BRRAAPPP BRRAAPPP"
		elif tegevus == 2: # salve laadimine
			$"TextureRect/Bg2/syndmus".text = "relöööd" 
		elif tegevus == 3: # mööda lask
			$"TextureRect/Bg2/syndmus".text = "mööda mööda"
		elif tegevus == 4: # salv tühi
			$"TextureRect/Bg2/syndmus".text = "salv on tühi"
		else:
			$"TextureRect/Bg2/syndmus".text = "..."
	else:
		$"TextureRect/Bg2/over".text = "GEIM OVER"
