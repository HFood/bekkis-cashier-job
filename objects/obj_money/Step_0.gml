scr_item_step()
if (flying == 1)
{
    sprite_index = spr_coin_flipping
    image_speed = abs((vsp / 4))
}
else
{
    sprite_index = spr_money
    image_speed = 0
    switch value
    {
        case 0.1:
            image_index = 0
            break
        case 0.5:
            image_index = 1
            break
        case 1:
            image_index = 2
            break
        case 5:
            image_index = 3
            break
        case 10:
            image_index = 4
            break
        case 20:
            image_index = 5
            break
        case 50:
            image_index = 6
            break
        case 100:
            image_index = 7
            break
    }

}
if (grabbed == 1)
    notl = 0
