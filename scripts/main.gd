extends Node

func _ready() -> void:
	print("lalar")
	#print($VBoxContainer/SettingsButton, "lalar")
	
	$VBoxContainer/StartButton.pressed.connect(_on_start_pressed)
	$VBoxContainer/SettingsButton.pressed.connect(_on_settings_pressed)
	$VBoxContainer/QuitButton.pressed.connect(_on_quit_pressed)

func _on_start_pressed():
	# Updated to Godot 4 syntax
	get_tree().change_scene_to_file("res://scenes/Level1.tscn") 

func _on_settings_pressed():
	print("pizda") # This should now show up in the output console
	get_tree().change_scene_to_file("res://scenes/ui/Settings.tscn")

func _on_quit_pressed():
	get_tree().quit()
