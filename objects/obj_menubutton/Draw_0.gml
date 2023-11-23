if ((txt == "day5" && global.daysdone < 4) || (txt == "day4" && global.daysdone < 3) || (txt == "day3" && global.daysdone < 2) || (txt == "day2" && global.daysdone < 1) || (txt == "debug" && global.daysdone < 5))
    draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, c_white, 0.35)
else
{
    if collision_point(obj_cursor.x, obj_cursor.y, id, 1, 0)
        peliscus = 0.05
    else
        peliscus = 0
    draw_sprite_ext(sprite_index, image_index, x, y, (image_xscale + peliscus), (image_yscale + peliscus), image_angle, image_blend, image_alpha)
}
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
if ((txt == "endless" && global.daysdone < 5) || (txt == "debug" && global.daysdone < 5))
    draw_set_alpha(0.35)
else
    draw_set_alpha(1)
if (sprite_index != spr_menubutton2 && sprite_index != spr_days && sprite_index != spr_tutor && sprite_index != spr_hard)
{
    switch txt
    {
        case "music_vol":
            if (obj_menu.music_vol == 0)
                draw_text_transformed(x, y, (lg_text + "(0)"), (0.75 + peliscus), (0.75 + peliscus), 0)
            else
                draw_text_transformed(x, y, (((lg_text + "(") + string_format((obj_menu.music_vol * 100), 0, 0)) + ")"), (0.75 + peliscus), (0.75 + peliscus), 0)
            break
        case "sfx_vol":
            if (obj_menu.sfx_vol == 0)
                draw_text_transformed(x, y, (lg_text + "(0)"), (0.75 + peliscus), (0.75 + peliscus), 0)
            else
                draw_text_transformed(x, y, (((lg_text + "(") + string_format((obj_menu.sfx_vol * 100), 0, 0)) + ")"), (0.75 + peliscus), (0.75 + peliscus), 0)
            break
        case "master_vol":
            if (obj_menu.master_vol == 0)
                draw_text_transformed(x, y, (lg_text + "(0)"), (0.75 + peliscus), (0.75 + peliscus), 0)
            else
                draw_text_transformed(x, y, (((lg_text + "(") + string_format((obj_menu.master_vol * 100), 0, 0)) + ")"), (0.75 + peliscus), (0.75 + peliscus), 0)
            break
        case "curssize":
            draw_text_transformed(x, y, (((lg_text + "(") + string_format((global.curssize * 100), 0, 0)) + ")"), (0.75 + peliscus), (0.75 + peliscus), 0)
            break
        default:
            draw_text_transformed(x, y, lg_text, (1 + peliscus), (1 + peliscus), 0)
            break
    }

}
if (txt == "cr_skin")
{
    var _subtxt = ""
    switch global.cr_skin
    {
        case 0:
            _subtxt = "Original"
            break
        case 1:
            _subtxt = "Soft Pink"
            break
        case 2:
            _subtxt = "War Camouflage"
            break
        case 3:
            _subtxt = "Peach Sunset"
            break
        case 4:
            _subtxt = "Pizza Frenzy"
            break
        case 5:
            _subtxt = "Baby Polkadot"
            break
        case 6:
            _subtxt = "Death Machinery"
            break
        case 7:
            _subtxt = "Antiques"
            break
        case 8:
            _subtxt = "Proud Worker"
            break
        case 9:
            _subtxt = "You don't say"
            break
    }

    draw_text_transformed(x, (y + 32), _subtxt, (0.5 + peliscus), (0.5 + peliscus), 0)
}
switch txt
{
    case "day1":
        if (global.rank1 != 5)
            draw_sprite_ext(spr_days_rank, global.rank1, x, y, (image_xscale + peliscus), (image_yscale + peliscus), image_angle, image_blend, image_alpha)
        break
    case "day2":
        if (global.rank2 != 5)
            draw_sprite_ext(spr_days_rank, global.rank2, x, y, (image_xscale + peliscus), (image_yscale + peliscus), image_angle, image_blend, image_alpha)
        break
    case "day3":
        if (global.rank3 != 5)
            draw_sprite_ext(spr_days_rank, global.rank3, x, y, (image_xscale + peliscus), (image_yscale + peliscus), image_angle, image_blend, image_alpha)
        break
    case "day4":
        if (global.rank4 != 5)
            draw_sprite_ext(spr_days_rank, global.rank4, x, y, (image_xscale + peliscus), (image_yscale + peliscus), image_angle, image_blend, image_alpha)
        break
    case "day5":
        if (global.rank5 != 5)
            draw_sprite_ext(spr_days_rank, global.rank5, x, y, (image_xscale + peliscus), (image_yscale + peliscus), image_angle, image_blend, image_alpha)
        break
}

