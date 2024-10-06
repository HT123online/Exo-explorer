extends Control
var primero=preload("res://8.png")
var segundo=preload("res://7.png")
var tercero=preload("res://10.png")
var cuarto=preload("res://1.png")

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on__pressed():
	$Control2.visible=true
	$Control2/Control/Control/TextureRect.texture=primero
	


func _on_n_2_pressed():
	$Control2.visible=true
	$Control2/Control/Control/TextureRect.texture=segundo

func _on_n_3_pressed():
	$Control2.visible=true
	$Control2/Control/Control/TextureRect.texture=tercero


func _on_n_4_pressed():
	$Control2.visible=true
	$Control2/Control/Control/TextureRect.texture=cuarto


func _on_button_2_pressed():
	$Control2.visible=false
