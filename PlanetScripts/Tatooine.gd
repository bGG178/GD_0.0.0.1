extends Button

var planetname
var pol_alignment
var population
var industry
var bonus
var happiness
var assignedPlayer
var description
var neighbors

# Called when the node enters the scene tree for the first time.
func _ready():
	planetname = $".".name
	pol_alignment = "Republic"
	population = "Low"
	industry = "Farming"
	bonus = "NA"
	neighbors = [$"../D'Qar",$"../Numidian Prime",$"../Geonosis"]

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
	
func _input(event):
	if (button_pressed):
		if (event.button_index == MOUSE_BUTTON_LEFT):
			print("Planet: ")
			print(planetname)
			print("-------------------")
			print("Alignment: ")
			print(pol_alignment)
			print("Population: ")
			print(population)
			print("Industry: ")
			print(industry)
			print("Bonus: ")
			print(bonus)
			print("Owner ID: ")
			print(assignedPlayer)
			print("Owner Name: ")
			print(str(GameManager.Players[assignedPlayer].name))
			OS.delay_msec(150)
	elif (button_pressed) && (event.button_index == MOUSE_BUTTON_RIGHT):
		getNode()

func getNode():
	$"..".buttonRightClickPath = $".".get_path()
