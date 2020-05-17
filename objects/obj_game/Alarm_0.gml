/// @description After 60 in-game ticks

// Since the game object is persistent
// Don't want to continue the script if we're in a different room
if (room != rm_game) {
	exit;	
}

// Flip a coin to decide where to spawn off new asteroids
if (choose(0,1) == 0) {
	// Boundaries are defined on the sides
	var xx = choose(0, room_width);
	var yy = irandom_range(0, room_height);
} else {
	// Boundaries are on the top and bottom of the game window
	var xx = irandom_range(0, room_width); // x can be anywhere along the horizontal axis
	var yy = choose(0, room_height); // pick either at top boundary or bottom
}

// Then create an asteroid at x and y
instance_create_layer(xx, yy, "Instances", obj_asteroid);

alarm[0] = room_speed*4; // Reset alarm to go off every 4 seconds