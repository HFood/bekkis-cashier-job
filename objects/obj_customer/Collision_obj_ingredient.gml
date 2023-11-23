if (obj_cursor.grabbing == 1 && mouse_check_button_pressed(mb_right) && global.told == 1)
{
    if (gotfood == 0)
    {
        var _yes = 1
        var _yez = 1
        var _not1 = 0
        if ((ds_list_size(other.tower) + 1) == ds_list_size(global.swich))
        {
            var i = 0
            while (i < ds_list_size(other.tower))
            {
                if (ds_list_find_value(other.tower, i) != ds_list_find_value(global.swich, (i + 1)))
                {
                    _not1 = 1
                    break
                }
                else
                {
                    i++
                    continue
                }
            }
            if (_not1 == 1)
            {
                _yez = 0
                i = 0
                while (i < ds_list_size(other.tower))
                {
                    if (ds_list_find_value(other.tower, i) != ds_list_find_value(global.swich2, (i + 1)))
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
        }
        else if ((ds_list_size(other.tower) + 1) == ds_list_size(global.swich2))
        {
            _not1 = 1
            _yez = 0
            i = 0
            while (i < ds_list_size(other.tower))
            {
                if (ds_list_find_value(other.tower, i) != ds_list_find_value(global.swich2, (i + 1)))
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
        {
            _not1 = 1
            _yes = 0
        }
        if (_yes == 1 && gotdrink == 1 && ds_list_size(global.swich2) == 0)
        {
            while (global.givencash < wantedcash)
                scr_customer_cash()
        }
        if (_yes == 1)
        {
            if (global.day == 0 && obj_tutorial.phase == 5)
            {
                scr_message(load_string_json(global.lang, "tut6"), spr_hud_coach_talk)
                obj_tutorial.phase++
            }
            instance_destroy(other)
            if (ds_list_size(global.swich2) > 0)
            {
                if (_not1 == 1 && _yez == 0)
                {
                }
                else
                {
                    ds_list_clear(global.swich)
                    for (i = 0; i < ds_list_size(global.swich2); i++)
                        ds_list_add(global.swich, ds_list_find_value(global.swich2, i))
                }
            }
            else
                gotfood = 1
            ds_list_clear(global.swich2)
            takeaway = 1
        }
        else
        {
            instance_destroy(obj_wrongorder)
            instance_create_depth(590, 220, -10000, obj_wrongorder)
        }
    }
}
