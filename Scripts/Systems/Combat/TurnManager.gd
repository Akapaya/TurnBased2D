extends Node

var queueInCombat: Array = []
var uiCharacterObject = preload("res://Fabs/UI/Character_Sprite_And_Name/character_ui_element.tscn")
var baseOffsetX: float = 60.0
var minOffsetIncrease: float = 10.0

func SetQueue(Array):
	queueInCombat = Array
	var totalInstances = queueInCombat.size()
	
	var totalOffset = calculateTotalOffset(totalInstances)
	
	for i in range(totalInstances):
		var instance = uiCharacterObject.instantiate()
		%TimeLineQueue.add_child(instance)
		  
		var positionX = (i * totalOffset)
		var positionY = 0
		instance.position = Vector2(positionX, positionY)
				
		instance.Initialize(queueInCombat[i].GetName(), queueInCombat[i].GetIcon())
	
		
func calculateTotalOffset(totalInstances: int) -> float:
	var offset = baseOffsetX + (minOffsetIncrease * (8 - totalInstances))
	return offset

func  _process(delta):
	for unit in queueInCombat:
		print(unit.name)
