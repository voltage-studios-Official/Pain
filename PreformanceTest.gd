# PerformanceTest.gd

extends Spatial

var cube_model = preload("res://cube.obj") # Replace with your cube model file path

func _process(delta):
			for i in range(1000):
								var cube = RigidBody.new()
												var mesh = MeshInstance.new()
																mesh.mesh = cube_model
																				cube.add_child(mesh)
																								var collision_shape = CollisionShape.new()
																												var mesh_shape = MeshInstance.new()
																																mesh_shape.mesh = cube_model
																																				var shape = mesh_shape.mesh.create_trimesh_collision()
																																								collision_shape.shape = shape
																																												cube.add_child(collision_shape)
																																																cube.translation = Vector3(randf_range(-10, 10), randf_range(-10, 10), randf_range(-10, 10))
																																																				add_child(cube)
																																																				
