extends Control
var click=false
var po
func _process(delta):
	if Input.is_action_pressed("click"):
		click=true
		po=get_local_mouse_position()
		$Control2.position.y=po[1]
	if Input.is_action_just_released("click"):
		click=false
	#print(get_local_mouse_position())
	pass
	#$Control2.position.y=


