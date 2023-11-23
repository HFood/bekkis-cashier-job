if (room != rm_results && (!instance_exists(obj_fade)) && room != rm_menu && room != rm_endcutscene && jobdone == 0 && room != rm_credits && room != rm_gameover)
{
    if (global.pause == 1)
    {
        var _lay = layer_get_id("Scroller")
        var _bg = layer_background_get_id(_lay)
        layer_background_visible(_bg, false)
        global.pause = 0
    }
    else
    {
        _lay = layer_get_id("Scroller")
        _bg = layer_background_get_id(_lay)
        layer_background_visible(_bg, true)
        with (instance_create_depth(400, 350, -100, obj_pausebutton))
            txt = "resume"
        with (instance_create_depth(400, 450, -100, obj_pausebutton))
            txt = "tomenu"
        global.pause = 1
    }
}
