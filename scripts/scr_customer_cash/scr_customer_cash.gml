function scr_customer_cash() //gml_Script_scr_customer_cash
{
    var _varchance = irandom_range(0, 4)
    if ((wantedcash - global.givencash) >= 50 && _varchance < 1)
    {
        with (instance_create_depth((x + irandom_range(-100, 140)), (y + irandom_range(-100, 140)), 1, obj_money))
            value = 50
        global.givencash += 50
    }
    else if ((wantedcash - global.givencash) >= 10 && _varchance < 2)
    {
        with (instance_create_depth((x + irandom_range(-100, 140)), (y + irandom_range(-100, 140)), 1, obj_money))
            value = 10
        global.givencash += 10
    }
    else if ((wantedcash - global.givencash) >= 5 && _varchance < 3)
    {
        with (instance_create_depth((x + irandom_range(-100, 140)), (y + irandom_range(-100, 140)), 1, obj_money))
            value = 5
        global.givencash += 5
    }
    else if ((wantedcash - global.givencash) >= 1)
    {
        with (instance_create_depth((x + irandom_range(-100, 140)), (y + irandom_range(-100, 140)), 1, obj_money))
            value = 1
        global.givencash += 1
    }
    else if ((wantedcash - global.givencash) >= 0.5 && (wantedcash - global.givencash) < 1)
    {
        with (instance_create_depth((x + irandom_range(-100, 140)), (y + irandom_range(-100, 140)), 1, obj_money))
            value = 0.5
        global.givencash += 0.5
    }
    else if ((wantedcash - global.givencash) >= 0.1 && (wantedcash - global.givencash) < 1)
    {
        with (instance_create_depth((x + irandom_range(-100, 140)), (y + irandom_range(-100, 140)), 1, obj_money))
            value = 0.1
        global.givencash += 0.1
    }
}

