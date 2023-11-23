with (obj_cursor)
{
    if ((!(place_meeting(x, y, obj_item))) && grabbing == 0)
    {
        if (global.day == 0 && obj_tutorial.phase == 1)
        {
            scr_message(load_string_json(global.lang, "tut2"), spr_hud_coach_talk)
            obj_tutorial.phase++
        }
        with (other)
        {
            scr_sound(sfx_write)
            global.told = 1
            instance_destroy()
        }
    }
}
