if room == rm_editor exit;

if obj_player.state != states.hurt && !global.cheesefollow
{
	global.heattime = 60;
	global.combotime = 60;
	
	ds_list_add(global.saveroom, id) 
	if global.toppintotal < 5
		obj_tv.message = "YOU NEED " + string(5 - global.toppintotal) + " MORE TOPPINS!"
	else 
		obj_tv.message = "YOU HAVE ALL TOPPINS!"
	
	obj_tv.showtext = true
	obj_tv.alarm[0] = 150
	global.toppintotal += 1

	global.cheesefollow = true
	panic = false
}
