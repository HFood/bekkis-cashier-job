if (!instance_exists(obj_fade))
{
    scr_sound(sfx_menu2)
    if (!instance_exists(obj_fade))
    {
        with (instance_create_depth(x, y, -10000, obj_fade))
        {
            spd = 0.1
            depth = -1000
            spec = 2
        }
    }
}
