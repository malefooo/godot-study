extends CharacterBody2D

const MAX_SPEED = 200

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var vec = get_movement_verctor()
	var direction = vec.normalized()
	velocity = direction * MAX_SPEED
	move_and_slide()


func get_movement_verctor():
	var x = Input.get_action_strength("move_right") - Input.get_action_strength("move _left")
	var y = Input.get_action_strength("move_down") - Input.get_action_strength("move_up")
	return Vector2(x, y)
