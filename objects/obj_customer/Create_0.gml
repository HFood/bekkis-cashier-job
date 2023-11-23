depth = 350
gotfood = 0
gotdrink = 0
stopped = 0
food = choose("classic", "mini", "bbq", "cheese", "big", "ultra")
if (global.day >= 4)
{
    var _chnc = irandom_range(1, 4)
    if (_chnc == 1)
        ds_list_add(global.swich, "toast")
    else
        ds_list_add(global.swich, "bread")
}
else
    ds_list_add(global.swich, "bread")
if (global.day == 0)
{
    path_start(pth_coach, 8, path_action_stop, 1)
    ds_list_add(global.swich, "cheese")
    ds_list_add(global.swich, "ham")
    ds_list_add(global.swich, "lettuce")
}
else
{
    path_start(pth_customer, 8, path_action_stop, 1)
    switch global.day
    {
        case 0:
        case 1:
            var _rep = irandom_range(1, 6)
            break
        case 2:
        case 3:
            _rep = irandom_range(2, 7)
            break
        case 4:
        case 5:
            _rep = irandom_range(2, 8)
            break
    }

    var _midbrchnc = 1
    var i = 1
    repeat _rep
    {
        switch global.day
        {
            case 0:
            case 1:
                ds_list_add(global.swich, choose("cheese", "ham", "lettuce", "bacon"))
                i++
                break
            case 2:
                ds_list_add(global.swich, choose("cheese", "ham", "lettuce", "bacon", "cucumber"))
                i++
                break
            case 3:
                if (_midbrchnc == 1 && _rep > 2 && _rep == floor(_rep) && ds_list_size(global.swich) == (floor(_rep) / 2))
                    ds_list_add(global.swich, "bread")
                else if (ds_list_find_value(global.swich, max(0, (i - 1))) != "ketchup" && ds_list_find_value(global.swich, max(0, (i - 1))) != "mayo" && ds_list_find_value(global.swich, max(0, (i - 2))) != "ketchup" && ds_list_find_value(global.swich, max(0, (i - 2))) != "mayo" && _rep > 1)
                    ds_list_add(global.swich, choose("cheese", "ham", "lettuce", "bacon", "cucumber", "fish", "cheese", "ham", "cucumber", "bacon", "lettuce", "fish", "ketchup", "mayo"))
                else
                    ds_list_add(global.swich, choose("cheese", "ham", "lettuce", "bacon", "cucumber", "fish"))
                i++
                break
            case 4:
                if (_midbrchnc == 1 && _rep > 2 && _rep == floor(_rep) && ds_list_size(global.swich) == (floor(_rep) / 2))
                    ds_list_add(global.swich, "bread")
                else if (ds_list_find_value(global.swich, max(0, (i - 1))) != "ketchup" && ds_list_find_value(global.swich, max(0, (i - 1))) != "mayo" && ds_list_find_value(global.swich, max(0, (i - 2))) != "ketchup" && ds_list_find_value(global.swich, max(0, (i - 2))) != "mayo" && _rep > 1)
                    ds_list_add(global.swich, choose("cheese", "ham", "lettuce", "bacon", "cucumber", "fish", "cheese", "ham", "cucumber", "bacon", "lettuce", "fish", "ketchup", "mayo"))
                else
                    ds_list_add(global.swich, choose("cheese", "ham", "lettuce", "bacon", "cucumber", "fish"))
                i++
                break
            case 5:
                if (_midbrchnc == 1 && _rep > 2 && _rep == floor(_rep) && ds_list_size(global.swich) == (floor(_rep) / 2))
                    ds_list_add(global.swich, "bread")
                else if (ds_list_find_value(global.swich, max(0, (i - 1))) != "ketchup" && ds_list_find_value(global.swich, max(0, (i - 1))) != "mayo" && ds_list_find_value(global.swich, max(0, (i - 2))) != "ketchup" && ds_list_find_value(global.swich, max(0, (i - 2))) != "mayo" && _rep > 1)
                    ds_list_add(global.swich, choose("cheese", "ham", "lettuce", "bacon", "cucumber", "fish", "pepper", "cheese", "ham", "cucumber", "bacon", "lettuce", "fish", "pepper", "ketchup", "mayo"))
                else
                    ds_list_add(global.swich, choose("cheese", "ham", "lettuce", "bacon", "cucumber", "fish", "pepper"))
                i++
                break
        }

    }
    _rep = irandom_range(1, 3)
    if (global.day >= 5 && _rep == 1)
    {
        ds_list_add(global.swich2, "bread")
        _rep = irandom_range(1, 6)
        i = 1
        repeat _rep
        {
            if (_midbrchnc == 1 && _rep > 2 && _rep == floor(_rep) && ds_list_size(global.swich2) == (floor(_rep) / 2))
                ds_list_add(global.swich2, "bread")
            else if (ds_list_find_value(global.swich2, max(0, (i - 1))) != "ketchup" && ds_list_find_value(global.swich2, max(0, (i - 1))) != "mayo" && ds_list_find_value(global.swich2, max(0, (i - 2))) != "ketchup" && ds_list_find_value(global.swich2, max(0, (i - 2))) != "mayo" && _rep > 1)
                ds_list_add(global.swich2, choose("cheese", "ham", "lettuce", "bacon", "cucumber", "fish", "pepper", "cheese", "ham", "cucumber", "bacon", "lettuce", "fish", "pepper", "ketchup", "mayo"))
            else
                ds_list_add(global.swich2, choose("cheese", "ham", "lettuce", "bacon", "cucumber", "fish", "pepper"))
            i++
        }
        ds_list_add(global.swich2, "bread")
    }
}
if (global.day >= 4)
{
    if (_chnc == 1)
        ds_list_add(global.swich, "toast")
    else
        ds_list_add(global.swich, "bread")
}
else
    ds_list_add(global.swich, "bread")
