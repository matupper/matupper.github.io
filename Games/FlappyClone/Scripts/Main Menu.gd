extends Control

@onready var play_button = $"MarginContainer/HBoxContainer/VBoxContainer/Play Button"
@onready var quit_button = $"MarginContainer/HBoxContainer/VBoxContainer/Quit Button"
@onready var game = preload("res://Scences/game.tscn")
 
# Called when the node enters the scene tree for the first time.
func _ready():
	play_button.button_down.connect(on_play_pressed)
	quit_button.button_down.connect(on_quit_pressed)
	pass # Replace with function body.

func on_play_pressed() -> void:
	get_tree().change_scene_to_packed(game)
	pass

func on_quit_pressed() -> void:
	get_tree().quit()

