## Script that have all attributes common between characters
##
## Only vars
##

class_name AttributesBase
extends Resource

@export var Health : float = 100 ##It's related to currently life of charater
@export var MaxHealth : float = 100
@export var Energy : float = 100
@export var MaxEnergy : float = 100
@export var Stun : float = 0
@export var MaxStun : float = 100

@export var ArmorPhysics : float = 100
@export var ArmorEnergy : float = 100

@export var FitnessRate : float = 20.0
@export var BlockRate : float = 20.0
@export var EvasionRate : float = 20.0
@export var AccuracyRate : float = 20.0
@export var CriticalHitRate : float = 20.0
@export var CriticalDamageRate : float = 20.0
@export var PhysicsPenetrationRate: float = 20.0
@export var EnergyPenetrationRate: float = 20.0
