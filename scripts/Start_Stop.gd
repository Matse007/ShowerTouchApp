extends Button

@export_group("Nodes")
@export var animationPlayer: AnimationPlayer
@export var sprite: Sprite2D
var crosshairActive = preload("res://assets/images/Crosshair.png")
var crosshairInactive = preload("res://assets/images/svg/crosshairDisabled.png")
var iconActive = preload("res://assets/images/svg/PlayButtonVar.svg")
var iconInactive = preload("res://assets/images/svg/PlayButton.svg")

func _ready():
	sprite.texture = crosshairInactive
	self.icon = iconInactive

func _on_toggled(toggled_on):
	if toggled_on:
		sprite.texture = crosshairActive
		self.icon = iconActive
	else:
		sprite.texture = crosshairInactive
		self.icon = iconInactive

