extends Node2D

var scores

# Called when the node enters the scene tree for the first time.
func _ready():
	randomize()
	$Paddle1.set_keys(KEY_Q, KEY_A)
	$Paddle2.set_keys(KEY_P, KEY_L)
	reset()


func reset():
	scores = [0, 0]
	$Paddle1.reset()
	$Paddle2.reset()
	$Puck.reset()
	$GUI/Message.text = ""


func _process(_delta):
	$GUI/CenterContainer/HBoxContainer/Score1.text = String(scores[0])
	$GUI/CenterContainer/HBoxContainer/Score2.text = String(scores[1])


func goal_scored(scorer):
	scores[scorer - 1] += 1
	if(scores[scorer - 1] == 9):
		game_over(scorer)
	else:
		$Puck.reset()


func game_over(winner):
	$GUI/Message.text = "P" + String(winner) + " Wins ..."
	$Timer.start()


func _on_Left_body_entered(_body):
	goal_scored(2)


func _on_Right_body_entered(_body):
	goal_scored(1)


func _on_Timer_timeout():
	reset()
