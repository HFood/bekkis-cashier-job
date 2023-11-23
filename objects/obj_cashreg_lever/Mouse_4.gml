with (obj_cursor)
{
    if (global.day == 0 && obj_tutorial.phase < 5)
    {
        if ((!(place_meeting(x, y, obj_item))) && global.waiting == 1 && global.givencash != 0 && (!instance_exists(obj_money)))
        {
            with (other)
                touched = 1
        }
    }
    else if ((!(place_meeting(x, y, obj_item))) && global.waiting == 1 && global.givencash != 0 && (!instance_exists(obj_money)))
    {
        with (other)
            touched = 1
    }
}
