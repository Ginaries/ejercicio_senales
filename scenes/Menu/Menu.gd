extends Node2D

const INSTANCES_TEXT = "Cantidad de instancias: "
# Variable para contar cantidad de instancias
var instancesCount = 0
@onready var red_generator: TextureButton = $RedGenerator
@onready var violet_generator: TextureButton = $VioletGenerator


func _ready():
	# Inicializa el texto de "CountLabel" usando el texto
	# Constante "INSTANCES_TEXT" más el valor de "instancesCount" como Texto
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)
	pass


func _on_violet_generator_button_down() -> void:
	violet_generator.generate_block()


func _on_red_generator_button_down() -> void:
	red_generator.generate_block()
