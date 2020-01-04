extends KinematicBody2D

var velocity = Vector2()

func _ready():
	set_process(true)

func _physics_process(delta):
	_get_input(delta)
	move_and_slide(velocity)


#The movement is gonna need to be more crisp, especially with
#deceleration and stopping
func _get_input(delta):
	if(Input.is_action_pressed("ui_left")):
		velocity.x -= 10
		if(velocity.x < -300):
			velocity.x = -300
	if(Input.is_action_pressed("ui_right")):
		velocity.x += 10
		if(velocity.x > 300):
			velocity.x = 300
	if(Input.is_action_pressed("ui_up")):
		velocity.y -= 10
		if(velocity.y < -300):
			velocity.y = -300
	if(Input.is_action_pressed("ui_down")):
		velocity.y += 10
		if(velocity.y > 300):
			velocity.y = 300