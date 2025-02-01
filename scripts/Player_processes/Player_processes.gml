// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_input(){
Upkey =  keyboard_check(ord("W")) 
Downkey =  keyboard_check(ord("S")) 
Rightkey =  keyboard_check(ord("D")) 
Leftkey =  keyboard_check(ord("A")) 
}
function reset_vars() {
Upkey = 0
Downkey = 0
Rightkey = 0
Leftkey = 0 
}
function calc_movement() {
//movement
	xspd = (Rightkey - Leftkey)
	yspd = (Downkey - Upkey)
	// get direction
if xspd != 0 or yspd !=0 {
	var dir = point_direction(0,0,xspd,yspd)
	// distance that moving 
	xspd = lengthdir_x(Movespd,dir)
	yspd = lengthdir_y(Movespd,dir)
	// add movement 
	x += xspd
	y += yspd}
	// apply knockback
	x += hsp
	y += vsp
	// apply drag to knockback 
	hsp = lerp(hsp,0,0.05)
	vsp = lerp(vsp,0,0.05)
}