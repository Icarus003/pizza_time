extends Area2D

@export var topping_type: Topping.Type
@export var topping_scene: PackedScene
func add_topping():
	topping_scene.instantiate()

func _on_input_event(_viewport: Node, event: InputEvent, _shape_idx: int) -> void:
	if event.is_action_pressed("action"):
		add_topping()
