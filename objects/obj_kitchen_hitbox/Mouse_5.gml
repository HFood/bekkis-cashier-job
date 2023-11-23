with (obj_cursor)
{
    if (grabbing == 1)
    {
        with (other)
        {
            if (x < 400)
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
                                scr_message(load_string_json(global.lang, "tut5"), spr_hud_coach_talk)
                                room_goto(rm_test)
                            }
                        }
                        else
                            room_goto(rm_test)
                        break
                }

            }
            else
            {
                switch room
                {
                    case rm_test:
                        if (global.day == 0)
                        {
                            if (obj_tutorial.phase > 1)
                                room_goto(rm_kitchen)
                        }
                        else
                            room_goto(rm_kitchen)
                        break
                    case rm_soda:
                        room_goto(rm_test)
                        break
                }

            }
        }
    }
}
