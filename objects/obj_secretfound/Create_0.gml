if ds_list_find_index(global.saveroom, id) == -1 && !global.snickchallenge
{
	global.secretfound += 1
	var sg = check_sugary();
	
	if global.gameplay == 0 or sg
	{
		if !sg
		{
			var outof = 6;
			if string_startswith(room_get_name(room), "etb_")
				outof = 2;
			if string_startswith(room_get_name(room), "floor2_")
				outof = 3;
			if string_startswith(room_get_name(room), "cotton_")
				outof = 3;
		}
	
		with obj_tv
		{
			if sg
				message = "You have found a secret!";
			else
				message = "You have found " + string(global.secretfound) + " secret" + (global.secretfound == 1 ? "" : "s") + " out of " + string(outof) + "!";
			
			showtext = true
			alarm[2] = 150
		}
	}
	
	scr_soundeffect(sfx_secretfound)
	ds_list_add(global.saveroom, id) 
}
instance_destroy();