drinck = "none"
if (global.day >= 2)
    drinck = choose("none", "none", "none", "none", "none", "cola", "fantola", "sprite", "fanta")
global.patience = 100
global.order = food
global.drink = drinck
var _cashh = 0
for (i = 0; i < ds_list_size(global.swich); i++)
{
    var _ing = ds_list_find_value(global.swich, i)
    switch _ing
    {
        case "bread":
            _cashh += 0.5
            break
        case "cheese":
            _cashh += 1
            break
        case "ham":
            _cashh += 1.6
            break
        case "cucumber":
            _cashh += 1.2
            break
        case "bacon":
            _cashh += 1.8
            break
        case "lettuce":
            _cashh += 1.3
            break
        case "fish":
            _cashh += 2
            break
        case "peppers":
            _cashh += 0.8
            break
        case "ketchup":
        case "mayonnaise":
            _cashh += 0.4
            break
    }

}
var _cashh2 = 0
if (ds_list_size(global.swich2) > 0)
{
    for (i = 0; i < ds_list_size(global.swich2); i++)
    {
        _ing = ds_list_find_value(global.swich2, i)
        switch _ing
        {
            case "bread":
                _cashh2 += 0.5
                break
            case "cheese":
                _cashh2 += 1
                break
            case "ham":
                _cashh2 += 1.6
                break
            case "cucumber":
                _cashh2 += 1.2
                break
            case "bacon":
                _cashh2 += 1.8
                break
            case "lettuce":
                _cashh2 += 1.3
                break
            case "fish":
                _cashh2 += 2
                break
            case "peppers":
                _cashh2 += 0.8
                break
            case "ketchup":
            case "mayonnaise":
                _cashh2 += 0.4
                break
        }

    }
}
var _cashhh = 0
global.drink_ice = 0
if (drinck != "none")
{
    _chnc = irandom_range(1, 3)
    if (_chnc == 1)
    {
        global.drink_ice = 1
        _cashhh = 2.7
    }
    else
        _cashhh = 2.5
}
else
    gotdrink = 1
wantedcash = ((((_cashh + _cashh2) + _cashhh) + irandom_range(0, 12)) + choose(0, 0, 0, 0, 0, 0, 0, 0, 0, 0.1, 0.2, 0.3, 0.4, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.5, 0.6, 0.7, 0.8, 0.9))
startcash = wantedcash
toexit = 0
with (instance_create_depth(x, y, -200, obj_cloud))
{
    dad = other.id
    other.cloud = id
}
instance_deactivate_object(cloud)
takeaway = 0
theone = 0
if (global.day == 0)
    sprite_index = spr_customer_coach
else
{
    for (sprite_index = asset_get_index(("spr_customer_" + string(irandom_range(0, 24)))); sprite_index == obj_game.lastcust; sprite_index = asset_get_index(("spr_customer_" + string(irandom_range(0, 24)))))
    {
    }
}
lastcust = sprite_index
