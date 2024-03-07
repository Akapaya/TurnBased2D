class_name IEffect
extends Node

@export var TypeEffect : Array = [Constants.TypeEffect.Temporary]
@export var WhenActivate : Array = [Constants.WhenActivate.StartTurn]
@export var isStackable : bool = false

func SetData(float) -> void:
	pass

func Apply(characterBase) -> void:
	pass

func CheckTemporary() -> void:
	pass

func IncreaseEffect() -> void:
	pass

func DecreaseEffect() -> void:
	pass

func Remove() -> void:
	pass
