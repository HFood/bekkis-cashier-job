draw_sprite_ext(sprite_index, image_index, x, y, (1 + scl), (1 - scl), image_angle, image_blend, image_alpha)
for (var i = 0; i < ds_list_size(tower); i++)
{
    var _food = ds_list_find_value(tower, i)
    switch _food
    {
        case "bread":
            draw_sprite_ext(sprite_index, 0, x, (y - (32 * (i + 1))), (1 + scl), (1 - scl), image_angle, image_blend, image_alpha)
            break
        case "cheese":
            draw_sprite_ext(sprite_index, 1, x, (y - (32 * (i + 1))), (1 + scl), (1 - scl), image_angle, image_blend, image_alpha)
            break
        case "ham":
            draw_sprite_ext(sprite_index, 2, x, (y - (32 * (i + 1))), (1 + scl), (1 - scl), image_angle, image_blend, image_alpha)
            break
        case "cucumber":
            draw_sprite_ext(sprite_index, 3, x, (y - (32 * (i + 1))), (1 + scl), (1 - scl), image_angle, image_blend, image_alpha)
            break
        case "bacon":
            draw_sprite_ext(sprite_index, 4, x, (y - (32 * (i + 1))), (1 + scl), (1 - scl), image_angle, image_blend, image_alpha)
            break
        case "lettuce":
            draw_sprite_ext(sprite_index, 5, x, (y - (32 * (i + 1))), (1 + scl), (1 - scl), image_angle, image_blend, image_alpha)
            break
        case "fish":
            draw_sprite_ext(sprite_index, 6, x, (y - (32 * (i + 1))), (1 + scl), (1 - scl), image_angle, image_blend, image_alpha)
            break
        case "pepper":
            draw_sprite_ext(sprite_index, 7, x, (y - (32 * (i + 1))), (1 + scl), (1 - scl), image_angle, image_blend, image_alpha)
            break
        case "ketchup":
            draw_sprite_ext(sprite_index, 8, x, (y - (32 * (i + 1))), (1 + scl), (1 - scl), image_angle, image_blend, image_alpha)
            break
        case "mayo":
            draw_sprite_ext(sprite_index, 9, x, (y - (32 * (i + 1))), (1 + scl), (1 - scl), image_angle, image_blend, image_alpha)
            break
        case "toast":
            draw_sprite_ext(sprite_index, 10, x, (y - (32 * (i + 1))), (1 + scl), (1 - scl), image_angle, image_blend, image_alpha)
            break
    }

}
if (scl > 0)
    scl -= 0.05
