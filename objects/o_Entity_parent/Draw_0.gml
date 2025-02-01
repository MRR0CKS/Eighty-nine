if alarm[HURT] > 0  and flash-- < flash_init/2 {
	
	gpu_set_fog(1,c_white,0,1)
	draw_sprite_ext(sprite_index, image_index,x,y,1, 1,0,c_white,1)
	gpu_set_fog(0,c_white,0,1) 
	
	//reset
	if flash <=0 flash = flash_init}
	else { 
		draw_self() } 