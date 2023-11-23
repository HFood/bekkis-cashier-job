ini_open("temp.ini")
switch ini_read_real("temp", "gmogo", 0)
{
    case 1:
        global.hard = 1
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
    case 2:
        global.hard = 1
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
    case 3:
        global.hard = 1
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
    case 4:
        global.hard = 1
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
    case 5:
        global.hard = 1
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

ini_write_real("temp", "gmogo", 0)
ini_close()
