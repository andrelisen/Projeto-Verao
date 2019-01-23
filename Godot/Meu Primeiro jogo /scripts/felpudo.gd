extends RigidBody2D

func _ready():
	set_process_input(true) #monitora os toques que se realiza no pássaro
	
func _input(event): #cada um dos eventos com o passaro vem parar nessa func
	if event.is_action("touch"):
		on_touch()
		
func on_touch():
	apply_impulse(Vector2(0, 0), Vector2(0, -1000)) #menos porque o impulso é p/ cima
	