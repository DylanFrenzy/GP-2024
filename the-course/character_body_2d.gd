extends CharacterBody2D

func _physics_process(delta):
	var direction = Input.get_vector("turn_left","turn_right","move_forwards","move_backwards")
	velocity = direction * 50000
	move_and_slide()
	
@export var bullet_scene:PackedScene
@export var bullet_spawn:Node2D

var f
var can_fire = true

func _ready():
	pass
	
	if Input.is_action_pressed("fire") and can_fire:
		var b = bullet_scene.instantiate()
		b.global_position = bullet_spawn.global_position
		b.global_rotation = bullet_spawn.global_rotation
		get_tree().get_root().add_child(b) 
		can_fire = false
		$Timer.start()
		
func _on_timer_timeout():
	can_fire = true
	
