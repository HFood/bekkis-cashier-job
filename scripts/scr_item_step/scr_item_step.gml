function scr_item_step() //gml_Script_scr_item_step
{
    if (global.pause == 0)
    {
        depth = (-y)
        if (grabbed == 0)
        {
            if (place_meeting(x, y, obj_table) && (!(place_meeting(x, y, obj_cashreg))))
            {
            }
            else
            {
                x += hsp
                y += vsp
                vsp += 1
            }
        }
        else
        {
            depth = -801
            hsp = 0
            vsp = 0
            x = (obj_cursor.x + xoffset)
            y = (obj_cursor.y + yoffset)
        }
        if (place_meeting(x, y, obj_table) && (!(place_meeting(x, y, obj_cashreg))))
        {
            if (object_index == obj_money && notl > 0)
                notl--
            else
            {
                if (land == 0)
                {
                    switch object_index
                    {
                        case obj_money:
                            if (flying == 1)
                                flying = 0
                            if (value < 1)
                                scr_sound(choose(sfx_coin1, sfx_coin2))
                            else
                                scr_sound(choose(sfx_note1, sfx_note2, sfx_note3))
                            break
                        case obj_cup:
                            scr_sound(sfx_cup)
                            audio_sound_pitch(sfx_cup, random_range(0.95, 1.02))
                            break
                        case obj_ingredient:
                            if (flying == 1)
                                flying = 0
                            break
                    }

                    land = 1
                }
                vsp = 0
                hsp = 0
            }
        }
        x = clamp(x, 64, 736)
        y = clamp(y, 64, 536)
        if (object_index != obj_money && object_index != obj_bottle)
            persistent = grabbed
    }
}

