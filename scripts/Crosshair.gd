extends Sprite2D

@export
var temperatureLabel: Label

func _on_control_update_touch_pos(coordinates):
	self.position.x = clamp(coordinates.x,128,960)
	self.position.y = clamp(coordinates.y,72,450)
	calculateTemps(coordinates.x)

# 128 960
# 20,8

func calculateTemps(coords: int) -> int:
	var calculatedTemperature: int
	calculatedTemperature = clamp(((coords - 128) / 20.8)+10,10,50)
	print(calculatedTemperature)
	temperatureLabel.text = str(calculatedTemperature) + "°C"
	return calculatedTemperature
	

