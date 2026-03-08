if (!audio_is_playing(sfx_powerup_pickup))
{
	audio_play_sound(sfx_powerup_pickup, 0, false);
}

instance_destroy();