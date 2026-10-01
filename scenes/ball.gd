extends Area2D

@export var velocidade = 10
var x_minimo : float = -480
var x_maximo : float = 480
var y_minimo : float = -540

var direcao_anterior = Vector2(0,0)
var direcao_atual = Vector2(0, 0)
var nova_direcao = Vector2(0, 0)


func _ready() -> void:
	direcao_atual = Vector2(0.5,0.5)
	pass

func _process(delta: float) -> void:
	position += velocidade * direcao_atual
	
	if position.x >= x_maximo or position.x <= x_minimo:
		direcao_anterior = direcao_atual
		direcao_atual.x = direcao_atual.x * -1 * randf_range(1, 2)
		direcao_atual.y = direcao_atual.y * randf_range(1, 1.6)
		direcao_atual = direcao_atual.normalized()
		
	if position.y <= y_minimo:
		direcao_anterior = direcao_atual
		direcao_atual.y = direcao_atual.y * -1 * randf_range(1, 2)
		direcao_atual.x = direcao_atual.x * randf_range(1, 1.6)
		direcao_atual = direcao_atual.normalized()
		
	if position.y >= 540:
		get_tree().quit()


func _on_player_area_entered(area: Area2D) -> void:
	direcao_anterior = direcao_atual
	direcao_atual.y = direcao_atual.y * -1 * randf_range(1, 2)
	direcao_atual.x = direcao_atual.x * randf_range(1, 1.6)
	direcao_atual = direcao_atual.normalized()
	
	pass # Replace with function body.


func _on_bloco_area_entered(area: Area2D) -> void:
	direcao_anterior = direcao_atual
	direcao_atual.y = direcao_atual.y * -1 * randf_range(1, 2)
	direcao_atual.x = direcao_atual.x * randf_range(1, 1.6)
	direcao_atual = direcao_atual.normalized()
	pass # Replace with function body.
