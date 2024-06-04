extends ColorRect

var creditsPerTurnFarming
var creditsPerTurnIndustry
var creditsPerTurnFuel
var creditsPerTurnLux
var creditsPerTurnStarships
var creditsPerTurnMining

var localCount
func _ready():
	# Path to your image
	creditsPerTurnFarming = 100
	creditsPerTurnIndustry = 122
	creditsPerTurnFuel = 122
	creditsPerTurnLux = 122
	creditsPerTurnStarships = 122
	creditsPerTurnMining = 122


func _process(delta):
	for i in $IndustriesContianer/VBoxContainer.get_children():
		if i is RichTextLabel:
			if i.name == "FarmingLabel":
				i.text = "     "+str(creditsPerTurnFarming)
			elif i.name == "IndustryLabel":
				i.text = "     "+str(creditsPerTurnIndustry)
			elif i.name == "FuelLabel":
				i.text = "     "+str(creditsPerTurnFuel)
			elif i.name == "LuxLabel":
				i.text = "     "+str(creditsPerTurnLux)
			elif i.name == "StarshipsLabel":
				i.text = "     "+str(creditsPerTurnStarships)
			elif i.name == "MiningLabel":
				i.text = "     "+str(creditsPerTurnMining)
		
	var tempStore
	for i in$FarmingContainer/Exchange1.get_children():
		#print(str($"../../../..".farmingSys))
		if i is HSlider:
			#i.max_value = $"../../../..".farmingSys
			tempStore = i.value
		elif i is RichTextLabel:
			i.text = str(tempStore)




func _on_farming_pressed():
	print("PRESSED")
	$"../../../..".advanceTurn()
	$IndustriesContianer.visible = false
	$FarmingContainer.visible = true
