extends MultiplayerSynchronizer

@export var count:int:
	set(val):
		if is_multiplayer_authority():
			count = val
		else:
			get_parent().connectedPlayersCount

func _ready():
	count = GameManager.numberOfPlayers
