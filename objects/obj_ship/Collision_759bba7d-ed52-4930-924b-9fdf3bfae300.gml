/// @description Collision with asteroid

// Event executes when the ship's hitbox collides with the asteroid
instance_destroy();
repeat(10) {
	instance_create_layer(x, y, "Instances", obj_debris);
}