extends Node

@export var Sprite: Sprite2D
@export var Name: Label

func Initialize(String, CompressedTexture2D):
	Sprite.texture = CompressedTexture2D
	Name.text = String
