extends Area3D

@onready var env = %WorldEnvironment.environment


func _ready():
	body_entered.connect(_on_body_entered)

func _on_body_entered(body):
	if body is CharacterBody3D and body.velocity.y < -2.0:
		%soundtrack.stop()
		%hellsounds2.play()
		make_black_sky()

func make_black_sky():
	env.background_mode = Environment.BG_COLOR
	env.background_color = Color.BLACK
