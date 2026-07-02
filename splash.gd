extends Control
@onready var warning_text: RichTextLabel = $WarningText
@onready var bye_text: RichTextLabel = $ByeText
@onready var exit_button: Button = $ExitButton
@onready var play_button: Button = $PlayButton


func _on_exit_button_pressed() -> void:
	warning_text.hide()
	bye_text.show()
	exit_button.hide()
	play_button.hide()
	get_tree().quit()


func _on_play_button_pressed() -> void:
	get_tree().change_scene_to_file("res://game.tscn")
