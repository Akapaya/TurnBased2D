extends Node
class_name CompositeEffect

@export var permanentEffects: Array = []
@export var temporaryEffects: Array = []
@export var characterBase: CharacterBase

func InsertPermanentEffect(IEffect):
	pass

func InsertTemporaryEffect(Effect):
	temporaryEffects.append(Effect)
	print("Insert Temporary Effect " )

func ApplyPermanentEffect(IEffect):
	pass

func ApplyEffectsInStartTurn():
	for effect in temporaryEffects:
		effect.Apply(characterBase)
	print("Apply Temporary Effect")

func ApplyEffectsInEndTurn():
	pass

func RemovePermanentEffect():
	pass

func RemoveTemporaryEffect():
	pass
