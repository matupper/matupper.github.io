extends Label

@onready var pipe_pair = $"../Path2D/PathFollow2D/PipePair"
@onready var bird = $"../Bird/CharacterBody2D"


func _process(delta):
	if bird.gameStatus == 1:
		text = str(pipe_pair.score)
