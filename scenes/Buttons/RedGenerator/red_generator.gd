extends TextureButton

@onready var Scene = preload("res://scenes/Blocks/Red/BlockRed.tscn")

signal enviarINT

func generate_block():
	var instance=Scene.instantiate()
	add_child(instance)
	
	


func _on_button_down() -> void:
	generate_block()
	enviarINT.emit()
