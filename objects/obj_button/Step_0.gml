if (collision_point(obj_cursor.x, obj_cursor.y, id, 1, 0) && mouse_check_button_pressed(mb_left) && room != rm_endcutscene)
{
    scr_sound(choose(sfx_button1, sfx_button2, sfx_button3))
    switch digit
    {
        case "x":
            obj_cashreg.total = ""
            break
        case "0":
            if (obj_cashreg.total != "" && string_length(obj_cashreg.total) < 6)
                obj_cashreg.total = (string(obj_cashreg.total) + string(digit))
            break
        case ".":
            if (string_lettersdigits(obj_cashreg.total) == obj_cashreg.total && string_length(obj_cashreg.total) < 6)
            {
                if (obj_cashreg.total == "")
                    obj_cashreg.total = ("0" + string(digit))
                else
                    obj_cashreg.total = (string(obj_cashreg.total) + string(digit))
            }
            break
        default:
            if (string_length(obj_cashreg.total) < 6)
                obj_cashreg.total = (string(obj_cashreg.total) + string(digit))
            break
    }

    image_index = 1
}
else
    image_index = 0
