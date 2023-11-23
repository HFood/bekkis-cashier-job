scr_item_step()
if (food == "toast")
{
    if (flying == 1)
    {
        sprite_index = spr_toast
        image_angle += 12
    }
    else
    {
        sprite_index = spr_ingredients
        image_angle = 0
        image_index = 10
    }
}
if (place_meeting(x, y, obj_toaster) && grabbed && mouse_check_button_pressed(mb_right) && food == "bread" && ds_list_size(tower) == 0)
{
    if (obj_toaster.breads < 2 && obj_toaster.timer <= 0)
    {
        with (obj_toaster)
            breads++
        instance_destroy()
    }
}
if (place_meeting(x, y, obj_foodicon) && grabbed && mouse_check_button_pressed(mb_right))
{
    var _ing = instance_place(x, y, obj_foodicon)
    if (_ing.food == "trash")
        instance_destroy()
}
if (place_meeting(x, y, obj_ingredient) && grabbed && mouse_check_button_pressed(mb_right) && food != "ice")
{
    _ing = instance_place(x, y, obj_ingredient)
    if ((_ing.food == "bread" || _ing.food == "toast") && ds_list_size(_ing.tower) < 14 && (ds_list_size(_ing.tower) + ds_list_size(tower)) < 14)
    {
        scr_sound(sfx_ham)
        audio_sound_pitch(sfx_ham, (0.6 + (ds_list_size(_ing.tower) * 0.04)))
        with (_ing)
        {
            scl = 0.1
            ds_list_add(tower, other.food)
        }
        for (var i = 0; i < ds_list_size(tower); i++)
            ds_list_add(_ing.tower, ds_list_find_value(tower, i))
        if (global.day == 0 && obj_tutorial.phase == 3)
        {
            var _yes = 1
            if ((ds_list_size(_ing.tower) + 1) == ds_list_size(global.swich))
            {
                i = 0
                while (i < ds_list_size(_ing.tower))
                {
                    if (ds_list_find_value(_ing.tower, i) != ds_list_find_value(global.swich, (i + 1)))
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
                scr_message(load_string_json(global.lang, "tut4"), spr_hud_coach_talk)
                obj_tutorial.phase++
            }
        }
        instance_destroy()
    }
}
if (place_meeting(x, y, obj_cup) && grabbed && mouse_check_button_pressed(mb_right) && food == "ice")
{
    _ing = instance_place(x, y, obj_cup)
    if (_ing.hasice == 0)
    {
        scr_sound(sfx_ice)
        audio_sound_pitch(sfx_ham, (0.6 + (ds_list_size(_ing.tower) * 0.04)))
        with (_ing)
            hasice = 1
        instance_destroy()
    }
}
