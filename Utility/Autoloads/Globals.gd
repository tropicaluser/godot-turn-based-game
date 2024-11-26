extends Node

const GAME_SIZE: Vector2 = Vector2(320, 180)
const GAME_SIZE_HALVED: Vector2 = GAME_SIZE * 0.5
const CELL_SIZE: Vector2 = Vector2(16, 16)
const NULL_CELL: Vector2 = Vector2(-9999, -9999)
const HEALTH_POINTS_PER_HEART_CONTAINER: int = 2

#var game: Game = null
#var player: Player = null
var cursor: Node = null
var camera: Camera2D = null
var cell_size: Vector2 = Vector2(0, 0)
#var world: WorldHolder = null
var event_log: Label = null
#var gui: GUI = null
#var dialogue_box: DialogueBox = null

func _ready() -> void:
	randomize()
