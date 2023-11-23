with (obj_cursor)
{
    if ((!(place_meeting(x, y, obj_item))) && room != rm_endcutscene)
    {
        with (other)
        {
            if (image_index == 0)
            {
                scr_sound(sfx_drawer1)
                depth = -810
                image_index = 1
                obj_cashreg.open = 1
            }
            else
            {
                scr_sound(sfx_drawer2)
                depth = -1
                image_index = 0
                obj_cashreg.open = 0
            }
        }
    }
}
