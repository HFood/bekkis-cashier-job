if (touched == 1 && mouse_check_button_released(mb_left) && room != rm_endcutscene)
{
    if (image_index == 5)
    {
        scr_sound(sfx_cashreg)
        if (global.day == 0)
        {
            if (obj_cashreg.total == "")
                var _moni = 0
            else
                _moni = real(obj_cashreg.total)
            if (_moni == global.givencash)
            {
                scr_message(load_string_json(global.lang, "tut7"), spr_hud_coach_talk)
                obj_tutorial.phase++
            }
            else
            {
                scr_message(load_string_json(global.lang, "tut_counterror"), spr_hud_coach_talk)
                with (obj_customer)
                {
                    global.givencash = 0
                    while (global.givencash < wantedcash)
                        scr_customer_cash()
                }
            }
            obj_cashreg.total = ""
        }
        else
        {
            if (obj_cashreg.total == "")
                _moni = 0
            else
                _moni = real(obj_cashreg.total)
            if (_moni == global.givencash)
            {
                if (global.patience <= 0)
                {
                    if (global.hard == 1)
                    {
                        scr_sound(sfx_crash)
                        global.hp--
                    }
                    global.errors++
                    obj_game.color = 255
                    global.cash -= (global.givencash / 6)
                }
                else
                {
                    ds_list_add(global.patience_gl, global.patience)
                    if (global.patience >= 50)
                        global.tip += 2
                    else if (global.patience >= 33)
                        global.tip += 1.3
                    global.cash += global.givencash
                }
            }
            else
            {
                if (global.hard == 1)
                {
                    scr_sound(sfx_crash)
                    global.hp--
                }
                global.errors++
                obj_game.color = 255
                global.cash -= (global.givencash / 6)
            }
            if (global.hp < 1)
            {
                audio_stop_sound(sfx_crash)
                room_goto(rm_gameover)
            }
            if (global.cash >= global.goal && obj_customer.theone == 1 && global.day == 5)
            {
            }
            else
                scr_message(load_string_json(global.lang, ("cust" + string(irandom_range(1, 8)))), spr_hud_happy)
            obj_cashreg.total = ""
            with (obj_customer)
                alarm[0] = 1
        }
        image_index = 23
        pulling = 1
        image_speed = 1
    }
    touched = 0
}
