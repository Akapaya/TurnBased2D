extends State

func enter() -> void:
	print("Enter in Start Turn Handled")

func exit() -> void:
	print("Exit in Start Turn Handled")

func processInput(event: InputEvent) -> void:
	print("ProcessInput in Start Turn Handled")

func Process(delta: float) -> void:
	print("Process in Start Turn Handled")

func ProcessPhysics(delta: float) -> void:
	print("ProcessPhysics in Start Turn Handled")
