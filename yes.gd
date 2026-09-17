extends Area2D

var speed = 50


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	var velocity =  Vector2.ZERO
	
	if Input.is_action_pressed("Move_Up"): 
		velocity.y -= speed;
	if Input.is_action_pressed("Move_Down"): 
		velocity.y += speed;
	if Input.is_action_pressed("Move_Left"): 
		velocity.x -= speed;
	if Input.is_action_pressed("Move_Right"): 
		velocity.x += speed;

	position += velocity
