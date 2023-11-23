if instance_exists(obj_customer)
{
    _gd = obj_customer.gotdrink
    _gf = obj_customer.gotfood
}
if (x < 400)
{
    if ((room == rm_test && global.day >= 2) || room != rm_test)
    {
        if (_gd == 0 && global.told == 1)
            draw_sprite(spr_kitchenarrows, 3, x, y)
        else
            draw_sprite(spr_kitchenarrows, 1, x, y)
    }
}
else if (room == rm_test && global.day == 0)
{
    if (obj_tutorial.phase > 1)
    {
        if (_gf == 0 && global.told == 1)
            draw_sprite(spr_kitchenarrows, 2, x, y)
        else
            draw_sprite(spr_kitchenarrows, 0, x, y)
    }
}
else if (_gf == 0 && global.told == 1)
    draw_sprite(spr_kitchenarrows, 2, x, y)
else
    draw_sprite(spr_kitchenarrows, 0, x, y)
