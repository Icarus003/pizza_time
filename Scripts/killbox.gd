extends Area2D

func _on_body_entered(body: Topping):
	print("Topping deleted")
	queue_free()
