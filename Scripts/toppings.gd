class_name Topping
extends Area2D

enum Type {WORM}

const TEXTURES = {
	Type.WORM: preload("res://icon.svg")
}

var is_held = true
static var is_holding_a_topping := false

func _ready():
	is_holding_a_topping = true

func _exit_tree():
	if is_held == true:
		is_held = false
		is_holding_a_topping = false

func _unhandled_input(event: InputEvent):
	if is_held == true and event.is_action_pressed("action"):
		is_held = false
		is_holding_a_topping = false
		get_viewport().set_input_as_handled()

func _process(_delta):
	if is_held == true:
		global_position = get_global_mouse_position()
