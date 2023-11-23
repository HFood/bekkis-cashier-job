if (grabid != noone && (!instance_exists(grabid)))
{
    pressing = 0
    grabbing = 0
    grabid = noone
}
if mouse_check_button_pressed(mb_left)
{
    pressing = 1
    if (grabbing == 0)
    {
        if place_meeting(x, y, obj_item)
        {
            var _item = instance_place(x, y, obj_item)
            _item.grabbed = 1
            _item.xoffset = (_item.x - x)
            _item.yoffset = (_item.y - y)
            grabid = _item.id
            grabbing = 1
            if (_item.object_index == obj_bottle)
                _item.uprise = 0
            if (_item.object_index == obj_ingredient || _item.object_index == obj_money)
            {
                if (_item.flying == 1)
                    _item.flying = 0
            }
            if (_item.object_index == obj_money)
            {
                if (_item.flying == 1)
                    _item.flying = 0
                _item.not1 = 0
            }
        }
    }
}
if mouse_check_button_released(mb_left)
{
    pressing = 0
    if (grabbing == 1 && instance_exists(grabid))
    {
        with (grabid)
        {
            direction = point_direction(x, y, other.xprevious, other.yprevious)
            flyspeed = (point_distance(other.xprevious, other.yprevious, x, y) * 0.2)
            grabbed = 0
            land = 0
        }
        grabbing = 0
    }
}
if (mouse_check_button_pressed(mb_right) && grabid != noone)
{
    if (grabid.object_index == obj_money)
    {
        if (grabid.value == 0.1)
        {
            scr_sound(sfx_coin1)
            pressing = 0
            if (grabbing == 1 && instance_exists(grabid))
            {
                with (grabid)
                {
                    vsp = -22
                    flying = 1
                    direction = point_direction(x, y, other.xprevious, other.yprevious)
                    flyspeed = (point_distance(other.xprevious, other.yprevious, x, y) * 0.2)
                    grabbed = 0
                    land = 0
                }
                grabbing = 0
            }
        }
    }
}
if (y < 60 && x > 200 && x < 600)
{
    if mouse_check_button(mb_left)
        obj_game.talkspdup = 1
    else
        obj_game.talkspdup = 0
    if mouse_check_button_pressed(mb_right)
        scr_messageclear()
}
else
    obj_game.talkspdup = 0
if place_meeting(x, y, obj_button)
{
    if mouse_check_button(mb_left)
        image_index = 3
    else
        image_index = 2
}
else if (pressing == 1)
    image_index = pressing
else if keyboard_check(ord("1"))
    image_index = 4
else if keyboard_check(ord("2"))
    image_index = 5
else if keyboard_check(ord("3"))
    image_index = 6
else if keyboard_check(ord("4"))
    image_index = 7
else if keyboard_check(ord("5"))
    image_index = 8
else
    image_index = pressing
if ((!(place_meeting(x, y, obj_menubutton))) && room == rm_menu)
    obj_menu.dayinfo = "none"
