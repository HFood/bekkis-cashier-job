if (touched == 1 && mouse_check_button_released(mb_left))
{
    if (image_index >= 7)
    {
        scr_sound(sfx_toaster1)
        with (obj_toaster)
            timer = 18
    }
    touched = 0
}
