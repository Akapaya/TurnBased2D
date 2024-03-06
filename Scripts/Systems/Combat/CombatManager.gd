extends Node

var GameStateMachine
var CommandQueue

func _ready():
	GameStateMachine = $GameStateMachine
	CommandQueue = $CommandQueue
	#GameStateMachine._GetCurrentState()

func _process(delta):
	GameStateMachine._GetCurrentState()
