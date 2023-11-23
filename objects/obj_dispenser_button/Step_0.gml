with (obj_cursor)
{
    if (grabbing == 0)
    {
        with (other)
        {
            if place_meeting(x, y, obj_cursor)
            {
                if mouse_check_button_pressed(mb_left)
                {
                    scr_sound(sfx_dispenser1)
                    touched = 1
                }
                if (mouse_check_button(mb_left) && touched == 1)
                {
                    instance_activate_object(flowid)
                    depth = (flowid.depth - 1)
                    image_index = 1
                }
                else
                {
                    if (touched == 1)
                    {
                        scr_sound(sfx_dispenser2)
                        touched = 0
                    }
                    depth = -1
                    instance_deactivate_object(flowid)
                    image_index = 0
                }
            }
            else
            {
                if (touched == 1)
                {
                    scr_sound(sfx_dispenser2)
                    touched = 0
                }
                depth = -1
                instance_deactivate_object(flowid)
                image_index = 0
            }
        }
    }
    else
    {
        with (other)
        {
            if (touched == 1)
            {
                scr_sound(sfx_dispenser2)
                touched = 0
            }
            depth = -1
            instance_deactivate_object(flowid)
            image_index = 0
        }
    }
}
