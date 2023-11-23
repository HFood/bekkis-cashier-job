if ((global.day < 2 && food == "cucumber") || (global.day < 3 && food == "fish") || (global.day < 5 && food == "pepper"))
    instance_destroy()
if (global.day < 2 && room == rm_kitchen)
{
    switch food
    {
        case "bacon":
            y = (starty - 48)
            break
        case "lettuce":
            y = (starty - 36)
            break
        case "ham":
            y = (starty - 24)
            break
        case "cheese":
            y = (starty - 12)
            break
        case "bread":
            break
    }

}
