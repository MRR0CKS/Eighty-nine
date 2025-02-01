#macro TS 16 
// tiles in the room
var width =ceil(room_width/TS)
var height = ceil(room_height/TS)
// create motion 
global.mp_grid = mp_grid_create(0,0, width, height,TS, TS)
//add instances to grid 
mp_grid_add_instances(global.mp_grid, o_FolderWall, false)
