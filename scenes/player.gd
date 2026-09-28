extends Area2D
@export var speed = 10
var x_minimo : float = -444
var x_maximo : float = 444

func movement_player():
	if (Input.is_key_pressed(KEY_LEFT)):
		position.x -= speed
	
	if (Input.is_key_pressed(KEY_RIGHT)):
		position.x += speed

func limite_movement():
	position.x = clamp(position.x, x_minimo, x_maximo)

func _process(delta: float) -> void:
	movement_player()
	limite_movement()
	
	
	
