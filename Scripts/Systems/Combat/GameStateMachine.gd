extends Node

@export var StartingState: State

var CurrentState: State = null
@export var CreateQueueState: State
@export var StartTurnState: State

func _ready():
	CurrentState = StartingState
	await CurrentState.enter()
	_TransitionTo(StartTurnState)

func _TransitionTo(State):
	CurrentState.exit()
	CurrentState = State
	CurrentState.enter()
	print("Transition to " + State.name)
	
func _GetCurrentState():
	print("The current State is " + CurrentState.name)

func _process(delta):
	if(CurrentState != null):
		CurrentState.Process(delta)
