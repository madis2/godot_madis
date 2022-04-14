extends Node

func _ready():
	var tootunnid = 8
	var tunnitasu = 4
	var tunnid = 66
	var tasu = 0
	round(tootunnid)
	round(tunnid)
	
	# GoDot 5.1
	
	if (tunnid <= 40):
		tasu = tunnid*tunnitasu
	else:
		tasu = 40*tunnitasu+(tunnid-40)*1.5*tootunnid
	print("Tasu:",tasu)
	
	# GoDot 5.2
	
	var statist = [7,28,64,51,81,40,21,73,34,98,39,17,33,85,35,44]
	var summ = 0
	for i in statist:
		summ += i
	var avg = summ / len(statist)
	print("Keskmine:",avg)
	for x in statist:
		print(x)
	for j in statist:
		if j >= 90:
			print("Punktid:", j)
			print("Hinne on 5")
		if j in range(89,75):
			print("Punktid: ", j)
			print("Hinne on 4")
		if j in range(74, 50):
			print("Punktid: ",j)
			print("Hinne on 3")
		else:
			print("Sitt oled. Said ",j," punkti.")
			print("Hinne on 2") 
