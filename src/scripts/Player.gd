extends KinematicBody

var lookSensitivity = 0.05
var walkSpeed = 10
var horizontalAcceleration = 5
var airAcceleration = 2
var normalAcceleration = 5
var gravity = 20
var jump = 12
var fullContact = false

var direction = Vector3()
var horizontalVelocity = Vector3()
var movement = Vector3()
var gravityVector = Vector3()

onready var head = $Head
onready var groundCheck = $GroundCheck

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _input(event):
	if event is InputEventMouseMotion:
		rotate_y(deg2rad(-event.relative.x * lookSensitivity))
		head.rotate_x(deg2rad(-event.relative.y * lookSensitivity))
		head.rotation.x = clamp(head.rotation.x, deg2rad(-45), deg2rad(45))

func _physics_process(delta):
	direction = Vector3()
	
	fullContact = groundCheck.is_colliding()
	
	if not is_on_floor():
		gravityVector += Vector3.DOWN * gravity * delta
		horizontalAcceleration = airAcceleration
	elif is_on_floor() and fullContact:
		gravityVector = -get_floor_normal() * gravity
		horizontalAcceleration = normalAcceleration
	else:
		gravityVector = -get_floor_normal()
		horizontalAcceleration = normalAcceleration
		
	if Input.is_action_just_pressed("jump") and (is_on_floor() or groundCheck.is_colliding()):
		gravityVector = Vector3.UP * jump
	
	if Input.is_action_pressed("move_forward"):
		direction -= transform.basis.z
	elif Input.is_action_pressed("move_backward"):
		direction += transform.basis.z
	if Input.is_action_pressed("move_left"):
		direction -= transform.basis.x
	elif Input.is_action_pressed("move_right"):
		direction += transform.basis.x

	direction = direction.normalized()
	horizontalVelocity = horizontalVelocity.linear_interpolate(direction * walkSpeed, horizontalAcceleration * delta)
	movement.z = horizontalVelocity.z + gravityVector.z
	movement.x = horizontalVelocity.x + gravityVector.x
	movement.y = gravityVector.y

	move_and_slide(movement, Vector3.UP)
