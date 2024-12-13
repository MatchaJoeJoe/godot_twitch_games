extends Node2D

@export var shoot_particles: PackedScene = preload("res://scenes/games/cannon/shoot_particles.tscn")

@onready var animation_player: AnimationPlayer = $AnimationPlayer
@onready var sprite_2d: Node2D = $SpriteHolder

func shoot() -> void:
	animation_player.play("shoot")
	spawn_particles()
	
func spawn_particles() -> void:
	var instance: GPUParticles2D = shoot_particles.instantiate()
	add_child(instance)
	instance.rotation = self.rotation
	animation_player.play("idle")
	
