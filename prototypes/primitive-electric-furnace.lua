small_electric = util.table.deepcopy(data.raw["furnace"]["electric-furnace"])
small_electric.name = "small-electric-furnace"
small_electric.next_upgrade = "electric-furnace"
small_electric.energy_usage = "144kW"
small_electric.crafting_speed = 1

data:extend(
{
    small_electric,
  {
    type = "item",
    name = "small-electric-furnace",
    icon = "__base__/graphics/icons/electric-furnace.png",
    subgroup = "smelting-machine",
    order = "a[electric-furnace]b",
    place_result = "small-electric-furnace",
    stack_size = 50,
    minable = {
      {
        mining_time = 0.2,
        result = "small-electric-furnace"
      }
    }
  },
  {
    type = "recipe",
    name = "small-electric-furnace",
    energy_required = 1,
    enabled = false,
    ingredients = {
      {type = "item", name = "carbon", amount = 25},
      {type = "item", name = "electronic-circuit", amount = 20},
      {type = "item", name = "copper-plate", amount = 10},
      {type = "item", name = "iron-gear-wheel", amount = 5}
    },
    results = {{type = "item", name = "small-electric-furnace", amount = 1}}
  }
})