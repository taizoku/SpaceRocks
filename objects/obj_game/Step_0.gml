/// @description Room movement by key presses

// ENTER KEY PRESS
if (keyboard_check_pressed(vk_enter)) {
	switch(room) {	
	// start -> game
	case rm_start:
		room_goto(rm_game);
		break;
	
	// win -> game (restart)
	case rm_win:
	// lose -> game (restart)
	case rm_gameover:
		game_restart();
		break;
	}
}

if (room == rm_game) {
	if (lives <= 0) {
		if (score >= 1000) {
			room_goto(rm_win);
			audio_play_sound(snd_win, 1, false);
		} else {
			room_goto(rm_gameover);
			audio_play_sound(snd_lose, 1, false);
		}
	}
}

