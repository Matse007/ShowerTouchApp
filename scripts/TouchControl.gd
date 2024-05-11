extends Control

var selected: bool = false

signal updateTouchPos(coordinates)



func _on_gui_input(event):
	if selected && Input.is_action_pressed("mouse_pressed"):
		updateTouchPos.emit(get_global_mouse_position())


func _on_mouse_entered():
	selected = true
	print("entered")


func _on_mouse_exited():
	selected = false
	print("left")
