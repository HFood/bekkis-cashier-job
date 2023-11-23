if (other.image_index == 1)
{
    if (value < 1)
        scr_sound(choose(sfx_coin1, sfx_coin2))
    else
        scr_sound(choose(sfx_note1, sfx_note2, sfx_note3))
    obj_cashreg.capacity += value
    instance_destroy()
}
