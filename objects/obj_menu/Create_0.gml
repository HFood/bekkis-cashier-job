section = "menu"
global.font = fnt_normal1
global.day = 1
global.hard = 0
global.hp = 3
ini_open("bcj.ini")
music_vol = ini_read_real("options", "music_vol", 0.5)
sfx_vol = ini_read_real("options", "sfx_vol", 0.5)
master_vol = ini_read_real("options", "master_vol", 1)
fullscreen = ini_read_real("options", "fullscreen", 0)
global.lang = ini_read_string("options", "lang", "en")
global.daysdone = ini_read_real("story", "daysdone", 0)
global.debug = ini_read_real("options", "debug", 0)
global.curssize = ini_read_real("options", "curssize", 1)
global.cr_skin = ini_read_real("fun", "cr_skin", 0)
dayinfo = "none"
global.rank1 = ini_read_real("ranks", "day1", 5)
global.rank2 = ini_read_real("ranks", "day2", 5)
global.rank3 = ini_read_real("ranks", "day3", 5)
global.rank4 = ini_read_real("ranks", "day4", 5)
global.rank5 = ini_read_real("ranks", "day5", 5)
global.time_m1 = ini_read_real("time_m", "day1", 0)
global.time_s1 = ini_read_real("time_m", "day1", -1)
global.time_m2 = ini_read_real("time_m", "day2", 0)
global.time_s2 = ini_read_real("time_m", "day2", -1)
global.time_m3 = ini_read_real("time_m", "day3", 0)
global.time_s3 = ini_read_real("time_m", "day3", -1)
global.time_m4 = ini_read_real("time_m", "day4", 0)
global.time_s4 = ini_read_real("time_m", "day4", -1)
global.time_m5 = ini_read_real("time_m", "day5", 0)
global.time_s5 = ini_read_real("time_m", "day5", -1)
ini_close()
audio_group_load(sfx_menu1)
audio_group_load(sfx_drawer2)
global.music = -4
asorja = 0
menu_title = 1
bounc1y = 0.5
bounc1 = 0
lg_textcredits = load_string_json(global.lang, "textcredits")
lg_pickday = load_string_json(global.lang, "pickday")
lg_dayinfo_time = load_string_json(global.lang, "dayinfo_time")
lg_pickdiff = load_string_json(global.lang, "pickdiff")
lg_options = load_string_json(global.lang, "options")
random_set_seed(randomize())
var lay = layer_get_id("Background")
var bg = layer_background_get_id(lay)
layer_background_sprite(bg, choose(spr_bg_menu_col1, spr_bg_menu_col2, spr_bg_menu_col3, spr_bg_menu_col4))
audio_sound_gain(mu_strawberrycake, 1, 0)
