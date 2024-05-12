extends Button

@export 
var animationPlayer: AnimationPlayer
@export var isLoadMenu: bool = false

func _on_pressed():
	if isLoadMenu:
		animationPlayer.play("FadeinMainFromLoad")
	else:
		animationPlayer.play("FadeinMainFromSave")
