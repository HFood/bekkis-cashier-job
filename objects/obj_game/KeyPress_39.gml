if (jobdone == 0 && global.pause == 0 && (!instance_exists(obj_fade)))
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
        case rm_kitchen:
            if (global.day >= 4)
                room_goto(rm_toaster)
            break
    }

}
