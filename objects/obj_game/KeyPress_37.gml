if (jobdone == 0 && global.pause == 0 && (!instance_exists(obj_fade)))
{
    switch room
    {
        case rm_test:
            if (global.day >= 2)
                room_goto(rm_soda)
            break
        case rm_kitchen:
            if (global.day == 0)
            {
                if (obj_tutorial.phase > 3)
                {
                    if (obj_tutorial.phase == 4)
                    {
                        scr_message(load_string_json(global.lang, "tut5"), spr_hud_coach_talk)
                        obj_tutorial.phase++
                    }
                    room_goto(rm_test)
                }
            }
            else
                room_goto(rm_test)
            break
        case rm_toaster:
            room_goto(rm_kitchen)
            break
    }

}
