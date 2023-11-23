switch phase
{
    case 1:
        if instance_exists(obj_cloud)
            draw_sprite_ext(spr_arrow, image_index, ((obj_cloud.x - 96) * 2), ((obj_cloud.y - 32) * 2), 2, 2, 135, c_white, 1)
        break
    case 2:
        if (room == rm_test)
            draw_sprite_ext(spr_arrow, image_index, 1300, 600, 2, 2, 0, c_white, 1)
        break
}

