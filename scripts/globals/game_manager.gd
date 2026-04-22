extends Node

# Permanent progress. Persists across dungeons.

var max_health: int = 6  # 3 hearts, 2 halves each
var current_health: int = 6
var items: Dictionary = {}

func has_item(item_id: String) -> bool:
	return items.get(item_id, false)

func give_item(item_id: String) -> void:
	items[item_id] = true
