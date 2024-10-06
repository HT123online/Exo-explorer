extends Control
var contador=0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_next_pressed():
	contador+=1
	if contador==1:
		$RichTextLabel.text="[center].[color=#9EFECA].[/color].."
		$"parte 1".visible=false
		$"parte 2".visible=true
	if contador==2:
		$RichTextLabel.text="[center]..[color=#9EFECA].[/color]."
		$"parte 2".visible=false
		$"parte 3".visible=true
	if contador==3:
		$RichTextLabel.text="[center]...[color=#9EFECA]."
		$"parte 3".visible=false
		$"parte 4".visible=true
		$next.text="Start Journey"
	if contador==4:
		get_tree().change_scene_to_file("res://principal.tscn")
	pass # Replace with function body.
