extends Area2D



func _on_body_entered(body: Topping) -> void:
	queue_free()
	print("Topping deleted")
