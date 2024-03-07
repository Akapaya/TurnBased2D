extends CharacterBase

@export var Enemy_Attributes: Resource

func _ready():
	Attributes = Attributes.duplicate()
	var newEffect = load("res://Scripts/Effects/StatusEffect/Burn.gd").new()
	newEffect.SetData(10)
	compositeEffect.InsertTemporaryEffect(newEffect)
	compositeEffect.ApplyEffectsInStartTurn()
