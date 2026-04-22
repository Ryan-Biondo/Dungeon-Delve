extends Node

# Per-dungeon state. Reset on dungeon entry/exit.

var keys: int = 0
var cleared_rooms: Dictionary = {}
var boss_defeated: bool = false

func reset() -> void:
	keys = 0
	cleared_rooms.clear()
	boss_defeated = false

func mark_room_cleared(room_id: String) -> void:
	cleared_rooms[room_id] = true

func is_room_cleared(room_id: String) -> bool:
	return cleared_rooms.get(room_id, false)
