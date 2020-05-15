/// @description Draw text for game

switch(room) {
	case rm_start:
		draw_set_halign(fa_center); // center all text
		var c = c_yellow; // colour of text
		
		// draw title of game (space rocks)
		draw_text_transformed_color(
			room_width/2, 100,
			"SPACE ROCKS",
			3, 3, 0, c, c, c, c, 1
		);
		
		// draw instructions for player
		draw_text(
			room_width/2, 200, // continue text over multiple lines using @
			"Score 1,000 points to win!\nUP: move\nL/R: rotate ship\nSPACE: shoot\n\n>> PRESS ENTER TO START <<"
		);
		draw_set_halign(fa_left); // reset alignment of text
		break;
		
	case rm_game:
		draw_text(20, 20, "SCORE: " + string(score));
		draw_text(20, 40, "LIVES: " + string(lives));
		break;
		
	case rm_win:
		draw_set_halign(fa_center); // center all text
		var c = c_lime; // colour of text
		
		// congratulations
		draw_text_transformed_color(
			room_width/2, 150,
			"YOU WON!",
			3, 3, 0, c, c, c, c, 1
		);
		
		// score display
		draw_text(
			room_width/2, 250, "FINAL SCORE: " + string(score)
		);
		
		// restart
		draw_text(
			room_width/2, 300, // continue text over multiple lines using @
			">> PRESS ENTER TO RESTART <<"
		);
		draw_set_halign(fa_left); // reset alignment of text
		break;
		
	case rm_gameover:
		draw_set_halign(fa_center); // center all text
		var c = c_red; // colour of text
		
		// draw title of game (space rocks)
		draw_text_transformed_color(
			room_width/2, 100,
			"GAME OVER",
			3, 3, 0, c, c, c, c, 1
		);
		
		// score display
		draw_text(
			room_width/2, 250, "FINAL SCORE: " + string(score)
		);
		
		// restart
		draw_text(
			room_width/2, 300, // continue text over multiple lines using @
			">> PRESS ENTER TO TRY AGAIN <<"
		);
		draw_set_halign(fa_left); // reset alignment of text
		break;
}
