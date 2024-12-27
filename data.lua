-- data.lua

require("prototypes.primitive-electric-furnace")

-- NORMAL CRUSHING

data.raw["recipe"]["metallic-asteroid-crushing"].results = {
	{type = "item", name = "iron-ore", amount = 10},
	{type = "item", name = "copper-ore", amount = 10},
	{type = "item", name = "uranium-ore", amount = 5, probability = 0.05},
    {type = "item", name = "metallic-asteroid-chunk", amount = 1, probability = 0.2}
}

data.raw["recipe"]["carbonic-asteroid-crushing"].results = {
	{type = "item", name = "carbon", amount = 10},
	--{type = "item", name = "coal-ore", amount = 5, probability = 0.5},
    {type = "item", name = "carbonic-asteroid-chunk", amount = 1, probability = 0.2}
}

data.raw["recipe"]["oxide-asteroid-crushing"].results = {
	{type = "item", name = "ice", amount = 5},
    {type = "item", name = "oxide-asteroid-chunk", amount = 1, probability = 0.2}
}

-- ADVANCED CRUSHING

data.raw["recipe"]["advanced-metallic-asteroid-crushing"].results = {
	{type = "item", name = "tungsten-ore", amount = 5},
	{type = "item", name = "uranium-ore", amount = 5, probability = 0.5},
	{type = "item", name = "scrap", amount = 10, probability = 0.05},
}

data.raw["recipe"]["advanced-carbonic-asteroid-crushing"].results = {
	{type = "item", name = "carbon", amount = 10},
    {type = "item", name = "sulfur", amount = 2},
}

data.raw["recipe"]["advanced-oxide-asteroid-crushing"].results = {
	{type = "item", name = "ice", amount = 3},
	{type = "item", name = "calcite", amount = 2},
}

-- Balancing Recipes

if settings.startup["space-start-balancing"].value then

	data.raw["recipe"]["space-platform-foundation"].ingredients = {
		{type = "item", name = "steel-plate", amount = 2},
	    {type = "item", name = "copper-cable", amount = 30}
	}

	data.raw["recipe"]["space-platform-foundation"].results = {{type="item", name="space-platform-foundation", amount=10}}

	data.raw["recipe"]["crusher"].ingredients =
    {
      {type = "item", name = "iron-gear-wheel", amount = 30},
      {type = "item", name = "steel-plate", amount = 10},
      {type = "item", name = "engine-unit", amount = 5}
    }

	data.raw["recipe"]["asteroid-collector"].ingredients =
    {
      {type = "item", name = "iron-gear-wheel", amount = 30},
      {type = "item", name = "electronic-circuit", amount = 50},
      {type = "item", name = "engine-unit", amount = 20}
    }

	data.raw["recipe"]["cargo-bay"].ingredients =
    {
      {type = "item", name = "steel-plate", amount = 100},
      {type = "item", name = "iron-gear-wheel", amount = 20},
      {type = "item", name = "electronic-circuit", amount = 5}
    }

	data.raw["recipe"]["thruster"].ingredients =
    {
      {type = "item", name = "steel-plate", amount = 200},
      {type = "item", name = "advanced-circuit", amount = 10},
      {type = "item", name = "engine-unit", amount = 20}
    }

	data.raw["technology"]["space-platform-thruster"].unit =
    {
      count = 200,
      ingredients =
      {
        {"automation-science-pack", 1},
        {"logistic-science-pack", 1},
        {"chemical-science-pack", 1},
        {"space-science-pack", 1}
      },
      time = 60
    }

	data.raw["technology"]["solar-energy"].unit = {
		count = 25,
		ingredients =
		{
		  {"automation-science-pack", 1},
		  {"logistic-science-pack", 1}
		},
		time = 30
	}

	data.raw["technology"]["logistic-science-pack"].unit =
    {
      count = 50,
      ingredients = {{"automation-science-pack", 1}},
      time = 5
    }

	data.raw["technology"]["chemical-science-pack"].unit = {
		count = 50,
		ingredients =
		{
		  {"automation-science-pack", 1},
		  {"logistic-science-pack", 1}
		},
		time = 10
	  }
	
	  data.raw["technology"]["advanced-circuit"].unit =
	  {
		count = 100,
		ingredients =
		{
		  {"automation-science-pack", 1},
		  {"logistic-science-pack", 1}
		},
		time = 15
	  }
end

-- Fluid Recipes

