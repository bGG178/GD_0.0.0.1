extends Node2D
var callPlayerAssignment

var randomVal = randi_range(0,1)

var arrayCurrentPlayers = []

var P2namesP1 = ["Jelucan","Jedha","Dantooine","Agamar","Serenno","Er'kit","Pasaana","Moraband","Felucia","Eriadu","Mortis","Yavin","Saleucami","Dathomir","Mandalore","Malachor","Ando","Christophsis","Ithor","Chandrila","Sissubo","Maridun","Rugosa","Wobani","Balnab","Mon Cala","Savareen", "Abafar","Alderaan","Ryloth","Jabiim","Vardos","Onderon","Pillio","Wrea","Daiyu","Zygerria","Batuu","Nal Hutta","Castilon","Mapuzo","Toydaria","Lothal","Mygeeto","Florrum","Skako Minor","Devaron","Mimban","Anoat","Exegol","Umbara","Ord Mantell","Contonica","Ilum","Kessel","Rishi","Kamino","Rakata Prime","Subterrel","Jakku","Cantonica","Rodia","Ahch-To","Kashyyyk","Trandosha"]
var P2namesP2 = ["Cato Neimoidia", "Ossus", "Ruusan", "Crait", "Shili","Esseles","Akiva","Concord Dawn","Sullust","Dagobah","Utapau","Sorgan","Nevarro","Bespin and Hoth","Anexes","Iego","Jestefad","Mustafar","Nur","Bracca","Iridonia","Takodana","Polis Massa","Rattatak","Endor","Kef Bir","Teth","Fondor","Lah'mu","D'Qar","Geonosis","Tatooine","Numidian Prime","Bogano","Malastare","Naboo","Alzoc III","Scarif","Atollon","Lotho Minor","Vandor-1","Eadu","Aaleen","Bothawui","Kijimi","Zeffo","Hosnian Prime","Corellia","Kuat","Ajan Kloss","Anaxes"]

var P3namesP1 = ["Jelucan","Dantooine","Jedha","Mortis","Agamar","Serenno","Er'kit","Pasaana","Moraband","Felucia","Eriadu","Yavin","Saleucami","Dathomir","Mandalore","Ithor","Chandrila","Sissubo","Maridun","Rugosa","Wobani","Malachor","Christophsis","Ando","Balnab","Mon Cala","Savareen","Abafar","Onderon","Kashyyyk","Trandosha"]
var P3namesP2 = ["Exegol","Anoat","Mimban","Devaron","Alderaan","Ord Mantell","Skeko Minor","Umbara","Cantonica","Ilum","Rodia","Kessel","Ahch-To","Rishi","Kamino","Rakata Prime","Jakku","Cato Neimoidia","Subterrel","Florrum","Ryloth","Jabiim","Vardos","Mygeeto","Ajan Kloss","Kuat","Corellia","Zeffo","Hosnian Prime","Mygeeto","Kijimi","Mapuzo","Bothawui","Lothal","Toydaria","Batuu","Pillio","Wrea","Daiyu","Zygerria","Nal Hutta","Castilon","Skako Minor"]
var P3namesP3 = ["Crait","Ruusan","Ossus","Shili","Esseles","Akiva","Concord Dawn","Sullust","Dagobah","Utapau","Sorgan","Nevarro","Jestefad","Mustafar","Nur","Iego","Bespin and Hoth","Bracca","Iridonia","Takodana","Polis Massa","Rattatak","Endor","Kef Bir","Teth","Fondor","Lah'mu","D'Qar","Geonosis","Tatooine","Numidian Prime","Bogano","Malastare","Naboo","Alzoc III","Vandor-1","Aaleen","Atollon","Lotho Minor","Eadu","Scarif","Anaxes","Sissubo"]

