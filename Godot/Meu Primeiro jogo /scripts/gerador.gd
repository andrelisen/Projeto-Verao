extends Position2D
#quando estiver pronto
onready var cano = preload("res://scenes//Cano.tscn")

func _ready():
	randomize()


func _on_Timer_timeout():
	var novoCano = cano.instance()
	novocano.set_pos(get_pos() + Vector2(0, rand_range(-500, 500))