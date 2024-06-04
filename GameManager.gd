extends Node

var numberOfPlayers
var dragStatus
var firstTurnAdvance
var Players = {}
var systemCount
# Called when the node enters the scene tree for the first time.
func _ready():
	numberOfPlayers = 1
	systemCount = 0
func FTA():
	firstTurnAdvance = true

var player_ids = []



# Update the player count
func add_to_player_count():
	print("Total players: " + str(player_ids.size()))


func updateDrag(update):
	dragStatus = update


func addToPlayerCount():
	numberOfPlayers +=1

func storeSysCount(sys):
	systemCount = sys
	print("GameManager FARMING: " + str(systemCount))


	
