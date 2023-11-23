image_index = breads
if (timer > 0)
{
    timer--
    if (timer == 1)
    {
        scr_sound(sfx_toaster2)
        var i = 0
        repeat breads
        {
            with (instance_create_depth((480 + i), 250, 1, obj_ingredient))
            {
                flying = 1
                food = "toast"
                vsp = -16
            }
            i -= 128
        }
        breads = 0
    }
}
