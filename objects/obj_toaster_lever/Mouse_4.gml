with (obj_cursor)
{
    if ((!(place_meeting(x, y, obj_item))) && obj_toaster.timer <= 0)
    {
        with (other)
            touched = 1
    }
}
