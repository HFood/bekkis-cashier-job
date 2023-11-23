if (path_position == 1)
{
    if (toexit == 1)
    {
        global.givencash = 0
        if (theone == 1)
        {
            x = -1000
            y = -1000
            with (obj_game)
            {
                if (jobdone == 0)
                {
                    audio_sound_gain(mu_strawberrycake, 0, 10000)
                    ini_open("bcj.ini")
                    ini_write_real("story", "daysdone", (global.daysdone + 1))
                    global.daysdone++
                    if (global.errors < 1)
                        scorr += 10
                    else if (global.errors < 2)
                        scorr += 7.5
                    else if (global.errors < 3)
                        scorr += 5
                    else if (global.errors < 4)
                        scorr += 2.5
                    var _pat = 0
                    for (var i = 0; i < ds_list_size(global.patience_gl); i++)
                        _pat += ds_list_find_value(global.patience_gl, i)
                    if ((_pat / ds_list_size(global.patience_gl)) >= 75)
                        scorr += 10
                    else if ((_pat / ds_list_size(global.patience_gl)) >= 50)
                        scorr += 5
                    else if ((_pat / ds_list_size(global.patience_gl)) >= 30)
                        scorr += 2.5
                    if (scorr >= 20)
                    {
                        global.rank = "a"
                        var _rnk = 0
                    }
                    else if (scorr >= 15)
                    {
                        global.rank = "b"
                        _rnk = 1
                    }
                    else if (scorr >= 10)
                    {
                        global.rank = "c"
                        _rnk = 2
                    }
                    else
                    {
                        global.rank = "d"
                        _rnk = 3
                    }
                    switch global.day
                    {
                        case 1:
                            if (ini_read_real("ranks", "day1", 5) > _rnk)
                                ini_write_real("ranks", "day1", _rnk)
                            if (ini_read_real("time_m", "day1", 0) > global.time_m || ini_read_real("time_s", "day1", -1) == -1)
                            {
                                ini_write_real("time_m", "day1", global.time_m)
                                ini_write_real("time_s", "day1", global.time_s)
                            }
                            else if (ini_read_real("time_m", "day1", 0) == global.time_m)
                            {
                                if (ini_read_real("time_s", "day1", -1) > global.time_s)
                                {
                                    ini_write_real("time_m", "day1", global.time_m)
                                    ini_write_real("time_s", "day1", global.time_s)
                                }
                            }
                            break
                        case 2:
                            if (ini_read_real("ranks", "day2", 5) > _rnk)
                                ini_write_real("ranks", "day2", _rnk)
                            if (ini_read_real("time_m", "day2", 0) > global.time_m || ini_read_real("time_s", "day2", -1) == -1)
                            {
                                ini_write_real("time_m", "day2", global.time_m)
                                ini_write_real("time_s", "day2", global.time_s)
                            }
                            else if (ini_read_real("time_m", "day2", 0) == global.time_m)
                            {
                                if (ini_read_real("time_s", "day2", -1) > global.time_s)
                                {
                                    ini_write_real("time_m", "day2", global.time_m)
                                    ini_write_real("time_s", "day2", global.time_s)
                                }
                            }
                            break
                        case 3:
                            if (ini_read_real("ranks", "day3", 5) > _rnk)
                                ini_write_real("ranks", "day3", _rnk)
                            if (ini_read_real("time_m", "day3", 0) > global.time_m || ini_read_real("time_s", "day3", -1) == -1)
                            {
                                ini_write_real("time_m", "day3", global.time_m)
                                ini_write_real("time_s", "day3", global.time_s)
                            }
                            else if (ini_read_real("time_m", "day3", 0) == global.time_m)
                            {
                                if (ini_read_real("time_s", "day3", -1) > global.time_s)
                                {
                                    ini_write_real("time_m", "day3", global.time_m)
                                    ini_write_real("time_s", "day3", global.time_s)
                                }
                            }
                            break
                        case 4:
                            if (ini_read_real("ranks", "day4", 5) > _rnk)
                                ini_write_real("ranks", "day4", _rnk)
                            if (ini_read_real("time_m", "day4", 0) > global.time_m || ini_read_real("time_s", "day4", -1) == -1)
                            {
                                ini_write_real("time_m", "day4", global.time_m)
                                ini_write_real("time_s", "day4", global.time_s)
                            }
                            else if (ini_read_real("time_m", "day4", 0) == global.time_m)
                            {
                                if (ini_read_real("time_s", "day4", -1) > global.time_s)
                                {
                                    ini_write_real("time_m", "day4", global.time_m)
                                    ini_write_real("time_s", "day4", global.time_s)
                                }
                            }
                            break
                        case 5:
                            if (ini_read_real("ranks", "day5", 5) > _rnk)
                                ini_write_real("ranks", "day5", _rnk)
                            if (ini_read_real("time_m", "day5", 0) > global.time_m || ini_read_real("time_s", "day5", -1) == -1)
                            {
                                ini_write_real("time_m", "day5", global.time_m)
                                ini_write_real("time_s", "day5", global.time_s)
                            }
                            else if (ini_read_real("time_m", "day5", 0) == global.time_m)
                            {
                                if (ini_read_real("time_s", "day5", -1) > global.time_s)
                                {
                                    ini_write_real("time_m", "day5", global.time_m)
                                    ini_write_real("time_s", "day5", global.time_s)
                                }
                            }
                            break
                    }

                    ini_close()
                    room_goto(rm_test)
                    asuyna = 1
                    scr_message_unimportant(load_string_json(global.lang, "end1"), spr_hud_coach_talk)
                    jobdone = 1
                }
            }
        }
        if (global.cash >= global.goal)
        {
            if (global.day == 5 && global.goal != 99999)
            {
                if (theone == 0)
                {
                    with (instance_create_depth(x, y, 1, obj_customer))
                    {
                        sprite_index = spr_customer_fox
                        theone = 1
                        ds_list_clear(global.swich)
                        drinck = "none"
                        gotdrink = 1
                        global.drink = "none"
                        ds_list_clear(global.swich2)
                        ds_list_add(global.swich, "bread")
                        ds_list_add(global.swich, "ketchup")
                        ds_list_add(global.swich, "ham")
                        ds_list_add(global.swich, "bacon")
                        ds_list_add(global.swich, "pepper")
                        ds_list_add(global.swich, "cheese")
                        ds_list_add(global.swich, "fish")
                        ds_list_add(global.swich, "mayo")
                        ds_list_add(global.swich, "lettuce")
                        ds_list_add(global.swich, "cucumber")
                        ds_list_add(global.swich, "bread")
                        wantedcash = 25
                    }
                    instance_destroy()
                }
            }
            else if (!instance_exists(obj_fade))
            {
                audio_sound_gain(global.music, 0, 7000)
                instance_create_depth(0, 0, 0, obj_fade)
            }
        }
        else
        {
            instance_create_depth(x, y, 1, obj_customer)
            instance_destroy()
        }
    }
    else if (global.waiting == 0)
        global.waiting = 1
}
if (path_position > 0.8 && toexit == 0)
{
    if (global.day == 0)
    {
        if (obj_tutorial.phase > 0)
            instance_activate_object(cloud)
    }
    else
        instance_activate_object(cloud)
}
