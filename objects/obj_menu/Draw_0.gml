draw_set_halign(fa_center)
draw_set_valign(fa_middle)
switch section
{
    case "menu":
        draw_sprite_ext(spr_bcj_logo2, 0, 400, 130, 1, 1, 0, c_white, 1)
        draw_sprite_ext(spr_bcj_logo1, 0, 400, 130, 1, 1, 0, c_white, 1)
        draw_sprite_ext(spr_bcj_logo0, 0, 400, 130, (0.25 + bounc1y), (0.25 + bounc1y), 0, c_white, 1)
        draw_set_halign(fa_left)
        draw_set_valign(fa_bottom)
        draw_text_transformed(15, 590, "V.7.1", 0.5, 0.5, 0)
        draw_set_halign(fa_center)
        draw_set_valign(fa_middle)
        break
    case "credits":
        draw_text_transformed(400, 300, lg_textcredits, 1, 1, 0)
        break
    case "story":
        draw_text_transformed(400, 40, lg_pickday, 1, 1, 0)
        if (dayinfo != "none")
        {
            ini_open("bcj.ini")
            if (ini_read_real("time_s", dayinfo, -1) == -1)
                draw_text_transformed(400, 520, (lg_dayinfo_time + "--:--"), 1, 1, 0)
            else if (ini_read_real("time_s", dayinfo, -1) > 9)
                draw_text_transformed(400, 520, (((lg_dayinfo_time + string(ini_read_real("time_m", dayinfo, 0))) + ":") + string(ini_read_real("time_s", dayinfo, 0))), 1, 1, 0)
            else
                draw_text_transformed(400, 520, (((lg_dayinfo_time + string(ini_read_real("time_m", dayinfo, 0))) + ":0") + string(ini_read_real("time_s", dayinfo, 0))), 1, 1, 0)
            ini_close()
        }
        break
    case "endless":
        draw_text_transformed(400, 40, lg_pickdiff, 1, 1, 0)
        break
    case "options":
        draw_text_transformed(400, 40, lg_options, 1, 1, 0)
        break
}

