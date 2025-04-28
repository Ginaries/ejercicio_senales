extends TextureButton
@onready var Scene = preload("res://scenes/Blocks/Violet/BlockViolet.tscn")

func generate_block():
	var instance=Scene.instantiate()
	add_child(instance)
