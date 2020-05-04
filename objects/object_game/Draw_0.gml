switch (room) {
	case room_game:
		draw_text(20, 20, "SCORE: " + string(score));
		draw_text(20, 40, "LIVES: " + string(lives));
		break;
	case room_start:
		draw_set_halign(fa_center);
		var text_color = c_yellow;
		draw_text_transformed_color(
			room_width/2, 100, "SPACE ROCKS", 3, 3, 0, 
			text_color, text_color, text_color, text_color, 1
		);
		draw_text(room_width/2, 200, "Score 1,000 points to win!");
		draw_text(room_width/2, 250, "UP: Fly");
		draw_text(room_width/2, 275, "LEFT/RIGHT: Turn");
		draw_text(room_width/2, 300, "SPACE BAR: Shoot");
		draw_text(room_width/2, 350, ">> PRESS ENTER TO START <<");
		draw_set_halign(fa_left);
		break;
	case room_win:
		draw_set_halign(fa_center);
		var text_color = c_lime;
		draw_text_transformed_color(
			room_width/2, 150, "YOU WON!", 3, 3, 0, 
			text_color, text_color, text_color, text_color, 1
		);
		draw_text(
			room_width/2, 250, ">> PRESS ENTER TO RESTART <<");
		draw_set_halign(fa_left);
		break;
	case room_gameover:
		draw_set_halign(fa_center);
		var text_color = c_red;
		draw_text_transformed_color(
			room_width/2, 150, "GAME OVER!", 3, 3, 0, 
			text_color, text_color, text_color, text_color, 1
		);
		draw_text(
			room_width/2, 225, "FINAL SCORE: " + string(score));
		draw_text(
			room_width/2, 250, ">> PRESS ENTER TO RESTART <<");
		draw_set_halign(fa_left);
		break;
}
