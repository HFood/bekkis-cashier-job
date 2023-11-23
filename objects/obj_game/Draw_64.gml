draw_set_font(global.font)
draw_set_color(c_black)
draw_set_halign(fa_right)
if (global.pause == 1)
{
    draw_sprite_ext(spr_promo1, 0, 800, 600, 2, 2, 0, c_white, 1)
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    draw_set_color(c_black)
    draw_text_transformed(800, 300, load_string_json(global.lang, "paused"), 3, 3, 0)
}
else if (room == rm_credits || room == rm_gameover)
{
}
else if (room == rm_endcutscene)
{
    if (mottotime == 1)
    {
        draw_sprite_ext(spr_bg_end2, 0, 800, 600, 2, 2, 0, c_white, 1)
        switch ds_list_size(motto_list)
        {
            case 8:
            case 7:
                draw_sprite_ext(spr_endcutscene1, endcutimg, 800, 600, 2, 2, 0, c_white, 1)
                break
            case 6:
            case 5:
            case 4:
                draw_sprite_ext(spr_endcutscene2, endcutimg, 800, 600, 2, 2, 0, c_white, 1)
                break
            case 3:
            case 2:
            case 1:
            default:
                draw_sprite_ext(spr_endcutscene3, endcutimg, 800, 600, 2, 2, 0, c_white, 1)
                break
        }

        if (endcutimg < 2)
            endcutimg += 0.2
        else
            endcutimg = 0
    }
    if (ds_list_size(motto_list) > 0)
    {
        if (motto_pause < 300)
            motto_pause++
        else
        {
            ds_list_delete(motto_list, 0)
            if (ds_list_size(motto_list) == 0)
            {
                with (instance_create_depth(0, 0, -100, obj_fade))
                {
                    depth = -100
                    image_blend = c_white
                    spec = 7
                }
            }
            motto_pause = 0
        }
        draw_set_halign(fa_center)
        draw_set_color(c_black)
        draw_rectangle(0, (56 - string_height(ds_list_find_value(motto_list, 0))), 1600, (64 + string_height(ds_list_find_value(motto_list, 0))), false)
        draw_set_color(c_white)
        draw_rectangle(0, (60 - string_height(ds_list_find_value(motto_list, 0))), 1600, (60 + string_height(ds_list_find_value(motto_list, 0))), false)
        draw_set_color(c_black)
        draw_text_transformed(800, 60, ds_list_find_value(motto_list, 0), 1.5, 1.5, 0)
    }
    if (hudimg < 2)
        hudimg += 0.2
    else
        hudimg = 0
    if (ds_list_size(talkprompt) > 0 && talkprompt_pause == 0)
        draw_sprite(ds_list_find_value(faceprompt, 0), hudimg, 0, 0)
}
else if (room != rm_results && room != rm_menu)
{
    if instance_exists(obj_fade)
    {
        if (obj_fade.spec == 1)
        {
            draw_sprite_ext(spr_nicejob, 0, 800, 600, (2 + nicej_scale), (2 - nicej_scale), 0, c_white, 1)
            if (nicej_scale > 0)
                nicej_scale -= 0.05
        }
    }
    if (hudimg < 2)
        hudimg += 0.2
    else
        hudimg = 0
    if (ds_list_size(talkprompt) > 0 && talkprompt_pause == 0)
        draw_sprite(ds_list_find_value(faceprompt, 0), hudimg, 0, 0)
    else if (obj_cursor.grabbing == 1)
        draw_sprite(spr_hud_hold, hudimg, 0, 0)
    else
        draw_sprite(spr_hud_idle, hudimg, 0, 0)
    var _col = make_color_rgb(color, 0, 0)
    if (color > 0)
        color -= 5
    if (global.debug == 1)
    {
        draw_text_transformed(50, 1180, fps, 1, 1, 0)
        if (global.time_s >= 10)
            draw_text_transformed(200, 1180, ((string(global.time_m) + ":") + string(global.time_s)), 1, 1, 0)
        else
            draw_text_transformed(200, 1180, ((string(global.time_m) + ":0") + string(global.time_s)), 1, 1, 0)
    }
    if (global.cash >= 0)
        draw_set_color(_col)
    else
        draw_set_color(c_red)
    if (room == rm_test && global.day != 0)
    {
        draw_text_transformed(1580, 60, ("$" + string(global.cash)), 2, 2, 0)
        if (obj_cursor.x > 700 && obj_cursor.y < 50 && global.goal != 99999)
        {
            draw_set_color(c_black)
            draw_set_alpha(0.5)
            draw_text_transformed(1580, 130, ("$" + string(global.goal)), 2, 2, 0)
            draw_set_alpha(1)
        }
    }
    if (global.hard == 1)
    {
        switch global.hp
        {
            case 0:
                draw_sprite_ext(spr_gui_heart, 1, 160, 245, 1, 1, 0, c_gray, 0.5)
                draw_sprite_ext(spr_gui_heart, 1, 200, 245, 1, 1, 0, c_gray, 0.5)
                draw_sprite_ext(spr_gui_heart, 1, 240, 245, 1, 1, 0, c_gray, 0.5)
                break
            case 1:
                draw_sprite_ext(spr_gui_heart, 0, 160, 245, 1, 1, 0, c_red, 1)
                draw_sprite_ext(spr_gui_heart, 1, 200, 245, 1, 1, 0, c_gray, 0.5)
                draw_sprite_ext(spr_gui_heart, 1, 240, 245, 1, 1, 0, c_gray, 0.5)
                break
            case 2:
                draw_sprite_ext(spr_gui_heart, 0, 160, 245, 1, 1, 0, c_red, 1)
                draw_sprite_ext(spr_gui_heart, 0, 200, 245, 1, 1, 0, c_red, 1)
                draw_sprite_ext(spr_gui_heart, 1, 240, 245, 1, 1, 0, c_gray, 0.5)
                break
            case 3:
                draw_sprite_ext(spr_gui_heart, 0, 160, 245, 1, 1, 0, c_red, 1)
                draw_sprite_ext(spr_gui_heart, 0, 200, 245, 1, 1, 0, c_red, 1)
                draw_sprite_ext(spr_gui_heart, 0, 240, 245, 1, 1, 0, c_red, 1)
                break
        }

    }
    draw_set_halign(fa_left)
}
