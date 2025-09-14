extends PanelContainer

@onready var master_h_slider: HSlider = %MasterHSlider
var master_bus_name: String = "Master"
var master_bus_index: int

@onready var music_h_slider: HSlider = %MusicHSlider
var music_bus_name: String = "Music"
var music_bus_index: int

@onready var sfxh_slider: HSlider = %SFXHSlider
var sfx_bus_name: String = "SFX"
var sfx_bus_index: int




func _ready() -> void:
	master_bus_index = AudioServer.get_bus_index(master_bus_name)
	master_h_slider.connect("changed", _on_value_changed)
	

func _on_value_changed(value:float) -> void:
	AudioServer.set_bus_volume_db(
		master_bus_index,
		linear_to_db(value)
	)
