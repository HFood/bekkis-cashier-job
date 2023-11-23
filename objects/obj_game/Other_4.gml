if (global.day == 0 && obj_tutorial.phase == 2 && room == rm_kitchen)
{
    scr_message(load_string_json(global.lang, "tut3"), spr_hud_coach_talk)
    obj_tutorial.phase++
}
if (global.day == 0 && obj_tutorial.phase == 4 && room == rm_test && obj_cursor.grabid.object_index == obj_ingredient)
{
    var _sandw = obj_cursor.grabid
    var _yes = 1
    if ((ds_list_size(_sandw.tower) + 1) == ds_list_size(global.swich))
    {
        var i = 0
        while (i < ds_list_size(_sandw.tower))
        {
            if (ds_list_find_value(_sandw.tower, i) != ds_list_find_value(global.swich, (i + 1)))
            {
                _yes = 0
                break
            }
            else
            {
                i++
                continue
            }
        }
    }
    else
        _yes = 0
    if (_yes == 1)
    {
        scr_message(load_string_json(global.lang, "tut5"), spr_hud_coach_talk)
        obj_tutorial.phase++
    }
}
if (room == rm_test && deac == 2)
{
    instance_activate_object(obj_customer)
    deac = 0
}
