if global.pause {
	draw_set_alpha(0.5)
	draw_rectangle_color(0,0, room_width,room_height,c_black,c_black,c_black,c_black,false)

	draw_text_transformed_color(o_Player.x,o_Player.y,"...Game Paused...", 2,2,0,c_white,c_white,c_white,c_white,2)
}