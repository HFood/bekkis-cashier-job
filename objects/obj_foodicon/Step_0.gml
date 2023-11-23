if (global.day > 1)
{
    if instance_exists(obj_kitch)
        y = (starty + obj_kitch.scroll_y)
    else
        y = starty
}
if (place_meeting(x, y, obj_cursor) && mouse_check_button_pressed(mb_left))
{
    with (obj_cursor)
    {
        if (!(place_meeting(x, y, obj_item)))
        {
            with (other)
            {
                if (food == "cup")
                {
                    with (instance_create_depth(x, y, 1, obj_cup))
                    {
                        with (obj_cursor)
                        {
                            var _item = instance_place(x, y, obj_item)
                            _item.grabbed = 1
                            _item.xoffset = (_item.x - x)
                            _item.yoffset = (_item.y - y)
                            grabid = _item.id
                            grabbing = 1
                        }
                    }
                }
                else if (food != "trash")
                {
                    with (instance_create_depth(x, y, 1, obj_ingredient))
                    {
                        food = other.food
                        with (obj_cursor)
                        {
                            _item = instance_place(x, y, obj_item)
                            _item.grabbed = 1
                            _item.xoffset = (_item.x - x)
                            _item.yoffset = (_item.y - y)
                            grabid = _item.id
                            grabbing = 1
                        }
                        switch food
                        {
                            case "bread":
                                image_index = 0
                                break
                            case "cheese":
                                image_index = 1
                                break
                            case "ham":
                                image_index = 2
                                break
                            case "cucumber":
                                image_index = 3
                                break
                            case "bacon":
                                image_index = 4
                                break
                            case "lettuce":
                                image_index = 5
                                break
                            case "fish":
                                image_index = 6
                                break
                            case "pepper":
                                image_index = 7
                                break
                            case "ketchup":
                                image_index = 8
                                break
                            case "mayo":
                                image_index = 9
                                break
                            case "toast":
                                if (flying == 1)
                                {
                                    sprite_index = spr_toast
                                    image_angle += 12
                                }
                                else
                                {
                                    sprite_index = spr_ingredients
                                    image_angle = 0
                                    image_index = 10
                                }
                                break
                            case "ice":
                                sprite_index = spr_ice
                                break
                        }

                    }
                }
                else
                    gatcha = 1
            }
        }
    }
}
if (place_meeting(x, y, obj_cursor) && mouse_check_button(mb_left) && food == "trash")
{
    if (gatcha == 1)
    {
        if (hold > 0)
            hold -= 10
        else
        {
            instance_destroy(obj_ingredient)
            instance_destroy(obj_cup)
            hold = 255
            gatcha = 0
        }
    }
}
else
{
    hold = 255
    gatcha = 0
}
switch food
{
    case "trash":
        image_index = 0
        break
    case "bread":
        image_index = 1
        break
    case "cheese":
        image_index = 2
        break
    case "ham":
        image_index = 3
        break
    case "cucumber":
        image_index = 4
        break
    case "bacon":
        image_index = 5
        break
    case "lettuce":
        image_index = 6
        break
    case "fish":
        image_index = 7
        break
    case "pepper":
        image_index = 8
        break
    case "cup":
        image_index = 9
        break
    case "ice":
        image_index = 10
        break
}

