extends CharacterBase

@export var Hero_Attributes: Resource

func _ready():
	Attributes = Attributes.duplicate()
