if (obj_menu.section != section)
{
    x = -1000
    y = -1000
}
else
{
    x = startx
    y = starty
}
if (place_meeting(x, y, obj_cursor) && obj_menu.section == "story" && txt != "tutor")
{
    with (obj_menu)
        dayinfo = other.txt
}
