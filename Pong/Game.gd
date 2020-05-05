extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready():
	$Paddle1.set_keys(KEY_Q, KEY_A)
	$Paddle2.set_keys(KEY_P, KEY_L)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
