extends Node2D

###### alice & tea spawn function
var save_path = "user://savestates.save"

func load_spawnPoint():
	if FileAccess.file_exists(save_path):
		var file = FileAccess.open(save_path, FileAccess.READ)
		var spawn_position = file.get_var()
		var save_upside_down = file.get_var()
		var scene_name = file.get_var()
		print(save_upside_down)
		if(scene_name == get_tree().current_scene.name):
			print(spawn_position)

			#Signalbus.save_upside_down.emit(save_upside_down)
			print("loaded save")
		else:
			print("no level savefile")
	else:
		print("no spawn point file found")
	
func _ready():
	load_spawnPoint()



