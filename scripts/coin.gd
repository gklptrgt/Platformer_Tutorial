extends Area2D


func _on_body_entered(body: Node2D) -> void:
	print("Entered to a coin.")
	


func _on_mouse_entered() -> void:
	print("Mouse over coin.")
