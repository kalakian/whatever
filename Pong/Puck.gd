extends KinematicBody2D

var startPos
var velocity

func _ready():
	startPos = position
	reset()


func reset():
	position = startPos
	var randDegrees = (randi()%4) * 90
	velocity = Vector2(200,200).rotated(deg2rad(randDegrees))


func _physics_process(delta):
	var collision = move_and_collide(velocity * delta)
	if(collision):
		velocity = velocity.bounce(collision.normal)
