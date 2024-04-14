extends CharacterBody2D

signal gameOver

@onready var pipe_pair = $Path2D/PathFollow2D/PipePair

@onready var sprite = $AnimatedSprite2D
@onready var hurtbox = $Hurtbox
@onready var jumpSFX = $Flap
@onready var hurtSFX = $Hurt
@onready var bird = $".."


const JUMP_VELOCITY = -150
var final_score = 0
var gameStatus = 1

# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = 400.0

func _physics_process(delta):
	# Add the gravity.
	velocity.y += gravity * delta
	velocity.x = 0	# Handle jump.
	if Input.is_action_just_pressed("Flap") and gameStatus == 1:
		velocity.y = JUMP_VELOCITY
		sprite.play("flap")
		jumpSFX.play()
	move_and_slide()

	if hurtbox.get_overlapping_bodies().size() > 0 and gameStatus == 1:
		hurtSFX.play()
		sprite.play("die")
		
		velocity.y = 0
		gravity = 0
		gameStatus = 0
		
		emit_signal("gameOver") 
	

