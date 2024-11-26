extends Node

var focus_print: bool = false

func _ready():
	var _e = get_viewport().connect("gui_focus_changed", self, "on_Viewport_gui_focus_changed")
	pause_mode = PAUSE_MODE_PROCESS
	
func _unhandled_input(event: InputEvent) -> void:
	if event.is_action_pressed("l3"):
		toggle_fullscreen()
	else:
		return
	get_tree().set_input_as_unhandled()

func _unhandled_key_input(event: InputEventKey) -> void:
	if !event.pressed or event.is_echo():
		return
		
	match event.scancode:
		KEY_F11:
			toggle_fullscreen()
		KEY_P:
			get_tree().paused = !get_tree().paused
		KEY_Q:
			get_tree().quit()
		KEY_R:
			get_tree().reload_current_scene()
		_:
			return
	get_tree().set_input_as_handled()
	

func toggle_fullscreen():
	OS.set_window_fullscreen(!OS.window_fullscreen)
	get_tree().set_input_as_handled()
	
func _on_Viewport_gui_focus_changed(node: Control) -> void:
	if focus_print:
		print(node)
