extends Interactable

@export var basketballs : NodePath
@export var on_by_default = true

@export var energy_when_on = 1
@export var energy_when_off = 0

@onready var basketballs_node = get_node(basketballs)
@onready var on = on_by_default
@onready var mrbasketballs = $"../mrbasketballs"

func _ready():
	if Globals.basketballs_counter == 0:
		mrbasketballs.visible = false
	
func get_interaction_text(): 
	return "Press E To Vote For Basketball" if on else "Congratulations, you elected Mr. Basketball as president!"

func interact():
	on = !on
	Globals.basketballs_counter += 1
	%tada.play()
	if Globals.basketballs_counter == 1:
		mrbasketballs.visible = true
		print("MR BASKETBALLS!")
	
