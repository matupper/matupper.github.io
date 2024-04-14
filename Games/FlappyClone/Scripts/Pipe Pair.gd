extends Node2D

@onready var botPipe = $BotPipe
@onready var topPipe = $TopPipe
@onready var pointSFX = $Point
@onready var bird = $"../../../Bird/CharacterBody2D"

var score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_path_follow_2d_pipe_loop():
	if bird.gameStatus == 1:
		pointSFX.play()
	var spacing = randf_range(0, 4)
	botPipe.position.y = 82 + spacing
	topPipe.position.y = -82 - spacing
	score += 1
	pass # Replace with function body.
