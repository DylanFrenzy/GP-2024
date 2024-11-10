extends Sprite2D

@export var player:Node2D
@export var speed = 100

func _ready() -> void:
	pass
	
func _process(delta: float) -> void:
	
	var to_player = player.global_position - global_position
	to_player = to_player.normalized()
	
	global_position = global_position + (to_player * speed * delta)
