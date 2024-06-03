extends Sprite2D

@export
var temperatureLabel: Label
@export
var waterColorRect: ColorRect
func _on_control_update_touch_pos(coordinates):
	self.position.x = clamp(coordinates.x,128,960)
	self.position.y = clamp(coordinates.y,72,450)
	calculateTemps(coordinates.x)
	update_water_color(coordinates.x)
	RenderingServer.set_default_clear_color(Color("343434"))

# 128 960
# 20,8

func calculateTemps(coords: int) -> int:
	var calculatedTemperature: int
	calculatedTemperature = clamp(((coords - 128) / 41.6)+20,20,40)
	print(calculatedTemperature)
	temperatureLabel.text = str(calculatedTemperature) + "°C"
	return calculatedTemperature
	
func update_water_color(coords: int) -> void:
	# Calculate the ratio within the range 128 to 960
	var temp: float = (coords - 128)
	var ratio: float = temp / 832
	# Lerp between blue and red colors
	var color: Color = Color(1, 0, 0) * ratio + Color(0, 0, 1) * (1 - ratio)
	waterColorRect.color = color


func _on_control_released_touch():
	RenderingServer.set_default_clear_color(Color("1a1a1a"))
