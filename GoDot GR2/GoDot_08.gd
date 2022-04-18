extends Node
 
var option = 0
var p1point = 0
var p2point = 0

func _on_Button_pressed(): # 1 - KIVI; 2 - PABER; 3 - KÄÄRID
	option = 1
	
	randomize()
	var vasoption = round(rand_range(1,3))
	
	$"kivi/oma".text = "KIVI"
	
	
	if vasoption == 1:
		$"kivi/tulemus".text = "VIIK"
		$"kivi/vastane".text = "KIVI"
	elif vasoption == 2:
		$"kivi/tulemus".text = "+0 PUNKTI"
		$"kivi/vastane".text = "PABER"
		p2point += 1
	else:
		$"kivi/tulemus".text = "+1 PUNKTI"
		$"kivi/vastane".text = "KÄÄRID"
		p1point += 1

func _on_Button2_pressed():
	option = 2
	
	randomize()
	var vasoption = round(rand_range(1,3))
	
	$"kivi/oma".text = "PABER"
	
	if vasoption == 2:
		$"kivi/tulemus".text = "VIIK"
		$"kivi/vastane".text = "PABER"
	elif vasoption == 3:
		$"kivi/tulemus".text = "+0 PUNKTI"
		$"kivi/vastane".text = "KÄÄRID"
		p2point += 1
	else:
		$"kivi/tulemus".text = "+1 PUNKTI"
		$"kivi/vastane".text = "KIVI"
		p1point += 1
	
func _on_Button3_pressed():
	option = 3
	
	randomize()
	var vasoption = round(rand_range(1,3))
	
	$"kivi/oma".text = "KÄÄRID"
	
	if vasoption == 3:
		$"kivi/tulemus".text = "VIIK"
		$"kivi/vastane".text = "KÄÄRID"
	elif vasoption == 3:
		$"kivi/tulemus".text = "+0 PUNKTI"
		$"kivi/vastane".text = "KIVI"
		p2point += 1
	else:
		$"kivi/tulemus".text = "+1 PUNKTI"
		$"kivi/vastane".text = "PABER"
		p1point += 1
	
func _on_restart_pressed():
 get_tree().reload_current_scene()

func _process(delta):
	$"kivi/omapunktid".text = "TULEMUS: "+ str(p1point)
	$"kivi/vaspunktid".text = "TULEMUS: "+ str(p2point)
	if p1point >= 10:
		$"kivi/tulemus".text = "P1 VÕITIS!"
	elif p2point >= 10:
		$"kivi/tulemus".text = "P2 VÕITIS!"
