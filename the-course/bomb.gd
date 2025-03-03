extends Area2D



func _ready() -> void:
	pass # Replace with function body.



func _process(delta: float) -> void:
	pass



func _on_body_entered(body: Node2D) -> void:
	if body.name == "Bob":
		body.score = body.score + 1
		self.queue_free()
		pass # Replace with function body.
	pass # Replace with function body.
