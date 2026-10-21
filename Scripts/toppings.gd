class_name Topping
extends Area2D

enum Type {WORM}

const TEXTURES = {
	Type.WORM: preload("res://icon.svg")
}

var is_held = true

func _process(_delta):
	if is_held == true:
		global_position = get_global_mouse_position()
