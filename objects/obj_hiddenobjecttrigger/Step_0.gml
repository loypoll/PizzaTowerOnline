var _sound = false;
if place_meeting(x, y, obj_player)
{
    with obj_hiddenobject
    {
        if !activated && trigger == other.trigger
        {
            _sound = true;
			event_user(0);
        }
    }
}
if _sound && !audio_is_playing(sfx_collectgiantpizza)
    scr_soundeffect(sfx_secretwall);

