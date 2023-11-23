switch spec
{
    case 1:
        if instance_exists(obj_customer)
            instance_deactivate_object(obj_customer)
        if (pause > 0)
            pause--
        else if (image_alpha < 1.5)
            image_alpha += spd
        else
        {
            with (obj_game)
            {
                ini_open("bcj.ini")
                if (global.goal != 999)
                {
                    if (ini_read_real("story", "daysdone", 0) < global.day)
                    {
                        ini_write_real("story", "daysdone", global.day)
                        global.daysdone = global.day
                    }
                }
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
                else if ((_pat / ds_list_size(global.patience_gl)) >= 60)
                    scorr += 5
                else if ((_pat / ds_list_size(global.patience_gl)) >= 50)
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
            }
            room_goto(rm_results)
        }
        break
    case 2:
        if (image_alpha < 1.1)
            image_alpha += spd
        else
            game_restart()
        break
    case 3:
        if (image_alpha < 1.1)
            image_alpha += spd
        else
        {
            game_restart()
            with (obj_menu)
                section = "story"
        }
        break
    case 4:
        if (image_alpha > 0)
            image_alpha -= spd
        else
            instance_destroy()
        break
    case 5:
        switch way
        {
            case 1:
                if (image_alpha < 1.1)
                    image_alpha += spd
                else
                {
                    with (obj_game)
                    {
                        mottotime = 1
                        ds_list_add(motto_list, load_string_json(global.lang, "motto1"))
                        ds_list_add(motto_list, load_string_json(global.lang, "motto2"))
                        ds_list_add(motto_list, load_string_json(global.lang, "motto3"))
                        ds_list_add(motto_list, load_string_json(global.lang, "motto4"))
                        ds_list_add(motto_list, load_string_json(global.lang, "motto5"))
                        ds_list_add(motto_list, load_string_json(global.lang, "motto6"))
                        ds_list_add(motto_list, load_string_json(global.lang, "motto7"))
                        ds_list_add(motto_list, load_string_json(global.lang, "motto8"))
                    }
                    way = -1
                }
                break
            case -1:
                if (image_alpha > 0)
                    image_alpha -= spd
                else
                    instance_destroy()
                break
        }

        break
    case 6:
        if (image_alpha < 1.1)
            image_alpha += spd
        else
            room_goto(rm_credits)
        break
    case 7:
        if (image_alpha < 1.8)
            image_alpha += spd
        else
            room_goto(rm_credits)
        break
    case 8:
        if (image_alpha < 1.8)
            image_alpha += spd
        else
            game_restart()
        break
}

