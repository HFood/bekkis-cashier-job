if (global.pause == 0)
{
    if (room == rm_results)
    {
        if (res_pause > 0)
            res_pause--
        else if (res_phase < 4)
        {
            res_phase++
            res_pause = 50
            if (res_phase == 4)
            {
                audio_sound_gain(global.music, 1, 0)
                audio_stop_sound(global.music)
                global.music = audio_play_sound(mu_chatauchocolat, 1, true)
                audio_sound_loop_start(global.music, 8.9)
                audio_sound_loop_end(global.music, 259.2)
                var lay = layer_get_id("Backgrounds_1")
                var bg = layer_background_get_id(lay)
                layer_background_visible(bg, false)
                lay = layer_get_id("Background")
                bg = layer_background_get_id(lay)
                switch global.rank
                {
                    case "a":
                        layer_background_sprite(bg, spr_bg_results1)
                        break
                    case "b":
                        layer_background_sprite(bg, spr_bg_results2)
                        break
                    case "c":
                        layer_background_sprite(bg, spr_bg_results3)
                        break
                    case "d":
                        layer_background_sprite(bg, spr_bg_results4)
                        break
                }

            }
            else
                scr_sound(sfx_step)
        }
        draw_sprite(spr_results, 0, 0, 0)
        draw_set_halign(fa_center)
        if (res_phase > 0)
            draw_text_transformed(400, 175, (load_string_json(global.lang, "res_mistakes") + string(global.errors)), 1.5, 1.5, 0)
        if (res_phase > 1)
        {
            if (global.time_s >= 10)
                draw_text_transformed(400, 250, (((load_string_json(global.lang, "res_time") + string(global.time_m)) + ":") + string(global.time_s)), 1.5, 1.5, 0)
            else
                draw_text_transformed(400, 250, (((load_string_json(global.lang, "res_time") + string(global.time_m)) + ":0") + string(global.time_s)), 1.5, 1.5, 0)
        }
        if (res_phase > 2)
            draw_text_transformed(400, 325, (load_string_json(global.lang, "res_tip") + string(global.tip)), 1.5, 1.5, 0)
        if (res_phase > 3)
        {
            switch global.rank
            {
                case "a":
                    draw_sprite(spr_results_reacts, 3, 0, 0)
                    draw_sprite(spr_results_ranks, 3, 0, 0)
                    break
                case "b":
                    draw_sprite(spr_results_reacts, 2, 0, 0)
                    draw_sprite(spr_results_ranks, 2, 0, 0)
                    break
                case "c":
                    draw_sprite(spr_results_reacts, 1, 0, 0)
                    draw_sprite(spr_results_ranks, 1, 0, 0)
                    break
                case "d":
                    draw_sprite(spr_results_reacts, 0, 0, 0)
                    draw_sprite(spr_results_ranks, 0, 0, 0)
                    break
            }

        }
    }
    else if (room != rm_menu && room != rm_credits && room != rm_gameover)
    {
        if (global.time_ms < 59)
            global.time_ms++
        else
        {
            if (global.time_s < 59)
                global.time_s++
            else
            {
                global.time_m++
                global.time_s = 0
            }
            global.time_ms = 0
        }
        if (global.day != 0 && room != rm_endcutscene)
        {
            draw_set_color(c_black)
            draw_circle(30, 120, 24, 0)
            if (global.patience > 50)
                var _clr = 0x2FE066
            else if (global.patience > 25)
                _clr = 3130848
            else
                _clr = 3105248
            draw_pie(30, 120, global.patience, 100, _clr, 20, 1)
        }
        if (global.waiting == 1 || global.told == 1)
        {
            switch global.day
            {
                case 1:
                    global.patience -= 0.01
                    break
                case 2:
                    global.patience -= 0.01
                    break
                case 3:
                    global.patience -= 0.02
                    break
                case 4:
                    global.patience -= 0.02
                    break
                case 5:
                    global.patience -= 0.01
                    break
            }

        }
        global.patience = clamp(global.patience, 0, 100)
        if (talkprompt_pause > 0)
            talkprompt_pause--
        else if (ds_list_size(talkprompt) > 0)
        {
            draw_sprite_ext(spr_textbox, 0, 0, 0, 1, 1, 0, c_white, 1)
            if (!surface_exists(talkprompt_surface))
                talkprompt_surface = surface_create(462, 50)
            surface_set_target(talkprompt_surface)
            draw_set_color(c_white)
            draw_rectangle(0, 0, 1600, 1600, false)
            draw_set_color(c_black)
            draw_set_halign(fa_left)
            draw_text_transformed((talkprompt_x / 2), 30, ds_list_find_value(talkprompt, 0), 1, 1, 0)
            surface_reset_target()
            draw_surface(talkprompt_surface, 175, 0)
            if (talkprompt_x > (-120 - (string_width(ds_list_find_value(talkprompt, 0)) * 2)))
            {
                if (talkspdup == 1 && jobdone == 0)
                    talkprompt_x -= 40
                else
                    talkprompt_x -= 9
            }
            else
            {
                if (deac == 1)
                {
                    if (room == rm_test)
                    {
                        instance_activate_object(obj_customer)
                        deac = 0
                    }
                    else
                        deac = 2
                }
                if (jobdone == 1 && room != rm_endcutscene)
                {
                    audio_stop_sound(global.music)
                    global.music = audio_play_sound(mu_computerpop, 1, false)
                    room_goto(rm_endcutscene)
                    with (instance_create_depth(0, 0, -1, obj_fade))
                    {
                        persistent = 1
                        image_blend = c_white
                        image_alpha = 1
                        spec = 4
                        spd = 0.01
                    }
                    scr_message_unimportant(load_string_json(global.lang, "end2"), spr_hud_star)
                    scr_message_unimportant(load_string_json(global.lang, "end3"), spr_hud_coach_talk)
                }
                if (global.day == 0 && obj_tutorial.phase == 0)
                    obj_tutorial.phase++
                else if (global.day == 0 && obj_tutorial.phase == 7)
                {
                    if (!instance_exists(obj_fade))
                    {
                        with (instance_create_depth(0, 0, -1, obj_fade))
                            spec = 3
                    }
                }
                else if (global.day == 0)
                {
                    ds_list_add(talkprompt, ds_list_find_value(talkprompt, 0))
                    ds_list_add(faceprompt, ds_list_find_value(faceprompt, 0))
                }
                ds_list_delete(talkprompt, 0)
                ds_list_delete(faceprompt, 0)
                if (room == rm_endcutscene && ds_list_size(talkprompt) == 0)
                {
                    if (!instance_exists(obj_fade))
                    {
                        with (instance_create_depth(0, 0, -100, obj_fade))
                        {
                            image_blend = c_white
                            persistent = 1
                            spec = 5
                            image_alpha = 0
                        }
                    }
                }
                talkprompt_x = 900
            }
        }
    }
}