data:extend({
	{
		type = "recipe",
		name = "advanced-ice-melting",
		--group = "space",
		subgroup = "fluid-recipes",
		category = "oil-processing",
		order = "d[other-chemistry]-c[advanced-ice-melting]",
		allow_productivity = true,
		energy_required = 5,
		ingredients = {{type = "item", name = "ice", amount = 1}},
		results = {
			{type = "fluid", name = "lithium-brine", amount = 5, probability = 0.25},
			{type = "fluid", name = "ammoniacal-solution", amount = 5, probability = 0.25},
			{type = "fluid", name = "fluorine", amount = 5, probability = 0.25},
		},
		icon_size = 64,
		icon = "__space-age__/graphics/icons/fluid/ice-melting.png",
		enabled = false
	},
	{
		type = "recipe",
		name = "advanced-asteroid-oil-processing",
		group = "space",
		subgroup = "fluid-recipes",
		category = "oil-processing",
		order = "d[other-chemistry]-c[asteroid-oil-processing]",
		allow_productivity = true,
		energy_required = 5,
		ingredients = {
			{type = "item", name = "carbonic-asteroid-chunk", amount = 2},
			{type = "item", name = "oxide-asteroid-chunk", amount = 1}
		},
		results = {
			{type = "fluid", name = "heavy-oil", amount = 18},
			{type = "fluid", name = "light-oil", amount = 6},
			{type = "fluid", name = "petroleum-gas", amount = 10},
			{type = "item", name = "sulfur", amount = 5}
		},
		icon_size = 64,
        icon = "__space-age__/graphics/icons/fluid/ice-melting.png",
		enabled = false
	},
	{
		type = "recipe",
		name = "asteroid-oil-processing",
		group = "space",
		subgroup = "fluid-recipes",
		category = "oil-processing",
		order = "d[other-chemistry]-c[asteroid-oil-processing]",
		allow_productivity = true,
		energy_required = 5,
		ingredients = {
			{type = "item", name = "carbonic-asteroid-chunk", amount = 2},
			{type = "item", name = "oxide-asteroid-chunk", amount = 1}
		},
		results = {
			{type = "fluid", name = "petroleum-gas", amount = 10},
			{type = "item", name = "sulfur", amount = 5}
		},
		icon_size = 64,
        icon = "__space-age__/graphics/icons/fluid/ice-melting.png",
		enabled = false
	},
	{
		type = "recipe",
		name = "metallic-asteroid-stone-crushing",
		icon = "__space-age__/graphics/icons/metallic-asteroid-crushing.png",
		category = "crushing",
		subgroup="space-crushing",
		order = "b-a-a",
		auto_recycle = false,
		enabled = false,
		ingredients =
		{
		  {type = "item", name = "metallic-asteroid-chunk", amount = 1},
		},
		energy_required = 2,
		results =
		{
		  {type = "item", name = "stone", amount = 20},
		},
		allow_productivity = true,
		allow_decomposition = false
	},
	{
		type = "recipe",
		name = "oxide-asteroid-stone-crushing",
		icon = "__space-age__/graphics/icons/metallic-asteroid-crushing.png",
		category = "crushing",
		subgroup="space-crushing",
		order = "b-a-a",
		auto_recycle = false,
		enabled = false,
		ingredients =
		{
		  {type = "item", name = "oxide-asteroid-chunk", amount = 1},
		},
		energy_required = 2,
		results =
		{
		  {type = "item", name = "stone", amount = 20},
		},
		allow_productivity = true,
		allow_decomposition = false
	},
	{
		type = "recipe",
		name = "carbonic-asteroid-stone-crushing",
		icon = "__space-age__/graphics/icons/metallic-asteroid-crushing.png",
		category = "crushing",
		subgroup="space-crushing",
		order = "b-a-a",
		auto_recycle = false,
		enabled = false,
		ingredients =
		{
		  {type = "item", name = "carbonic-asteroid-chunk", amount = 1},
		},
		energy_required = 2,
		results =
		{
		  {type = "item", name = "stone", amount = 20},
		  {type = "item", name = "coal", amount = 5},
		},
		allow_productivity = true,
		allow_decomposition = false
	}
})


data.raw["technology"]["space-platform"].effects = {
	{
        type = "unlock-recipe",
        recipe = "asteroid-collector"
      },
      {
        type = "unlock-recipe",
        recipe = "crusher"
      },
      {
        type = "unlock-recipe",
        recipe = "metallic-asteroid-crushing"
      },
      {
        type = "unlock-recipe",
        recipe = "carbonic-asteroid-crushing"
      },
      {
        type = "unlock-recipe",
        recipe = "oxide-asteroid-crushing"
      },
      {
        type = "unlock-recipe",
        recipe = "cargo-bay"
      },
	  {
        type = "unlock-recipe",
        recipe = "metallic-asteroid-stone-crushing"
      },
	  {
        type = "unlock-recipe",
        recipe = "carbonic-asteroid-stone-crushing"
      },
	  {
        type = "unlock-recipe",
        recipe = "oxide-asteroid-stone-crushing"
      },
	  {
		type = "unlock-recipe",
		recipe = "advanced-ice-melting"
	  },
	  {
		type = "unlock-recipe",
		recipe = "asteroid-oil-processing"
	  }
}

data.raw["technology"]["automation-2"].effects =
{
  {
	type = "unlock-recipe",
	recipe = "assembling-machine-2"
  },
  {
	type = "unlock-recipe",
	recipe = "small-electric-furnace"
  }
}

data.raw["technology"]["advanced-asteroid-processing"].effects =
{
  {
	type = "unlock-recipe",
	recipe = "advanced-metallic-asteroid-crushing"
  },
  {
	type = "unlock-recipe",
	recipe = "advanced-carbonic-asteroid-crushing"
  },
  {
	type = "unlock-recipe",
	recipe = "advanced-oxide-asteroid-crushing"
  },
  {
	type = "unlock-recipe",
	recipe = "advanced-thruster-fuel"
  },
  {
	type = "unlock-recipe",
	recipe = "advanced-thruster-oxidizer"
  },
  {
	type = "unlock-recipe",
	recipe = "advanced-asteroid-oil-processing"
  }
}