extends Area2D

@export var topping_type: Topping.Type
@export var topping_scene: PackedScene
func add_topping():
	topping_scene.instatiate()

func _on_input_event(event: InputEvent) -> void:
	if event.is_action_pressed("action"):
		add_topping()
