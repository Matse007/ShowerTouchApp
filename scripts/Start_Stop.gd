extends Button

@export_group("Nodes")
@export var animationPlayer: AnimationPlayer
@export var sprite: Sprite2D
var crosshairActive = preload("res://assets/images/Crosshairs/crosshairSmallRun.svg")
var crosshairInactive = preload("res://assets/images/Crosshairs/crosshairSmall.svg")
var iconActive = preload("res://assets/images/svg/stop2.svg")
var iconInactive = preload("res://assets/images/svg/start2.svg")

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

