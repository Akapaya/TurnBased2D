extends IEffect

@export var DamagePerTurn: float = 10

func SetData(damage) -> void:
	DamagePerTurn = damage

func Apply(characterBase) -> void:
	characterBase.TakeDamage(DamagePerTurn)
	print("Apply Burn Effect")

func CheckTemporary() -> void:
	pass

func IncreaseEffect() -> void:
	pass

func DecreaseEffect() -> void:
	pass

func Remove() -> void:
	pass
