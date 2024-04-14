extends ParallaxBackground

var scroll_speed = -10
@onready var sky = $Sky
@onready var cloud = $Cloud
@onready var city = $City
@onready var tree = $Tree

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	sky.motion_offset.x += scroll_speed * delta
	cloud.motion_offset.x += scroll_speed * delta * 2
	city.motion_offset.x += scroll_speed * delta * 3
	tree.motion_offset.x += scroll_speed * delta * 4
	pass
