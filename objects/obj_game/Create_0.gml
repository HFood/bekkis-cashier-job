global.pause = 0
global.patience = 0
global.patience_gl = ds_list_create()
global.rank = "d"
global.cash = 0
global.givencash = 0
global.waiting = 0
global.order = "none"
global.told = 0
global.swich = ds_list_create()
global.swich2 = ds_list_create()
color = 0
global.price_classic = 6
global.price_mini = 3
global.price_bbq = 8
global.price_cheese = 7.5
global.price_big = 9
global.price_xbig = 12
global.price_ultra = 15
talkprompt_surface = -1
talkprompt_x = 900
talkprompt_pause = 0
talkprompt = ds_list_create()
faceprompt = ds_list_create()
talkspdup = 0
nicej_shk = 0
nicej_scale = 0.25
random_set_seed(randomize())
if (instance_number(obj_game) > 1)
    instance_destroy()
jobdone = 0
motto_list = ds_list_create()
motto_pause = 0
hudimg = 0
if (global.day != 0)
{
    instance_deactivate_object(obj_customer)
    deac = 1
}
res_phase = 0
res_pause = 20
scorr = 0
global.errors = 0
global.time_ms = 0
global.time_s = 0
global.time_m = 0
global.tip = 0
depth = -10
asuyna = 0
mottotime = 0
endcutimg = 0
_x = 0
_y = 0
lastcust = spr_customer_0
