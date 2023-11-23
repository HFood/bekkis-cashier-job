var _txt = "NO ORDERS"
draw_self()
draw_set_color(c_black)
draw_set_halign(fa_center)
if (global.told == 1)
{
    if (ds_list_size(global.swich2) > 0)
    {
        draw_text_transformed(280, 260, txt1, scale, scale, 0)
        draw_text_transformed(480, 260, txt2, scale, scale, 0)
    }
    else
        draw_text_transformed(380, 260, txt1, scale, scale, 0)
    switch global.order
    {
        case "classic":
            _txt = "BREAD\nPICKLES\nCHEESE\nHAM\nBREAD"
            break
        case "mini":
            _txt = "BREAD\nCHEESE\nBACON\nBREAD"
            break
        case "bbq":
            _txt = "BREAD\nBACON\nPICKLES\nHAM\nCHEESE\nBREAD"
            break
        case "cheese":
            _txt = "BREAD\nCHEESE\nCHEESE\nCHEESE\nBREAD"
            break
        case "big":
            _txt = "BREAD\nPICKLES\nHAM\nCHEESE\nBACON\nCHEESE\nBREAD"
            break
        case "ultra":
            _txt = "BREAD\nBACON\nCHEESE\nPICKLES\nHAM\nBACON\nCHEESE\nHAM\nBREAD"
            break
    }

}
