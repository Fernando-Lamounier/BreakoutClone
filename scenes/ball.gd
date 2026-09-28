extends Area2D

@export var speed = 20
var x_minimo : float = -480
var x_maximo : float = 480
var y_maximo : float = 540

var direcao_atual = Vector2(0, 0)
var nova_direcao = Vector2(0, 0)

func limite_movement():
	position.x = clamp(position.x, x_minimo, x_maximo)

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	
	limite_movement()