var P4namesP1 = ["Jelucan","Jedha","Maridun","Dantooine","Mortis","Yavin","Saleucami","Dathomir","Mandalore","Ithor","Chandrila","Malachor","Ando","Christophsis","Rugosa","Wobani","Balnab","Mon Cala","Savareen","Abafar","Moraband","Felucia","Eriadu","Er'kit","Pasaana","Serenno","Agamar","Sissubo"]
var P4namesP2 = ["Alderaan","Devaron","Mimban","Anoat","Exegol","Ord Mantell","Skako Minor","Ryloth","Florrum","Cantonica","Rodia","Ilum","Kessel","Ahch-To","Rishi","Kamino","Rakata Prime","Jakku","Subterrel","Cato Neimoidia","Ossus","Scarif","Atollon","Lotho Minor","Shili","Crait","Ruusan","Esseles","Umbara","Eadu"]
var P4namesP3 = ["Jabiim","Onderon","Kashyyyk","Trandosha","Vardos","Mygeeto","Ajan Kloss","Pillio","Wrea","Daiyu","Zygerria","Batuu","Kuat","Corellia","Zeffo","Hosnian Prime","Nal Hutta","Castilon","Mapuzo","Toydaria","Lothal","Bothawui","Vandor-1","Aaleen","Eady","Alzoc III","Naboo","Kijimi"]
var P4namesP4 = ["Polis Massa","Takodana","Rattatak","Iridonia","Kef Bir","Endor","Bracca","Nevarro","Bespin and Hoth","Jestefad","Nur","Mustafar","Iego","Anaxes","Concord Dawn","Sullust","Dagobah","Utapau","Sorgan","Akiva","Teth","Fondor","Lah'mu","Malastare","D'Qar","Geonosis","Tatooine","Numidian Prime","Bogano"]

var P5namesP1 = ["Jelucan","Jedha","Dantooine","Mortis","Moraband","Er'kit","Serenno","Agamar","Pasaana","Felucia","Eriadu","Yavin","Saleucami","Dathomir","Mandalore","Malachor","Ando","Cristophsis","Ithor","Sissubo","Chandrila","Maridun","Rugosa","Wobani","Balnab","Mon Cala","Savareen","Abafar"]
var P5namesP2 = ["Alderaan","Devaron","Mimban","Anoat","Exegol","Ord Mantell","Skako Minor","Umbara","Cantonica","Rodia","Kessel","Ahch-To","Rishi","Kamino","Rakata Prime","Subterrel","Jakku","Cato Neimoidia","Ossus","Ruusan","Crait"]
var P5namesP3 = ["Florrum","Ryloth","Jabiim","Vardos","Mygeeto","Kuat","Corellia","Ajan Kloss","Pillio","Batuu","Wrea","Daiyu","Zygerria","Nal Hutta","Castilon","Kashyyyk","Trandosha","Onderon"]
var P5namesP4 = ["Mapuzo","Toydaria","Lothal","Kijimi","Bothawui","Zeffo","Hosnian Prime","Scarif","Eadu","Azollon","Lotho Minor","Alzoc III","Naboo","Malastare","Vandor-1","Aaleen","Numidian Prime","Bogano","Tatooine","Geonosis","D'Qar"]
var P5namesP5 = ["Shili","Esseles","Akiva","Teth","Fondor","Lah'mu","Concord Dawn","Sullust","Dagobah","Utapau","Sorgan","Nevarro","Anaxes","Jestefad","Mustafar","Nur","Iego","Bespin and Hoth","Iridonia","Endor","Kef Bir","Rattatak","Takodana","Polis Massa"]
# Called when the node enters the scene tree for the first time.

func _ready():
	findDupes(P2namesP1)
	findDupes(P2namesP2)

	findDupes(P3namesP1)
	findDupes(P3namesP2)
	findDupes(P3namesP3)
	
	findDupes(P4namesP1)
	findDupes(P4namesP2)
	findDupes(P4namesP3)
	findDupes(P4namesP4)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	#drawCalculateOwners.rpc()


