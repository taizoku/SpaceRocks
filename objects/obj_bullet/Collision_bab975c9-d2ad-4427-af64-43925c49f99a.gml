/// @description Asteroid collision behaviour

// add to score when bullet hits asteroid
with(other) {
	if (sprite_index == spr_asteroid_huge) {
		score += 50;
	} else if (sprite_index == spr_asteroid_huge) {
		score += 25;
	} else {
		score += 10;	
	}
}

// play asteroid destroy sound
audio_play_sound(snd_hurt, 1, false);

// destroy bullet when it collides with asteroid
instance_destroy();

// other refers to the other instance in the collision event
// inside the with() the asteroid will be running the code
with(other) {
	instance_destroy(); // asteroid calls destroy on itself
	// create smaller asteroids or chunks
	if (sprite_index == spr_asteroid_huge) {
		// spawn off two smaller asteroids (looped)
		repeat(2) {
			var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
			new_asteroid.sprite_index = spr_asteroid_med; // overwrite random sprite_index
		}
	} else if (sprite_index == spr_asteroid_med) {
		repeat(2) {
			var new_asteroid = instance_create_layer(x, y, "Instances", obj_asteroid);
			new_asteroid.sprite_index = spr_asteroid_small; // overwrite random sprite_index
		}
	}
	
	repeat(5) {
		instance_create_layer(x, y, "Instances", obj_debris);
	}
}
