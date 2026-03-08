event_inherited();

global.paused = false;

if(instance_exists(obj_menu_pause))
{
	instance_destroy(obj_menu_pause);
}

if(instance_exists(obj_button_menupurple))
{
	instance_destroy(obj_button_menupurple);
}

if(instance_exists(obj_button_restart))
{
	instance_destroy(obj_button_restart);
}

instance_destroy();