func findDupes(arr):
	var counts = {}
	var duplicates = []

	for item in arr:
		if item in counts:
			counts[item] += 1
		else:
			counts[item] = 1

	for item in counts:
		if counts[item] > 1:
			duplicates.append(item)
	
	print("DUPLICATES: "+str(duplicates))


func ownerDraw(system, clr):
	for sys in get_children():
		if sys.name == str(system.name):
			var sysPlanetNode = sys.get_child(1)
			var sprite = Sprite2D.new()
			add_child(sprite)
			sprite.global_position = sysPlanetNode.global_position
			if clr == "Red":
				sprite.texture = preload("res://Dots/RedC.png")
				sprite.scale = Vector2(0.04,0.04)
			elif clr == "Blue":
				sprite.texture = preload("res://Dots/BlueC.png")
				sprite.scale = Vector2(0.035,0.035)
			elif clr == "Green":
				sprite.texture = preload("res://Dots/GreenC.png")
				sprite.scale = Vector2(0.095,0.095)
			elif clr == "Yellow":
				sprite.texture = preload("res://Dots/YellowC.png")
				sprite.scale = Vector2(0.020,0.020)
			

@rpc("call_local","any_peer")
func drawCalculateOwners(Rvalues =[]):
	print("Yo1")
	if (callPlayerAssignment == true):
		print("Hi")
		for players in GameManager.Players.values():
			print(str(players.id))
			arrayCurrentPlayers.append(players.id)
			print(str(arrayCurrentPlayers))
	#SERVER CALLS THIS
	if (callPlayerAssignment == true) && (GameManager.numberOfPlayers != 0):
		print("Yo2")
		if GameManager.numberOfPlayers == 1:
			for system in get_children():
				if system is Button:
					system.assignedPlayer = arrayCurrentPlayers[0]

		if GameManager.numberOfPlayers == 2:
			for system in get_children():
				if system is Button:
					if system.name in P2namesP1:
						ownerDraw(system, "Red")
						if (Rvalues[0] > Rvalues[1]):
							system.assignedPlayer = arrayCurrentPlayers[0]
						elif (Rvalues[0] < Rvalues [1]):
							system.assignedPlayer = arrayCurrentPlayers[1]
					elif system.name in P2namesP2:
						ownerDraw(system, "Blue")
						if (Rvalues[0] > Rvalues[1]):
							system.assignedPlayer = arrayCurrentPlayers[1]
						elif (Rvalues[0] < Rvalues [1]):
							system.assignedPlayer = arrayCurrentPlayers[0]

		if GameManager.numberOfPlayers == 3:
			for system in get_children():
				if system is Button:
					if system.name in P3namesP1:
						ownerDraw(system, "Red")
						if (Rvalues[0] > Rvalues[1]) && ((Rvalues[1] < Rvalues [2])):
							system.assignedPlayer = arrayCurrentPlayers[0]
						elif (Rvalues[1] > Rvalues [2]) && ((Rvalues[0] < Rvalues[1])):
							system.assignedPlayer = arrayCurrentPlayers[1]
						else:
							system.assignedPlayer = arrayCurrentPlayers[2]
					elif system.name in P3namesP2:
						ownerDraw(system, "Blue")
						if (Rvalues[0] > Rvalues[1]) && ((Rvalues[1] < Rvalues [2])):
							system.assignedPlayer = arrayCurrentPlayers[2]
						elif (Rvalues[1] > Rvalues [2]) && ((Rvalues[0] < Rvalues[1])):
							system.assignedPlayer = arrayCurrentPlayers[0]
						else:
							system.assignedPlayer = arrayCurrentPlayers[1]
					elif system.name in P3namesP3:
						ownerDraw(system, "Green")
						if (Rvalues[0] > Rvalues[1]) && ((Rvalues[1] < Rvalues [2])):
							system.assignedPlayer = arrayCurrentPlayers[1]
						elif (Rvalues[1] > Rvalues [2]) && ((Rvalues[0] < Rvalues[1])):
							system.assignedPlayer = arrayCurrentPlayers[2]
						else:
							system.assignedPlayer = arrayCurrentPlayers[0]
							
		if GameManager.numberOfPlayers == 4:
			print(arrayCurrentPlayers)
			for system in get_children():
				if system is Button:
					if system.name in P4namesP1:
						ownerDraw(system, "Red")
						if (Rvalues[0] > Rvalues[1]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[2] < Rvalues[3]):
							system.assignedPlayer = arrayCurrentPlayers[0]
						elif (Rvalues[1] > Rvalues[2]) && (Rvalues[0] < Rvalues[1]) && (Rvalues[2] < Rvalues[3]):
							system.assignedPlayer = arrayCurrentPlayers[1]
						elif (Rvalues[2]> Rvalues[3]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[0] < Rvalues[1]):
							system.assignedPlayer = arrayCurrentPlayers[2]
						else:
							system.assignedPlayer = arrayCurrentPlayers[3]

					elif system.name in P4namesP2:
						ownerDraw(system, "Blue")
						if (Rvalues[0] > Rvalues[1]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[2] < Rvalues[3]):
							system.assignedPlayer = arrayCurrentPlayers[3]
						elif (Rvalues[1] > Rvalues[2]) && (Rvalues[0] < Rvalues[1]) && (Rvalues[2] < Rvalues[3]):
							system.assignedPlayer = arrayCurrentPlayers[0]
						elif (Rvalues[2]> Rvalues[3]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[0] < Rvalues[1]):
							system.assignedPlayer = arrayCurrentPlayers[1]
						else:
							system.assignedPlayer = arrayCurrentPlayers[2]

					elif system.name in P4namesP3:
						ownerDraw(system,"Yellow")
						if (Rvalues[0] > Rvalues[1]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[2] < Rvalues[3]):
							system.assignedPlayer = arrayCurrentPlayers[2]
						elif (Rvalues[1] > Rvalues[2]) && (Rvalues[0] < Rvalues[1]) && (Rvalues[2] < Rvalues[3]):
							system.assignedPlayer = arrayCurrentPlayers[3]
						elif (Rvalues[2]> Rvalues[3]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[0] < Rvalues[1]):
							system.assignedPlayer = arrayCurrentPlayers[0]
						else:
							system.assignedPlayer = arrayCurrentPlayers[1]

					elif system.name in P4namesP4:
						ownerDraw(system, "Green")
						if (Rvalues[0] > Rvalues[1]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[2] < Rvalues[3]):
							system.assignedPlayer = arrayCurrentPlayers[1]
						elif (Rvalues[1] > Rvalues[2]) && (Rvalues[0] < Rvalues[1]) && (Rvalues[2] < Rvalues[3]):
							system.assignedPlayer = arrayCurrentPlayers[2]
						elif (Rvalues[2]> Rvalues[3]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[0] < Rvalues[1]):
							system.assignedPlayer = arrayCurrentPlayers[3]
						else:
							system.assignedPlayer = arrayCurrentPlayers[0]

		if GameManager.numberOfPlayers == 5:
			for system in get_children():
				if system is Button:
					if system.name in P5namesP1:
						ownerDraw(system, "Red")
						if (Rvalues[0] > Rvalues[1]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[2] < Rvalues[3]) && (Rvalues[3] < Rvalues[4]):
							system.assignedPlayer = arrayCurrentPlayers[0]
						elif (Rvalues[1] > Rvalues[2]) && (Rvalues[0] < Rvalues[1]) && (Rvalues[2] < Rvalues[3]) && (Rvalues[3] < Rvalues[4]):
							system.assignedPlayer = arrayCurrentPlayers[1]
						elif (Rvalues[2] > Rvalues[3]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[0] < Rvalues[1]) && (Rvalues[3] < Rvalues[4]):
							system.assignedPlayer = arrayCurrentPlayers[2]
						elif (Rvalues[3] > Rvalues[4]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[2] < Rvalues[3]) && (Rvalues[0] < Rvalues[1]):
							system.assignedPlayer = arrayCurrentPlayers[3]
						else:
							system.assignedPlayer = arrayCurrentPlayers[4]	

					elif system.name in P5namesP2:
						ownerDraw(system, "Red")
						if (Rvalues[0] > Rvalues[1]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[2] < Rvalues[3]) && (Rvalues[3] < Rvalues[4]):
							system.assignedPlayer = arrayCurrentPlayers[4]
						elif (Rvalues[1] > Rvalues[2]) && (Rvalues[0] < Rvalues[1]) && (Rvalues[2] < Rvalues[3]) && (Rvalues[3] < Rvalues[4]):
							system.assignedPlayer = arrayCurrentPlayers[0]
						elif (Rvalues[2] > Rvalues[3]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[0] < Rvalues[1]) && (Rvalues[3] < Rvalues[4]):
							system.assignedPlayer = arrayCurrentPlayers[1]
						elif (Rvalues[3] > Rvalues[4]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[2] < Rvalues[3]) && (Rvalues[0] < Rvalues[1]):
							system.assignedPlayer = arrayCurrentPlayers[2]
						else:
							system.assignedPlayer = arrayCurrentPlayers[3]	

					elif system.name in P5namesP3:
						ownerDraw(system, "Red")
						if (Rvalues[0] > Rvalues[1]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[2] < Rvalues[3]) && (Rvalues[3] < Rvalues[4]):
							system.assignedPlayer = arrayCurrentPlayers[3]
						elif (Rvalues[1] > Rvalues[2]) && (Rvalues[0] < Rvalues[1]) && (Rvalues[2] < Rvalues[3]) && (Rvalues[3] < Rvalues[4]):
							system.assignedPlayer = arrayCurrentPlayers[4]
						elif (Rvalues[2] > Rvalues[3]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[0] < Rvalues[1]) && (Rvalues[3] < Rvalues[4]):
							system.assignedPlayer = arrayCurrentPlayers[0]
						elif (Rvalues[3] > Rvalues[4]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[2] < Rvalues[3]) && (Rvalues[0] < Rvalues[1]):
							system.assignedPlayer = arrayCurrentPlayers[1]
						else:
							system.assignedPlayer = arrayCurrentPlayers[2]	

					elif system.name in P5namesP4:
						ownerDraw(system, "Red")
						if (Rvalues[0] > Rvalues[1]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[2] < Rvalues[3]) && (Rvalues[3] < Rvalues[4]):
							system.assignedPlayer = arrayCurrentPlayers[2]
						elif (Rvalues[1] > Rvalues[2]) && (Rvalues[0] < Rvalues[1]) && (Rvalues[2] < Rvalues[3]) && (Rvalues[3] < Rvalues[4]):
							system.assignedPlayer = arrayCurrentPlayers[3]
						elif (Rvalues[2] > Rvalues[3]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[0] < Rvalues[1]) && (Rvalues[3] < Rvalues[4]):
							system.assignedPlayer = arrayCurrentPlayers[4]
						elif (Rvalues[3] > Rvalues[4]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[2] < Rvalues[3]) && (Rvalues[0] < Rvalues[1]):
							system.assignedPlayer = arrayCurrentPlayers[0]
						else:
							system.assignedPlayer = arrayCurrentPlayers[1]	
					
					elif system.name in P5namesP5:
						ownerDraw(system, "Red")
						if (Rvalues[0] > Rvalues[1]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[2] < Rvalues[3]) && (Rvalues[3] < Rvalues[4]):
							system.assignedPlayer = arrayCurrentPlayers[1]
						elif (Rvalues[1] > Rvalues[2]) && (Rvalues[0] < Rvalues[1]) && (Rvalues[2] < Rvalues[3]) && (Rvalues[3] < Rvalues[4]):
							system.assignedPlayer = arrayCurrentPlayers[2]
						elif (Rvalues[2] > Rvalues[3]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[0] < Rvalues[1]) && (Rvalues[3] < Rvalues[4]):
							system.assignedPlayer = arrayCurrentPlayers[3]
						elif (Rvalues[3] > Rvalues[4]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[2] < Rvalues[3]) && (Rvalues[0] < Rvalues[1]):
							system.assignedPlayer = arrayCurrentPlayers[4]
						else:
							system.assignedPlayer = arrayCurrentPlayers[0]	
							
	#CLIENT CALLS THIS
	#elif (callPlayerAssignment == true) && (GameManager.numberOfPlayers != 0):
		#print("Yo3")
		#if GameManager.numberOfPlayers == 1:
			#for system in get_children():
				#if system is Button:
					#system.assignedPlayer = arrayCurrentPlayers[0]
