audio_set_master_gain(0, master_vol)
audio_group_set_gain(sfx_menu1, music_vol, 0)
audio_group_set_gain(sfx_drawer2, sfx_vol, 0)
window_set_fullscreen(fullscreen)
ini_open("bcj.ini")
ini_write_real("options", "music_vol", music_vol)
ini_write_real("options", "sfx_vol", sfx_vol)
ini_write_real("options", "master_vol", master_vol)
ini_write_real("options", "fullscreen", fullscreen)
ini_write_string("options", "lang", global.lang)
ini_write_real("options", "debug", global.debug)
ini_write_real("options", "curssize", global.curssize)
ini_write_real("fun", "cr_skin", global.cr_skin)
ini_close()
if (!global.music)
{
    global.music = audio_play_sound(mu_howmanycats, 1, true)
    audio_sound_loop_start(global.music, 12)
    audio_sound_loop_end(global.music, 216)
}
if (menu_title > 0)
{
    bounc1 += 0.007
    bounc1y += bounc1
    if (bounc1y >= 0.75 && bounc1 > 0)
    {
        if (bounc1 < 0.05)
        {
            bounc1y = 0.75
            bounc1 = 0
        }
        else
            bounc1 = ((-bounc1) / 1.5)
    }
    bounc1y = clamp(bounc1y, 0, 0.75)
}
