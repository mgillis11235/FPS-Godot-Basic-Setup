extends RayCast3D

var current_collider

# Get the InteractionLabel node inside the UI node
@onready var interaction_label = get_node("UI/InteractionLabel")

@onready var prompt_node = get_node("Prompt")

func _ready():
	add_exception(owner)
	prompt_node.visible = false
	#interaction_label.visible = false
	#set_interaction_text("Hello")
	#print(interaction_label)
	#interaction_label.visible = false
	

func _physics_process(_delta):
	if is_colliding():
		prompt_node.visible = true
		#interaction_label.visible = true
	else:
		prompt_node.visible = false
		#interaction_label.visible = false
		#interaction_label.visible(true)
		#print("Press E To Interact")
		#interaction_label.set_text("Press E To Interact")
		#interaction_label.show()
	
	var collider = get_collider()
	
	if is_colliding() and collider is Interactable:
		if current_collider != collider:
			set_interaction_text(collider.get_interaction_text())
			current_collider = collider
			
			if Input.is_action_just_pressed("Interact"):
				collider.interact()
				set_interaction_text(collider.get_interaction_text())
		
		elif current_collider:
			current_collider = null
	
func set_interaction_text(text):
	if !text: 
		prompt_node.set_text("")
		prompt_node.visible(false)
		#interaction_label.set_text("")
		#interaction_label.visible(false)
	else:
		var interact_key = InputMap.get_actions().find("Interact")
		prompt_node.set_text("Press %s to %s" % [interact_key, text])
		prompt_node.visible(true)
		
		#interaction_label.set_text("Press %s to %s" % [interact_key, text])
		#interaction_label.visible(true)
		