#
		#if GameManager.numberOfPlayers == 2:
			#for system in get_children():
				#if system is Button:
					#if system.name in P2namesP1:
						#ownerDraw(system, "Red")
						#if Rvalues[0] == 0:
							#system.assignedPlayer = arrayCurrentPlayers[0]
						#else:
							#system.assignedPlayer = arrayCurrentPlayers[1]
					#elif system.name in P2namesP2:
						#ownerDraw(system, "Blue")
						#if randomVal == 0:
							#system.assignedPlayer = arrayCurrentPlayers[0]
						#else:
							#system.assignedPlayer = arrayCurrentPlayers[1]
#
		#if GameManager.numberOfPlayers == 3:
			#for system in get_children():
				#if system is Button:
					#if system.name in P3namesP1:
						#ownerDraw(system, "Red")
						#if Rvalues[0] == 0:
							#system.assignedPlayer = arrayCurrentPlayers[0]
						#elif Rvalues[0] == 1:
							#system.assignedPlayer = arrayCurrentPlayers[1]
						#elif Rvalues[0] == 2:
							#system.assignedPlayer = arrayCurrentPlayers[2]
					#elif system.name in P3namesP2:
						#ownerDraw(system, "Blue")
						#if Rvalues[0] == 0:
							#system.assignedPlayer = arrayCurrentPlayers[0]
						#elif Rvalues[0] == 1:
							#system.assignedPlayer = arrayCurrentPlayers[1]
						#elif Rvalues[0] == 2:
							#system.assignedPlayer = arrayCurrentPlayers[2]
					#elif system.name in P3namesP3:
						#ownerDraw(system, "Green")
						#if Rvalues[0] == 0:
							#system.assignedPlayer = arrayCurrentPlayers[0]
						#elif Rvalues[0] == 1:
							#system.assignedPlayer = arrayCurrentPlayers[1]
						#elif Rvalues[0] == 2:
							#system.assignedPlayer = arrayCurrentPlayers[2]
							#
		#if GameManager.numberOfPlayers == 4:
			#print(arrayCurrentPlayers)
			#for system in get_children():
				#if system is Button:
					#if system.name in P4namesP1:
						#ownerDraw(system, "Red")
						#if (Rvalues[0] > Rvalues[1]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[2] < Rvalues[3]):
							#system.assignedPlayer = arrayCurrentPlayers[0]
						#elif (Rvalues[1] > Rvalues[2]) && (Rvalues[0] < Rvalues[1]) && (Rvalues[2] < Rvalues[3]):
							#system.assignedPlayer = arrayCurrentPlayers[1]
						#elif (Rvalues[2]> Rvalues[3]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[0] < Rvalues[1]):
							#system.assignedPlayer = arrayCurrentPlayers[2]
						#else:
							#system.assignedPlayer = arrayCurrentPlayers[3]
