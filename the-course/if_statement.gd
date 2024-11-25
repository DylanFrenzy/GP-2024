extends Node2D

var r
var h
var p

func _draw():
	if p.x < h:
		draw_rect(Rect2(0, 0, h, r.size.y), Color.RED, true, 10, true)
		draw_rect(Rect2(h, 0, h, r.size.y), Color.BLUE, true, 10, true)
		
	else:
		draw_rect(Rect2(0, 0, h, r.size.y), Color.BLUE, true, 10, true)
		draw_rect(Rect2(h, 0, h, r.size.y), Color.RED, true, 10, true)
		
func _ready() -> void:
	r = get_viewport_rect();
	h = r.size.x / 2;
	
func _process(delta: float) -> void:
	p = get_viewport().get_mouse_position()
	update()
