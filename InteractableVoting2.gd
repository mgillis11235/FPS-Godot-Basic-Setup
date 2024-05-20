extends Interactable

@export var votingmachine : NodePath
@export var on_by_default = true

@export var energy_when_on = 1
@export var energy_when_off = 0

@onready var voting_node = get_node(votingmachine)
@onready var on = on_by_default

func _ready():
	pass
	
func get_interaction_text(): 
	return "Press E To Vote For Republican!" if on else "Thunk u for vote! You good vote"

func interact():
	on = !on
	Globals.votes_counter += 1
	if Globals.votes_counter == 1:
		%success1.play()
	if Globals.votes_counter == 2:
		%success1.play()
	if Globals.votes_counter == 3:
		%success2.play()
	if Globals.votes_counter > 3:
		%success1.play()
	
		
		