#
					#elif system.name in P4namesP2:
						#ownerDraw(system, "Blue")
						#if (Rvalues[0] > Rvalues[1]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[2] < Rvalues[3]):
							#system.assignedPlayer = arrayCurrentPlayers[0]
						#elif (Rvalues[1] > Rvalues[2]) && (Rvalues[0] < Rvalues[1]) && (Rvalues[2] < Rvalues[3]):
							#system.assignedPlayer = arrayCurrentPlayers[1]
						#elif (Rvalues[2]> Rvalues[3]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[0] < Rvalues[1]):
							#system.assignedPlayer = arrayCurrentPlayers[2]
						#else:
							#system.assignedPlayer = arrayCurrentPlayers[3]
#
					#elif system.name in P4namesP3:
						#ownerDraw(system,"Yellow")
						#if (Rvalues[0] > Rvalues[1]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[2] < Rvalues[3]):
							#system.assignedPlayer = arrayCurrentPlayers[0]
						#elif (Rvalues[1] > Rvalues[2]) && (Rvalues[0] < Rvalues[1]) && (Rvalues[2] < Rvalues[3]):
							#system.assignedPlayer = arrayCurrentPlayers[1]
						#elif (Rvalues[2]> Rvalues[3]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[0] < Rvalues[1]):
							#system.assignedPlayer = arrayCurrentPlayers[2]
						#else:
							#system.assignedPlayer = arrayCurrentPlayers[3]
