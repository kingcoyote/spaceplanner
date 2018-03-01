--[[ Copyright (c) 2018 Steve Phillips
 * Part of the SpacePlanner mod
 *
 * See License.txt in the project directory for license information.
--]]

data:extend(
{
	{
		type = "technology",
		name = "spaceplanner-research",
		icon = "__SpacePlanner__/graphics/research/spaceplanner-research.png",
		icon_size = 128,
		effects =
		{
			{ type = "unlock-recipe", recipe = "layoutblock-sm" },
			{ type = "unlock-recipe", recipe = "layoutblock-md" },
			{ type = "unlock-recipe", recipe = "layoutblock-lg" },
			{ type = "unlock-recipe", recipe = "layoutinserter" },
			{ type = "unlock-recipe", recipe = "layoutbelt" },
		},
		prerequisites = {},
		unit =
		{
			count = 50,
			ingredients =
			{
				{ "science-pack-1", 1 },
				{ "science-pack-2", 1 },
			},
			time = 5
		},
		order = "c-a"
	},
})

