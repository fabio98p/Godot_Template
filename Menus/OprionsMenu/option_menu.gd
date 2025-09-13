extends PanelContainer

@onready var audio: PanelContainer = %Audio
@onready var controls: PanelContainer = %Controls
@onready var resolution: PanelContainer = %Resolution

#func _input(event: InputEvent) -> void:
	#if event.is_action_pressed()

func _on_audio_button_pressed() -> void:
	audio.visible = true
	controls.visible = false
	resolution.visible = false

func _on_controls_button_pressed() -> void:
	audio.visible = false
	controls.visible = true
	resolution.visible = false

func _on_resolution_button_pressed() -> void:
	audio.visible = false
	controls.visible = false
	resolution.visible = true

func _on_close_pressed() -> void:
	print("aa")
	visible = false
