x = xprevious;
y = yprevious;

move_bounce_solid(true);

if(direction <= 180 && (15 > direction || direction > 165))
{
	direction = clamp(direction, 15, 165);
}
else if (direction > 180 && (195 > direction || direction > 345))
{
	direction = clamp(direction, 195, 345);
}

audio_play_sound(sfx_brickhit, 0, false);

instance_create_layer(xprevious, yprevious, "Effects", obj_hit_0);

with(other)
{
	event_perform(ev_other, ev_user0);
}