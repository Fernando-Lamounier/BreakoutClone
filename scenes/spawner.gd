extends Node2D

@onready var todos_blocos:PackedScene = preload("res://scenes/bloco.tscn")

var ponto_inicial: Vector2 = Vector2(-420,-510)

func _ready() -> void:
	for i in range(4):
		for j in range(8):
			var novo_bloco = todos_blocos.instantiate()
			novo_bloco.position = ponto_inicial
			ponto_inicial.x += 100
			get_parent().add_child(novo_bloco)
			
		ponto_inicial.y += 60
		ponto_inicial.x = -420
		
	
	pass # Replace with function body.
