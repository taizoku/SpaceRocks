/// @description As the game continues

// transparency (from 0 to 1)
image_alpha -= 0.01;
if (image_alpha <= 0) {
	instance_destroy(); // destroy the debris
}