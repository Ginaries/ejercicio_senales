extends TextureButton

@onready var Scene = preload("res://scenes/Blocks/Red/BlockRed.tscn")

func generate_block():
	var instance=Scene.instantiate()
	add_child(instance)
	
