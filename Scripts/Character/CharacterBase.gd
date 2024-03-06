extends Node
class_name CharacterBase

enum Type {
	Ally,
	Enemy
}

@export var NameCharacter: String
@export var IconCharacter: CompressedTexture2D
@export var Attributes: AttributesBase

func GetName() -> String:
	return NameCharacter

func GetIcon() -> CompressedTexture2D:
	return IconCharacter

func GetFitnessRate() -> float:
	return Attributes.FitnessRate
