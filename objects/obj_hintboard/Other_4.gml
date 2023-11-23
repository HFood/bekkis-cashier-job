if (ds_list_size(global.swich) > 10 || ds_list_size(global.swich2) > 10)
    scale = 0.7
else if (ds_list_size(global.swich) > 8 || ds_list_size(global.swich2) > 8)
    scale = 0.8
else
    scale = 1
txt1 = ""
for (var i = 0; i < ds_list_size(global.swich); i++)
{
    switch ds_list_find_value(global.swich, i)
    {
        case "bread":
            txt1 = ((lang_bread + "\n") + txt1)
            break
        case "cheese":
            txt1 = ((lang_cheese + "\n") + txt1)
            break
        case "ham":
            txt1 = ((lang_ham + "\n") + txt1)
            break
        case "lettuce":
            txt1 = ((lang_lettuce + "\n") + txt1)
            break
        case "bacon":
            txt1 = ((lang_bacon + "\n") + txt1)
            break
        case "cucumber":
            txt1 = ((lang_cucumber + "\n") + txt1)
            break
        case "fish":
            txt1 = ((lang_fish + "\n") + txt1)
            break
        case "pepper":
            txt1 = ((lang_pepper + "\n") + txt1)
            break
        case "ketchup":
            txt1 = ((lang_ketchup + "\n") + txt1)
            break
        case "mayo":
            txt1 = ((lang_mayo + "\n") + txt1)
            break
        case "toast":
            txt1 = ((lang_toast + "\n") + txt1)
            break
    }

}
if (ds_list_size(global.swich2) > 0)
{
    txt2 = ""
    for (i = 0; i < ds_list_size(global.swich2); i++)
    {
        switch ds_list_find_value(global.swich2, i)
        {
            case "bread":
                txt2 = ((lang_bread + "\n") + txt2)
                break
            case "cheese":
                txt2 = ((lang_cheese + "\n") + txt2)
                break
            case "ham":
                txt2 = ((lang_ham + "\n") + txt2)
                break
            case "lettuce":
                txt2 = ((lang_lettuce + "\n") + txt2)
                break
            case "bacon":
                txt2 = ((lang_bacon + "\n") + txt2)
                break
            case "cucumber":
                txt2 = ((lang_cucumber + "\n") + txt2)
                break
            case "fish":
                txt2 = ((lang_fish + "\n") + txt2)
                break
            case "pepper":
                txt2 = ((lang_pepper + "\n") + txt2)
                break
            case "ketchup":
                txt2 = ((lang_ketchup + "\n") + txt2)
                break
            case "mayo":
                txt2 = ((lang_mayo + "\n") + txt2)
                break
            case "toast":
                txt2 = ((lang_toast + "\n") + txt2)
                break
        }

    }
}
