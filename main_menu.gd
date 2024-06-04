extends Control



@export var Address = "127.0.0.1"
@export var port = 8910


var totalplayers
var ableToDrag
var username
var randArray1_3 =[randi_range(0,1)]
var randArray4P =[randi_range(0,10000),randi_range(0,10000),randi_range(0,10000),randi_range(0,10000),randi_range(0,10000),randi_range(0,10000),randi_range(0,10000),randi_range(0,10000),randi_range(0,10000),randi_range(0,10000),randi_range(0,10000),randi_range(0,10000)]
var firstTurnAdvance
# Called when the node enters the scene tree for the first time.
func _ready():
	$Lobby.visible = false
	totalplayers = 0
	
	multiplayer.peer_connected.connect(peer_connected)
	multiplayer.peer_disconnected.connect(peer_disconnected)
	multiplayer.connected_to_server.connect(connected_to_server)
	multiplayer.connection_failed.connect(connection_failed)
	multiplayer.multiplayer_peer = ENetMultiplayerPeer.new()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if username == null:
		username = "Player"
	if Input.is_action_just_pressed("Enter") && $Menu/MarginContainer/VBoxContainer/SetUsernameButton/LineEdit.visible == true:
		username = $Menu/MarginContainer/VBoxContainer/SetUsernameButton/LineEdit.text
		$Menu/MarginContainer/VBoxContainer/SetUsernameButton/LineEdit.visible = false
	
	updatePlayerList()
	

func updatePlayerList():
	$Lobby/ConnectedPlayers.clear()
	for players in GameManager.Players.values():
		$Lobby/ConnectedPlayers.add_item(players.name)

func lobbyview():
	$Lobby.visible = true
	ableToDrag = false
	GameManager.updateDrag(ableToDrag)
	$Menu.visible = false
	
############################################################

#gets called on Server and Clients
func peer_connected(id):
	print("ID on Connect: "+str(multiplayer.get_unique_id()))
	
	print("Player: " + str(id)+  " Connected")
	
#gets called on Server and Clients
func peer_disconnected(idlocal):
	print("Player: " + str(idlocal) +" Disconnected ")
	#_on_return_pressed()
	


# ONLY on CLIENTS
func connected_to_server():
	GameManager.add_to_player_count()
	SendPlayerInformation.rpc_id(1,username,multiplayer.get_unique_id())
	print("Successfully Connected")
	
	return true

# ONLY on CLIENTS
func connection_failed():
	print("Error Connecting to Server")

@rpc("any_peer")
func SendPlayerInformation(name, id, RVal = randi_range(0,10000)):
	
	if !GameManager.Players.has(id):
		GameManager.Players[id]={
			"name":name,
			"id":id,
			"RVal":RVal
		}

	print("Dictionary: "+str(GameManager.Players))
	
	if multiplayer.is_server():
		for i in GameManager.Players:
			SendPlayerInformation.rpc(GameManager.Players[i].name, i, GameManager.Players[i].RVal)
			
####################################################################

func _on_join_button_pressed():
	var peer = ENetMultiplayerPeer.new()
	peer.create_client(Address, port)
	multiplayer.multiplayer_peer = peer
	print("Client connected with ID: ", multiplayer.get_unique_id())

	lobbyview()


func _on_host_button_pressed():
	var peer = ENetMultiplayerPeer.new()
	peer.create_server(port)
	multiplayer.multiplayer_peer = peer
	print("Server started with ID: ", multiplayer.get_unique_id())
	# Server initializes player count
	GameManager.add_to_player_count()
	print("Username of Host: ",str(username))
	print("ID of Host: ",str(multiplayer.get_unique_id()))
	
	SendPlayerInformation(username, multiplayer.get_unique_id())
	lobbyview()
#

func _on_start_game_button_pressed():
	StartGame.rpc()

@rpc("any_peer","call_local")
func StartGame():
	for id in multiplayer.get_peers():
		#print(str(id))
		GameManager.addToPlayerCount()
		print("Sending Player Information!!!! For: "+str(id))
		var character = preload("res://player.tscn").instantiate()
		character.name = str(id)
		character.player = id
		$"../CanvasLayer".add_child(character, true)
		print("Player character added with ID: ", id)
	$".".visible = false
	#var mainscene = load("res://main.tscn").instantiate()
	#get_tree().root.add_child(mainscene)
	self.hide()
	ableToDrag = true
	GameManager.updateDrag(ableToDrag)
	print("GameStart")
	var arrayOfRandValSync =[]
	for rvalues in GameManager.Players.values():
		arrayOfRandValSync.append(rvalues.RVal)
	
	if GameManager.numberOfPlayers <= 3:
		$"../Systems".callPlayerAssignment = true
		$"../Systems".drawCalculateOwners.rpc(arrayOfRandValSync)
	elif GameManager.numberOfPlayers > 3:
		print(str(arrayOfRandValSync))
		$"../Systems".callPlayerAssignment = true
		$"../Systems".drawCalculateOwners.rpc(arrayOfRandValSync)
		
	GameManager.FTA()



func _on_set_username_button_pressed():
	$Menu/MarginContainer/VBoxContainer/SetUsernameButton/LineEdit.visible = true
