extends Button

@export 
var animationPlayer: AnimationPlayer

func _on_pressed():
	animationPlayer.play("FadeinMenu")
