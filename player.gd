extends Node2D

var mousestartpos
var screenstartpos
var dragging
var changeby
var changebyzoom
var nameid
var readyToEndTurn
var readyToEndTurnCount
var i

var creditCount
var metalCount
var luxCount
var civCount

@export var industrySys = 0
@export var farmingSys = 0
@export var fuelSys = 0
@export var luxSys = 0
@export var starshipSys = 0
@export var miningSys = 0
@export var player := 1:
	set(id):
		player = id
		$MultiplayerSynchronizer.set_multiplayer_authority(id)


@onready var sync = $MultiplayerSynchronizer
@onready var camera = $Camera2D

@export var connectedPlayersCount = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	
	
	
	$CanvasLayer/Control/ColorRect/TradeMenu.visible = false
	$CanvasLayer/Control/ColorRect/TradeMenu/FarmingContainer.visible = false
	
	$CanvasLayer/Control2/EndTurnButton.button_pressed = false
	$CanvasLayer/Control/ColorRect/Resources/CreditLabel.text = str(100)
	$CanvasLayer/Control/ColorRect/Resources/MetalLabel.text = str(100)
	$CanvasLayer/Control/ColorRect/Resources/LuxLabel.text = str(100)
	$CanvasLayer/Control/ColorRect/Resources/CivLabel.text = str(100)
	
	readyToEndTurnCount = 0
	$CanvasLayer/Control/ColorRect/OverlayContainer/VBoxContainer.visible = false


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	sync.set_multiplayer_authority(str(name).to_int())
	if (position.x > 2500) || (position.x < -2500) || (position.y > 2500) || (position.y < -2500):
		position = Vector2(0,0)
	if GameManager.dragStatus == false:
		$CanvasLayer.visible = false
	else:
		$CanvasLayer.visible = true
	if GameManager.dragStatus == true:
		syncPlayerNum()
	$CanvasLayer/Control2/EndTurnButton/EndTurnReadyCount.text = str(readyToEndTurnCount)
	if (int(connectedPlayersCount) == readyToEndTurnCount):
		print("Player ID: ", str(player))
		advanceTurn.rpc()
		
		
		
	#if $CanvasLayer/Control/ColorRect/TradeMenu/FarmingContainer.visible == true:
		#var sliderValue
		#var sliderMax
		#for i in $CanvasLayer/Control/ColorRect/TradeMenu/FarmingContainer/Exchange1.get_children():
			#if i is HSlider:
				#print(str(GameManager.systemCount))
				#i.max_value = GameManager.systemCount
				#print("Farming Systems Transferred: "+ str(i.max_value))
				#sliderValue = ((i.value))
			#elif i is RichTextLabel:
				#i.text = str(sliderValue)
				#

func _input(event): #Movement

	if event.is_action("drag"):
		if (event.is_pressed()) && (GameManager.dragStatus == true):
			mousestartpos = event.position
			screenstartpos = position
			dragging = true
		else:
			dragging = false
	elif event is InputEventMouseMotion and dragging:
			changeby = (mousestartpos - event.position) + screenstartpos
			position = changeby
	elif (event.is_action("scrollup") && ($Camera2D.zoom.x < 3) && (GameManager.dragStatus == true)):
		changebyzoom = $Camera2D.zoom * 1.1
		$Camera2D.zoom = changebyzoom
	elif (event.is_action("scrolldown") && ($Camera2D.zoom.x >= 0.4) && (GameManager.dragStatus == true)):
		changebyzoom =$Camera2D.zoom * 0.9
		$Camera2D.zoom = changebyzoom

func syncPlayerNum():
	#print(connectedPlayersCount)
	connectedPlayersCount = str(GameManager.numberOfPlayers)
	#print(connectedPlayersCount)
	$CanvasLayer/Control2/EndTurnButton/OutOf.text = connectedPlayersCount


#If this is called an t is true, advance the display of people ready to end their turn by 1
@rpc("any_peer","call_local")
func checkEndTurn(t):
	if t == true:
		readyToEndTurnCount +=1
	else:
		readyToEndTurnCount -=1

#On whether the End turn button is pressed
func _on_end_turn_button_toggled(toggled_on):
	checkEndTurn.rpc(toggled_on)
	print("Unique ID: "+ str(get_multiplayer_authority()))

#WORK IN PROGRESS
@rpc("any_peer","call_local")
func advanceTurn():
	for i in $"../../Systems".get_children():
		if i is Button:
			print("heyo")
			if (i.industry == "Industry"):
				addSysCount.rpc_id(i.assignedPlayer,0)
			elif (i.industry == "Farming"):
				addSysCount.rpc_id(i.assignedPlayer,1)
			elif (i.industry == "Fuel"):
				addSysCount.rpc_id(i.assignedPlayer,2)
			elif (i.industry == "Luxury Goods"):
				addSysCount.rpc_id(i.assignedPlayer,3)
			elif (i.industry == "Starships"):
				addSysCount.rpc_id(i.assignedPlayer,4)
			elif (i.industry == "Mining"):
				addSysCount.rpc_id(i.assignedPlayer,5)
			#print("heyo")
			#if (i.industry == "Industry"):
				#industrySys +=1
				#if i.population == "High":
					#industrySys +=1
			#elif (i.industry == "Farming"):
				#farmingSys +=1
				#if i.population == "High":
					#industrySys +=1
			#elif (i.industry == "Fuel"):
				#fuelSys +=1
				#if i.population == "High":
					#industrySys +=1
			#elif (i.industry == "Luxury Goods"):
				#luxSys +=1
				#if i.population == "High":
					#industrySys +=1
			#elif (i.industry == "Starships"):
				#starshipSys +=1
				#if i.population == "High":
					#industrySys +=1
			#elif (i.industry == "Mining"):
				#miningSys +=1
				#if i.population == "High":
					#industrySys +=1
	print("Player FARMING: " + str(farmingSys))
	$CanvasLayer/Control/ColorRect/TradeMenu/FarmingContainer/Exchange2/HSlider.max_value = farmingSys
	GameManager.storeSysCount(farmingSys)


#Called on RPC_ID to player so that they each have their respective number of planets
#DOESNT WORK
@rpc("any_peer")
func addSysCount(vToAdd):
	if vToAdd == 0:
		industrySys+=1
	elif vToAdd == 1:
		farmingSys+=1
	elif vToAdd == 2:
		fuelSys +=1
	elif vToAdd == 3:
		luxSys +=1
	elif vToAdd == 4:
		starshipSys+=1
	elif vToAdd == 5:
		miningSys +=1
	print("Farming System Count: " + str(farmingSys))
	

#Opens overlay menu 
func _on_check_button_toggled(toggled_on):
	if toggled_on:
		$CanvasLayer/Control/ColorRect/OverlayContainer/VBoxContainer.visible = true
	else:
		$CanvasLayer/Control/ColorRect/OverlayContainer/VBoxContainer.visible = false

#Opens trade menu
func _on_trade_check_toggled(toggled_on):
	if toggled_on:
		
		$CanvasLayer/Control/ColorRect/TradeMenu.visible = true
		$CanvasLayer/Control/ColorRect/TradeMenu/IndustriesContianer.visible = true
	else:
		$CanvasLayer/Control/ColorRect/TradeMenu.visible = false
