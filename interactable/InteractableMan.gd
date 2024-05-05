extends Interactable

@export var man : NodePath
@export var on_by_default = true

@export var energy_when_on = 1
@export var energy_when_off = 0

@onready var man_node = get_node(man)
@onready var on = on_by_default
@onready var lipstick = $"../lipstick"
@onready var lipstick2 = $"../lipstick2"
@onready var lipstick3 = $"../lipstick3"
@onready var lipstick4 = $"../lipstick4"
@onready var kiss_counter = 0

func _ready():
	pass
	#set_flag_energy()

func get_interaction_text(): 
	return "Press E To Kiss Elderly Poll Volunteer" if on else "Kiss!"

func interact():
	on = !on
	
	kiss_counter += 1
	
	if kiss_counter == 1:
		lipstick.visible = true
	if kiss_counter == 2:
		lipstick2.visible = true
	if kiss_counter == 3:
		lipstick3.visible = true
	if kiss_counter == 4:
		lipstick4.visible = true
	
	%kissy.play()
	

func set_flag_energy():
	pass	
#	flag_node.set_param = (flag.PARAM_ENERGY, energy_when_on if on else energy_when_off)
