/// @description Insert description here
// You can write your code in this editor
sprite_index = choose(
	spr_asteroid_small, spr_asteroid_med, spr_asteroid_huge
);

// direction: where the obj is moving
direction = irandom_range(0, 359);
image_angle = irandom_range(0, 359);

// make the asteroid move
speed = 1;