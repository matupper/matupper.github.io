extends PathFollow2D

var speed = 0.35
signal pipe_loop 

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.

var prev = 0
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	progress_ratio += speed * delta
	
	var curr = progress_ratio
	if curr < prev:
		v_offset = 0 + randf_range(-50, 50)
		emit_signal("pipe_loop")
	prev = curr
	
	
	pass


func _on_timer_timeout():
	speed += 0.01
	pass # Replace with function body.
