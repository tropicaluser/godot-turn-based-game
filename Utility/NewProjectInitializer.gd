#tool
extends Node

func _init() -> void:
	ProjectSettings.set_setting("display/window/size/width", 320)
	ProjectSettings.set_setting("display/window/size/height", 180)
	ProjectSettings.set_setting("display/window/size/test_width", 320 * 3)
	ProjectSettings.set_setting("display/window/size/test_height", 180 * 3)
	ProjectSettings.set_setting("display/window/size/borderless", true)
	
	ProjectSettings.set_setting("rendering/2d/snapping/use_gpu_pixel_snap", true)
	
	ProjectSettings.set_setting("debug/gdscript/warnings/return_value_discarded", false)
	ProjectSettings.set_setting("debug/gdscript/warnings/narrowing_conversion", false)
	ProjectSettings.set_setting("debug/gdscript/warnings/integer_division", false)
	
	print("NewProjectInitalizer has completed. Comment out its \"tool\" line when done.")
