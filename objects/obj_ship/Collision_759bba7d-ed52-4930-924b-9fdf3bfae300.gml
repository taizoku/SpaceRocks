/// @description Collision with asteroid

// subtract a life
lives -= 1;

// trigger alarm when ship collides
with(obj_game) {
	alarm[1] = room_speed;
}

// play death sound
audio_play_sound(snd_die, 1, false);

// Event executes when the ship's hitbox collides with the asteroid
instance_destroy();
repeat(10) {
	instance_create_layer(x, y, "Instances", obj_debris);
}