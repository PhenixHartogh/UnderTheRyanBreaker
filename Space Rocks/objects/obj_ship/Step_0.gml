if (keyboard_check(vk_left))
{
    image_angle -= 4;
}

if (keyboard_check(vk_right))
{
    image_angle += 4;
}

if (keyboard_check(vk_up))
{
    motion_add(image_angle, 0.05);
}

if (keyboard_check_pressed(vk_space))
{
    var b = instance_create_layer(x, y, "Instances", obj_bullet);
    b.direction = image_angle;
    b.speed = 8;
}

if (x < 0) x = room_width;
if (x > room_width) x = 0;

if (y < 0) y = room_height;
if (y > room_height) y = 0;