extends Area2D

@export var topping_type: Topping.Type
@export var topping_scene: PackedScene
func add_topping():
	var topping = topping_scene.instantiate()
	topping.global_position = get_global_mouse_position()
	get_tree().current_scene.add_child.call_deferred(topping)

func _on_input_event(_viewport: Node, event: InputEvent, _shape_idx: int):
	if event.is_action_pressed("action"):
		add_topping()
