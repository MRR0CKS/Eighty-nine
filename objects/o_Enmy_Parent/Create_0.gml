//stats
hpmax = 100 
hp = hpmax
// State machine
event_inherited();
state = states.IDLE
//Chase player
alert = false
alert_dist = 100
spd = 1 
//attack 
attack_dist = 8
attack_frame = 0
can_attack = true
attack_cooldown = 75
damage = 1 
knockback_time = 10
//Path
path  = path_add()
calc_path_delay = 5
calc_path_timer =  irandom(8)
// ANIAMTION
increasing = true
swinging = false 
image_xscale = 0.4
image_yscale = 0.4 
depth = 1