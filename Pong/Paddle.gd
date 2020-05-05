extends KinematicBody2D

var moveSpeed = 200
var velocity = Vector2.ZERO

var upKey = KEY_UP
var downKey = KEY_DOWN

var startPos

func _ready():
	startPos = position


func set_keys(up, down):
	upKey = up
	downKey = down

func reset():
	position = startPos


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	velocity = Vector2.ZERO
	
	if(Input.is_key_pressed(upKey)):
		velocity.y = -moveSpeed
	elif(Input.is_key_pressed(downKey)):
		velocity.y = moveSpeed

func _physics_process(delta):
	var _collision = move_and_collide(velocity * delta)
