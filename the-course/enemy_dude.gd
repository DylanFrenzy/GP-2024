extends CharacterBody2D

<<<<<<< Updated upstream

=======
>>>>>>> Stashed changes
var speed = 100

var attacking = false

<<<<<<< Updated upstream
func _process(delta):
	if attacking:
		position.x = position.x - speed * delta

func _on_area_2d_body_entered(body: Node2D) -> void:
	if body.name == "jump_dude":
=======
func _process(delta: float) -> void:
	if attacking:
		position.x = position.x - speed
		
func _on_area_2d_area_entered(area: Area2D) -> void:
	if body.name == "Bob":
>>>>>>> Stashed changes
		attacking = true
	pass # Replace with function body.
