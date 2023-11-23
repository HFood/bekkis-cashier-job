var _txt = ""
if (global.told == 1)
{
    switch global.drink
    {
        case "cola":
            _txt = load_string_json(global.lang, "drink_cola")
            break
        case "fantola":
            _txt = load_string_json(global.lang, "drink_fantola")
            break
        case "sprite":
            _txt = load_string_json(global.lang, "drink_sprite")
            break
        case "fanta":
            _txt = load_string_json(global.lang, "drink_fanta")
            break
    }

    if (global.drink != "none")
    {
        if (global.drink_ice == 1)
            _txt += (" " + load_string_json(global.lang, "drink_withice"))
    }
}
draw_set_color(c_black)
draw_set_halign(fa_center)
draw_text_transformed(x, y, _txt, 1, 1, 0)
