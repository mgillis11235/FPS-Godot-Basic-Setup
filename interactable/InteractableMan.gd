extends Interactable

@export var man : NodePath
@export var on_by_default = true

@export var energy_when_on = 1
@export var energy_when_off = 0
@onready var man_node = %Elderly_Man
@onready var on = on_by_default
@onready var lipstick = $"../lipstick"
@onready var lipstick2 = $"../lipstick2"
@onready var lipstick3 = $"../lipstick3"
@onready var lipstick4 = $"../lipstick4"
@onready var explosion_node = get_node("explosion_vfx")
@onready var explosion_sound = preload("res://audio/explosion.mp3")

func _ready():
	pass
	#set_flag_energy()

func get_interaction_text(): 
	return "Press E To Kiss Elderly Poll Volunteer" if on else "Kiss!"

func interact():
	on = !on
	
	Globals.kiss_counter += 1
	%kissy.play()
	
	if Globals.kiss_counter == 1:
		lipstick.visible = true
		#vfx_instance.set_process(true)
	if Globals.kiss_counter == 2:
		lipstick2.visible = true
	if Globals.kiss_counter == 3:
		lipstick3.visible = true
	if Globals.kiss_counter == 4:
		lipstick4.visible = true
	if Globals.kiss_counter == 5:
		#set_process(true)
		%explosion.play()
		#var explosion_instance = add_sibling(explosion_scene)
		# Load the scene resource
		#explosion_node.paused = false
		#instance.position = position
		#get_tree().add_child(instance)
		print("this running")
		man_node.queue_free()  # Remove the man
		#var pos = [0, 0, 0]
		#instance.position = pos
		#add_child(instance)


		#var explosion_instance = vfx_explosion.instance()  # Instantiate the explosion VFX
		#explosion_instance.global_transform.origin = man_node.global_transform.origin  # Set position of the explosion VFX
		#add_child(explosion_instance)  # Add explosion VFX as a child
	   
	   
	

func set_flag_energy():
	pass	
#	flag_node.set_param = (flag.PARAM_ENERGY, energy_when_on if on else energy_when_off)
