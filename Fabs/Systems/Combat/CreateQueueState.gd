extends State

var positionsInCombat: Array = []

func _ready():
	for child in get_children():
		positionsInCombat.append(child)

func enter() -> void:
	var queueInCombat: Array = []
	
	for position in positionsInCombat:
		if position.get_child_count() > 0:
			var child_node = position.get_child(0)
			if child_node.has_method("GetFitnessRate"):
				var attributes_script = child_node
				
				var inserted = false
				for i in range(queueInCombat.size()):
					var unit = queueInCombat[i]
					if attributes_script.GetFitnessRate() > unit.GetFitnessRate():
						queueInCombat.insert(i, attributes_script)
						inserted = true
						break
				
				if not inserted:
					queueInCombat.append(attributes_script)
	
	%TurnManager.SetQueue(queueInCombat)
	print("Enter in Create Queue State")

func exit() -> void:
	print("Exit in Create Queue State")

func processInput(event: InputEvent) -> void:
	print("ProcessInput in Create Queue State")

func Process(delta: float) -> void:
	print("Process in Create Queue State")

func ProcessPhysics(delta: float) -> void:
	print("ProcessPhysics in Create Queue State")
