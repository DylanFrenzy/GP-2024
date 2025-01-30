extends Node2D

func _ready() -> void:
	pass

func _process(delta: float) -> void:
	pass

func _draw() -> void:
	var r = Rect2(10, 10, 100, 30)
	draw_rect(r, Color.AQUA, false, 5)
	draw_line(Vector2(50, 50), Vector2(200, 200), Color.BEIGE)
	draw_circle(Vector2(500, 500), 100, Color.BLUE_VIOLET, true)

	var v = get_viewport_rect()

	draw_line(Vector2(0, v.size.y), Vector2(v.size.x, 0), Color.BISQUE)

	for i in range(10):
		print(i)

	for i in range(10, -1, -1):
		print(i)

	var basket = ["apple", "bananna", "carrot"]

	for f in basket:
		print(f)

	for i in range(basket.size()):
		print(basket[i])

	var num_lines = 10
	var s = get_viewport_rect().size.x
	var w = s.size.x / num_lines
	
	for i in range (num_lines):
		draw_line(Vector2(0, i * w), Vector2 (i*w, s.y), Color.RED)
		
		var num_h_lines = 4
		var gap = 50
		var border = 100
	
		for i in range (num_h_lines):
			draw_line(Vector2(border, border + gap * i), Vector2(v.size.x - border, border + gap * i), Color.GREEN_YELLOW)
			pass
