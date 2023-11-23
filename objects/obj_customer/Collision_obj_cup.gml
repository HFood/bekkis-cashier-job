if (obj_cursor.grabbing == 1 && mouse_check_button_pressed(mb_right) && global.told == 1)
{
    if (gotdrink == 0)
    {
        var _yes = 0
        switch drinck
        {
            case "cola":
                if (other.color == 927361 && other.perc > 60 && global.drink_ice == other.hasice)
                    _yes = 1
                break
            case "fantola":
                if (other.color == 13109759 && other.perc > 60 && global.drink_ice == other.hasice)
                    _yes = 1
                break
            case "sprite":
                if (other.color == 3604382 && other.perc > 60 && global.drink_ice == other.hasice)
                    _yes = 1
                break
            case "fanta":
                if (other.color == 1608447 && other.perc > 60 && global.drink_ice == other.hasice)
                    _yes = 1
                break
        }

        if (_yes == 1 && gotfood == 1)
        {
            while (global.givencash < wantedcash)
                scr_customer_cash()
        }
        if (_yes == 1)
        {
            instance_destroy(other)
            gotdrink = 1
            takeaway = 1
        }
    }
}
