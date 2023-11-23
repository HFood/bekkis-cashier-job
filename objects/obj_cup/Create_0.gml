image_speed = 0
image_alpha = 0.8
scr_item_create()
tower = ds_list_create()
perc = 0
var child1 = instance_create_depth(x, y, (depth + 1), obj_cuprear)
with (child1)
{
    dad = other.id
    juice = 1
}
var child2 = instance_create_depth(x, y, (depth + 2), obj_cuprear)
with (child2)
    dad = other.id
color = -4
poursfx = -4
hasice = 0
