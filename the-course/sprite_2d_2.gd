extends Area2D

func _ready() -> void:
	var f:float 
	var g:float
	var h:float
	
	f = 10
	g = 20
	h = 3
	f += 2
	f = f + 2
	g = f - 5
	h *= 2
	g = h/3
	
	var i:int
	var k:int
	var j:int
	
	i = 10
	j = 4
	k = i/j
	
	print(i)
	print(j)
	print(k)
	print(f)
	print(g)
	print(h)
	
	i = 10 % 4
	
	
	
	pass

func _process(delta: float) -> void:
	DebugDraw2D.set_text("pos", position)
	DebugDraw2D.set_text("glob_pos", global_position)
	DebugDraw2D.set_text("rotation", rotation)
	DebugDraw2D.set_text("glo_rotation", global_rotation)
	
	rotation -= 0.1
	position.x -= 1
	position.y -= 1
	
