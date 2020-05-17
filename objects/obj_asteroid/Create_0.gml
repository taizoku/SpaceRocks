/// @description Create an object

// Select a random sprite for the object
sprite_index = choose(
	spr_asteroid_small, spr_asteroid_med, spr_asteroid_huge
);

// Direction: where the asteroid is moving
direction = irandom_range(0, 359);
// Angle: orientation of asteroid
image_angle = irandom_range(0, 359);

// Make the asteroid move
if (sprite_index == spr_asteroid_huge) {
	speed = 0.5;	
} else if (sprite_index == spr_asteroid_med) {
	speed = 0.75;
} else {
	speed = 1;
}