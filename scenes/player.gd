extends Area2D
@export var speed = 10


func _process(delta: float) -> void:
	
	if (Input.is_key_pressed(KEY_LEFT)):
		position.x -= speed
	
	if (Input.is_key_pressed(KEY_RIGHT)):
		position.x += speed
	
