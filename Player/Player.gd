extends KinematicBody2D

var velocity = Vector2()
var pressed = false

func _ready():
	set_process(true)

func _physics_process(delta):
	_get_input(delta)
	print(pressed)
	if pressed == false:
		velocity.x = 0
		velocity.y = 0
	move_and_slide(velocity)


#The movement is gonna need to be more crisp, especially with
#deceleration and stopping
func _get_input(delta):
	if(Input.is_action_pressed("ui_left")):
		pressed = true
		velocity.x = -300
	if(Input.is_action_pressed("ui_right")):
		pressed = true
		velocity.x = 300
	if(Input.is_action_pressed("ui_up")):
		pressed = true
		velocity.y = -300
	if(Input.is_action_pressed("ui_down")):
		pressed = true
		velocity.y = 300
	if not(Input.is_action_pressed("ui_down")) and not (Input.is_action_pressed("ui_up")) and not (Input.is_action_pressed("ui_right")) and not (Input.is_action_pressed("ui_left")):
		pressed = false;