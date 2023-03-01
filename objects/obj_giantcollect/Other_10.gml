/// @description collect
audio_stop_sound(sfx_collectgiantpizza);
audio_stop_sound(sfx_secretwall);
scr_soundeffect(sfx_collectgiantpizza);

var val = heat_calculate(1000)
global.collect += val;
with instance_create(x, y, obj_smallnumber)
	number = string(val);

if global.bullet < 3
	global.bullet += 1;

instance_destroy();
scr_failmod(mods.no_toppings);

// burst into toppings
if global.gameplay != 0
{
	var _x = x - 48;
	var _y = y - 48;
	var _xstart = _x;
	
	global.combotime = 60
	
	for (var yy = 0; yy < 4; yy++)
	{
		for (var xx = 0; xx < 4; xx++)
		{
			create_collect(_x, _y, scr_collectsprite());
			_x += 16;
		}
		_x = _xstart;
		_y += 16;
	}
}

with obj_tv
	happy_timer = room_speed * 5;

