instance_destroy(); // destroy bullet

repeat(10)
{
    instance_create_layer(x, y, "Instances", obj_debris);
}

with (other)
{
    instance_destroy();
}