#
					#elif system.name in P4namesP4:
						#ownerDraw(system, "Green")
						#if (Rvalues[0] > Rvalues[1]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[2] < Rvalues[3]):
							#system.assignedPlayer = arrayCurrentPlayers[0]
						#elif (Rvalues[1] > Rvalues[2]) && (Rvalues[0] < Rvalues[1]) && (Rvalues[2] < Rvalues[3]):
							#system.assignedPlayer = arrayCurrentPlayers[1]
						#elif (Rvalues[2]> Rvalues[3]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[0] < Rvalues[1]):
							#system.assignedPlayer = arrayCurrentPlayers[2]
						#else:
							#system.assignedPlayer = arrayCurrentPlayers[3]
#
		#if GameManager.numberOfPlayers == 5:
			#for system in get_children():
				#if system is Button:
					#if system.name in P5namesP1:
						#ownerDraw(system, "Red")
						#if (Rvalues[0] > Rvalues[1]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[2] < Rvalues[3]) && (Rvalues[3] < Rvalues[4]):
							#system.assignedPlayer = arrayCurrentPlayers[0]
						#elif (Rvalues[1] > Rvalues[2]) && (Rvalues[0] < Rvalues[1]) && (Rvalues[2] < Rvalues[3]) && (Rvalues[3] < Rvalues[4]):
							#system.assignedPlayer = arrayCurrentPlayers[1]
						#elif (Rvalues[2] > Rvalues[3]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[0] < Rvalues[1]) && (Rvalues[3] < Rvalues[4]):
							#system.assignedPlayer = arrayCurrentPlayers[2]
						#elif (Rvalues[3] > Rvalues[4]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[2] < Rvalues[3]) && (Rvalues[0] < Rvalues[1]):
							#system.assignedPlayer = arrayCurrentPlayers[3]
						#else:
							#system.assignedPlayer = arrayCurrentPlayers[4]
