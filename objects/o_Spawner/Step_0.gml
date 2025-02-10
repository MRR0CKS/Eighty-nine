if (global.pause) exit ; 
//randomizwe position 
randomize()
zone_inst = instance_find(o_Enemy_spawn_zone, irandom_range(0, zone_count))
randomize()
xx =random_range(zone_inst.bbox_left, zone_inst.bbox_right)
yy =random_range(zone_inst.bbox_top, zone_inst.bbox_bottom)
//spawner timer 
timer ++ 
if timer >= spawnTime { 
	timer = 0 
if  enemy_count < enemy_count_max { 
var enemy_inst = instance_create_layer(xx,yy,"Instances", enemy[random_range(0,0)])
}
}