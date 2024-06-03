extends Button

@export_group("Nodes")
@export var animationPlayer: AnimationPlayer
@export var sprite: Sprite2D
var crosshairActive = preload("res://assets/images/crosshair_new.png")
var crosshairInactive = preload("res://assets/images/crosshairDisabled.png")
var iconActive = preload("res://assets/images/svg/Stop.svg")
var iconInactive = preload("res://assets/images/svg/Start.svg")

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

