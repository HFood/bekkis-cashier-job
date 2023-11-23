if (global.daysdone < 5 && txt == "endless")
    curstxt = load_string_json(global.lang, "endless_curstext")
switch txt
{
    case "fullscreen":
        if (obj_menu.fullscreen == 1)
            image_blend = 0x2FE066
        break
    case "debug":
        if (global.debug == 1)
            image_blend = 0x2FE066
        break
}

lg_text = load_string_json(global.lang, txt)