#
					#elif system.name in P5namesP2:
						#ownerDraw(system, "Red")
						#if (Rvalues[0] > Rvalues[1]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[2] < Rvalues[3]) && (Rvalues[3] < Rvalues[4]):
							#system.assignedPlayer = arrayCurrentPlayers[0]
						#elif (Rvalues[1] > Rvalues[2]) && (Rvalues[0] < Rvalues[1]) && (Rvalues[2] < Rvalues[3]) && (Rvalues[3] < Rvalues[4]):
							#system.assignedPlayer = arrayCurrentPlayers[1]
						#elif (Rvalues[2] > Rvalues[3]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[0] < Rvalues[1]) && (Rvalues[3] < Rvalues[4]):
							#system.assignedPlayer = arrayCurrentPlayers[2]
						#elif (Rvalues[3] > Rvalues[4]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[2] < Rvalues[3]) && (Rvalues[0] < Rvalues[1]):
							#system.assignedPlayer = arrayCurrentPlayers[3]
						#else:
							#system.assignedPlayer = arrayCurrentPlayers[4]
#
					#elif system.name in P5namesP3:
						#ownerDraw(system, "Red")
						#if (Rvalues[0] > Rvalues[1]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[2] < Rvalues[3]) && (Rvalues[3] < Rvalues[4]):
							#system.assignedPlayer = arrayCurrentPlayers[0]
						#elif (Rvalues[1] > Rvalues[2]) && (Rvalues[0] < Rvalues[1]) && (Rvalues[2] < Rvalues[3]) && (Rvalues[3] < Rvalues[4]):
							#system.assignedPlayer = arrayCurrentPlayers[1]
						#elif (Rvalues[2] > Rvalues[3]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[0] < Rvalues[1]) && (Rvalues[3] < Rvalues[4]):
							#system.assignedPlayer = arrayCurrentPlayers[2]
						#elif (Rvalues[3] > Rvalues[4]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[2] < Rvalues[3]) && (Rvalues[0] < Rvalues[1]):
							#system.assignedPlayer = arrayCurrentPlayers[3]
						#else:
							#system.assignedPlayer = arrayCurrentPlayers[4]
