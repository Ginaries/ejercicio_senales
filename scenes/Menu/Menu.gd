extends Node2D

const INSTANCES_TEXT = "Cantidad de instancias: "
# Variable para contar cantidad de instancias
var instancesCount = 0
@onready var violet_generator: TextureButton = $VioletGenerator
@onready var red_generator: TextureButton = $RedGenerator



func _ready():
	# Inicializa el texto de "CountLabel" usando el texto
	# Constante "INSTANCES_TEXT" más el valor de "instancesCount" como Texto
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)
	violet_generator.enviarINT.connect(count_new_instance)
	red_generator.enviarINT.connect(count_new_instance)

func count_new_instance():
	instancesCount+=1
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)

func delete():
	instancesCount=0
	$CountLabel.text = INSTANCES_TEXT + str(instancesCount)
