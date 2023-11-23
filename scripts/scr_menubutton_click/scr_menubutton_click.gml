function scr_menubutton_click() //gml_Script_scr_menubutton_click
{
    switch txt
    {
        case "options":
            scr_sound(sfx_menu1)
            with (obj_menu)
            {
                section = other.txt
                var lay = layer_get_id("Backgrounds_1")
                var bg = layer_background_get_id(lay)
                layer_background_sprite(bg, spr_bg_menu1b)
            }
            break
        case "story":
        case "credits":
            scr_sound(sfx_menu1)
            with (obj_menu)
                section = other.txt
            break
        case "endless":
            if (global.daysdone >= 5)
            {
                scr_sound(sfx_menu1)
                with (obj_menu)
                    section = other.txt
            }
            break
        case "quit":
            scr_sound(sfx_menu1)
            instance_deactivate_object(all)
            game_end()
            break
        case "fullscreen":
            scr_sound(sfx_menu1)
            if (obj_menu.fullscreen == 1)
            {
                image_blend = c_white
                obj_menu.fullscreen = 0
            }
            else
            {
                image_blend = 0x2FE066
                obj_menu.fullscreen = 1
            }
            break
        case "lang":
            scr_sound(sfx_menu1)
            switch global.lang
            {
                case "en":
                    global.lang = "ru"
                    break
                case "ru":
                    global.lang = "en"
                    break
            }

            with (obj_menu)
            {
                ini_open("bcj.ini")
                lg_textcredits = load_string_json(global.lang, "textcredits")
                lg_pickday = load_string_json(global.lang, "pickday")
                lg_dayinfo_time = load_string_json(global.lang, "dayinfo_time")
                lg_pickdiff = load_string_json(global.lang, "pickdiff")
                lg_options = load_string_json(global.lang, "options")
                ini_close()
            }
            with (obj_menubutton)
            {
                ini_open("bcj.ini")
                lg_text = load_string_json(global.lang, txt)
                ini_close()
            }
            break
        case "debug":
            if (global.daysdone >= 5)
            {
                scr_sound(sfx_menu1)
                if (global.debug == 1)
                {
                    image_blend = c_white
                    global.debug = 0
                }
                else
                {
                    image_blend = 0x2FE066
                    global.debug = 1
                }
            }
            break
        case "hard":
            scr_sound(sfx_menu1)
            if (global.hard == 1)
            {
                image_blend = c_white
                global.hard = 0
            }
            else
            {
                image_blend = c_red
                global.hard = 1
            }
            break
        case "music_vol1":
            switch image_index
            {
                case 0:
                    scr_sound(sfx_menu1)
                    if (obj_menu.music_vol > 0)
                        obj_menu.music_vol -= 0.05
                    break
                case 1:
                    scr_sound(sfx_menu2)
                    if (obj_menu.music_vol < 1)
                        obj_menu.music_vol += 0.05
                    break
            }

            break
        case "sfx_vol1":
            switch image_index
            {
                case 0:
                    scr_sound(sfx_menu1)
                    if (obj_menu.sfx_vol > 0)
                        obj_menu.sfx_vol -= 0.05
                    break
                case 1:
                    scr_sound(sfx_menu2)
                    if (obj_menu.sfx_vol < 1)
                        obj_menu.sfx_vol += 0.05
                    break
            }

            break
        case "master_vol1":
            switch image_index
            {
                case 0:
                    scr_sound(sfx_menu1)
                    if (obj_menu.master_vol > 0)
                        obj_menu.master_vol -= 0.05
                    break
                case 1:
                    scr_sound(sfx_menu2)
                    if (obj_menu.master_vol < 1)
                        obj_menu.master_vol += 0.05
                    break
            }

            break
        case "curssize1":
            switch image_index
            {
                case 0:
                    scr_sound(sfx_menu1)
                    if (global.curssize > 0.2)
                        global.curssize -= 0.05
                    break
                case 1:
                    scr_sound(sfx_menu2)
                    if (global.curssize < 5)
                        global.curssize += 0.05
                    break
            }

            break
        case "cr_skin":
            scr_sound(sfx_menu2)
            global.cr_skin++
            if (global.cr_skin > 9)
                global.cr_skin = 0
            break
        case "tutor":
            audio_stop_sound(global.music)
            global.music = audio_play_sound(mu_sylvester, 1, true)
            audio_sound_loop_start(global.music, 2.3)
            audio_sound_loop_end(global.music, 230.3)
            scr_sound(sfx_menu2)
            global.day = 0
            room_goto(rm_test)
            break
        case "day1":
            audio_stop_sound(global.music)
            global.music = audio_play_sound(mu_helpbook, 1, true)
            audio_sound_loop_start(global.music, 3.1)
            audio_sound_loop_end(global.music, 179.1)
            scr_sound(sfx_menu2)
            global.day = 1
            global.goal = 50
            scr_message_unimportant(load_string_json(global.lang, "day1"), spr_hud_coach_talk)
            room_goto(rm_test)
            break
        case "day2":
            if (global.daysdone >= 1)
            {
                audio_stop_sound(global.music)
                global.music = audio_play_sound(mu_peanut, 1, true)
                audio_sound_loop_start(global.music, 12)
                audio_sound_loop_end(global.music, 105)
                scr_sound(sfx_menu2)
                global.day = 2
                global.goal = 80
                scr_message_unimportant(load_string_json(global.lang, "day2"), spr_hud_coach_talk)
                room_goto(rm_test)
            }
            break
        case "day3":
            if (global.daysdone >= 2)
            {
                audio_stop_sound(global.music)
                global.music = audio_play_sound(mu_bonjour, 1, true)
                audio_sound_loop_start(global.music, 12.52)
                audio_sound_loop_end(global.music, 163.1)
                scr_sound(sfx_menu2)
                global.day = 3
                global.goal = 100
                scr_message_unimportant(load_string_json(global.lang, "day3"), spr_hud_coach_talk)
                room_goto(rm_test)
            }
            break
        case "day4":
            if (global.daysdone >= 3)
            {
                audio_stop_sound(global.music)
                global.music = audio_play_sound(mu_booossa, 1, true)
                audio_sound_loop_start(global.music, 0.4)
                audio_sound_loop_end(global.music, 180.4)
                scr_sound(sfx_menu2)
                global.day = 4
                global.goal = 110
                scr_message_unimportant(load_string_json(global.lang, "day4"), spr_hud_coach_talk)
                room_goto(rm_test)
            }
            break
        case "day5":
            if (global.daysdone >= 4)
            {
                audio_stop_sound(global.music)
                global.music = audio_play_sound(mu_strawberrycake, 1, true)
                audio_sound_loop_start(global.music, 34.2)
                audio_sound_loop_end(global.music, 278.8)
                scr_sound(sfx_menu2)
                global.day = 5
                global.goal = 125
                scr_message_unimportant(load_string_json(global.lang, "day5"), spr_hud_coach_talk)
                room_goto(rm_test)
            }
            break
        case "resume":
            scr_sound(sfx_menu2)
            global.pause = 0
            break
        case "tomenu":
            scr_sound(sfx_menu2)
            if (!instance_exists(obj_fade))
            {
                with (instance_create_depth(x, y, -10000, obj_fade))
                {
                    spd = 0.1
                    depth = -1000
                    spec = 2
                }
            }
            break
        case "gameover_retry":
            game_restart()
            ini_open("temp.ini")
            ini_write_real("temp", "gmogo", global.day)
            ini_close()
            break
        case "gameover_menu":
            scr_sound(sfx_menu2)
            if (!instance_exists(obj_fade))
            {
                with (instance_create_depth(x, y, -10000, obj_fade))
                {
                    spd = 0.1
                    depth = -1000
                    spec = 2
                }
            }
            break
        case "diff1":
            audio_stop_sound(global.music)
            global.music = audio_play_sound(mu_helpbook, 1, true)
            audio_sound_loop_start(global.music, 3.1)
            audio_sound_loop_end(global.music, 179.1)
            scr_sound(sfx_menu2)
            global.day = 1
            global.goal = 99999
            scr_message_unimportant(load_string_json(global.lang, "arcadestart"), spr_hud_coach_talk)
            room_goto(rm_test)
            break
        case "diff2":
            audio_stop_sound(global.music)
            global.music = audio_play_sound(mu_peanut, 1, true)
            audio_sound_loop_start(global.music, 12)
            audio_sound_loop_end(global.music, 105)
            scr_sound(sfx_menu2)
            global.day = 2
            global.goal = 99999
            scr_message_unimportant(load_string_json(global.lang, "arcadestart"), spr_hud_coach_talk)
            room_goto(rm_test)
            break
        case "diff3":
            audio_stop_sound(global.music)
            global.music = audio_play_sound(mu_bonjour, 1, true)
            audio_sound_loop_start(global.music, 12.52)
            audio_sound_loop_end(global.music, 163.1)
            scr_sound(sfx_menu2)
            global.day = 3
            global.goal = 99999
            scr_message_unimportant(load_string_json(global.lang, "arcadestart"), spr_hud_coach_talk)
            room_goto(rm_test)
            break
        case "diff4":
            audio_stop_sound(global.music)
            global.music = audio_play_sound(mu_booossa, 1, true)
            audio_sound_loop_start(global.music, 0.4)
            audio_sound_loop_end(global.music, 180.4)
            scr_sound(sfx_menu2)
            global.day = 4
            global.goal = 99999
            scr_message_unimportant(load_string_json(global.lang, "arcadestart"), spr_hud_coach_talk)
            room_goto(rm_test)
            break
        case "diff5":
            audio_stop_sound(global.music)
            global.music = audio_play_sound(mu_strawberrycake, 1, true)
            audio_sound_loop_start(global.music, 34.2)
            audio_sound_loop_end(global.music, 278.8)
            scr_sound(sfx_menu2)
            global.day = 5
            global.goal = 99999
            scr_message_unimportant(load_string_json(global.lang, "arcadestart"), spr_hud_coach_talk)
            room_goto(rm_test)
            break
    }

}

