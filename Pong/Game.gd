extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	$Paddle1.set_keys(KEY_Q, KEY_A)
	$Paddle2.set_keys(KEY_P, KEY_L)


func goal_scored(scorer):
	print("Player ", scorer, " scored")
	$Puck.reset()


func _on_Left_body_entered(_body):
	goal_scored(2)


func _on_Right_body_entered(_body):
	goal_scored(1)

