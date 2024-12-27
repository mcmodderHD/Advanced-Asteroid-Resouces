-- settings.lua

data:extend({
    {
        type = "bool-setting",
        name = "space-start-balancing",
        localised_name = "Balancing Changes for starting in Space",
        localised_description = "Adjusting Resarch Cost and Space Foundation Cost.",
        setting_type = "startup",
        default_value = false,
        order = "a"
    }
})