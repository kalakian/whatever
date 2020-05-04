extends KinematicBody2D

var velocity = Vector2(150, 200)

func _ready():
	pass # Replace with function body.

func _physics_process(delta):
	var collision = move_and_collide(velocity * delta)
	if(collision):
		velocity = velocity.bounce(collision.normal)
