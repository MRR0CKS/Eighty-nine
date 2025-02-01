 x = o_Player.x
  y = o_Player.y -10
  angle = point_direction(x,y,mouse_x,mouse_y)
image_angle = round(angle -90) 
 if mouse_check_button_pressed(mb_left) {
	 instance_create_layer(x, y , "instances", o_Attack)
 }