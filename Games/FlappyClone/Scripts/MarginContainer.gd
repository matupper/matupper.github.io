extends MarginContainer

@onready var play_button = $"HBoxContainer/VBoxContainer/Play Button"
@onready var quit_button = $"HBoxContainer/VBoxContainer/Quit Button"
@onready var game = preload("res://Scences/game.tscn")

func _ready():
	play_button.button_down.connect(_on_play_button_pressed)
	quit_button.button_down.connect(_on_quit_button_pressed)
	pass # Replace with function body.

func _on_character_body_2d_game_over():
	visible = true
	pass # Replace with function body.


func _on_play_button_pressed() -> void:
	get_tree().reload_current_scene()
	pass # Replace with function body.


func _on_quit_button_pressed() -> void:
	get_tree().quit()
	pass # Replace with function body.
