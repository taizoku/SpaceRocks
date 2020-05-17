/// @description wrapping and rotation of asteroid

// wraps any instance that leaves the boundaries of the room
move_wrap(true, true, sprite_width/2);

// rotation of sprite
if (sprite_index == spr_asteroid_huge) {
	image_angle += 0.5;
	
} else if (sprite_index == spr_asteroid_med) {
	image_angle += 0.75;
	
} else {
	image_angle += 1;	
}