#
					#elif system.name in P5namesP4:
						#ownerDraw(system, "Red")
						#if (Rvalues[0] > Rvalues[1]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[2] < Rvalues[3]) && (Rvalues[3] < Rvalues[4]):
							#system.assignedPlayer = arrayCurrentPlayers[0]
						#elif (Rvalues[1] > Rvalues[2]) && (Rvalues[0] < Rvalues[1]) && (Rvalues[2] < Rvalues[3]) && (Rvalues[3] < Rvalues[4]):
							#system.assignedPlayer = arrayCurrentPlayers[1]
						#elif (Rvalues[2] > Rvalues[3]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[0] < Rvalues[1]) && (Rvalues[3] < Rvalues[4]):
							#system.assignedPlayer = arrayCurrentPlayers[2]
						#elif (Rvalues[3] > Rvalues[4]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[2] < Rvalues[3]) && (Rvalues[0] < Rvalues[1]):
							#system.assignedPlayer = arrayCurrentPlayers[3]
						#else:
							#system.assignedPlayer = arrayCurrentPlayers[4]
					#
					#elif system.name in P5namesP5:
						#ownerDraw(system, "Red")
						#if (Rvalues[0] > Rvalues[1]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[2] < Rvalues[3]) && (Rvalues[3] < Rvalues[4]):
							#system.assignedPlayer = arrayCurrentPlayers[0]
						#elif (Rvalues[1] > Rvalues[2]) && (Rvalues[0] < Rvalues[1]) && (Rvalues[2] < Rvalues[3]) && (Rvalues[3] < Rvalues[4]):
							#system.assignedPlayer = arrayCurrentPlayers[1]
						#elif (Rvalues[2] > Rvalues[3]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[0] < Rvalues[1]) && (Rvalues[3] < Rvalues[4]):
							#system.assignedPlayer = arrayCurrentPlayers[2]
						#elif (Rvalues[3] > Rvalues[4]) && (Rvalues[1] < Rvalues[2]) && (Rvalues[2] < Rvalues[3]) && (Rvalues[0] < Rvalues[1]):
							#system.assignedPlayer = arrayCurrentPlayers[3]
						#else:
							#system.assignedPlayer = arrayCurrentPlayers[4]	
#
	#callPlayerAssignment = false
#



