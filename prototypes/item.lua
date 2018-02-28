--[[ Copyright (c) 2018 Steve Phillips
 * Part of the SpacePlanner mod
 *
 * See License.txt in the project directory for license information.
--]]

function define_layoutblock(name)
	local result = 
	{
		type = "item",
		name = "layoutblock-" .. name,
		icon = "__SpacePlanner__/graphics/icons/layoutblock-" .. name .. ".png",
		icon_size = 32,
		flags = {"goes-to-quickbar"},
		subgroup = "storage",
		order = "a[items]-c[spaceplanner]",
		place_result = "layoutblock-" .. name,
		stack_size = 10000
	};

	return result;
end

data:extend(
{
	define_layoutblock("sm"),
	define_layoutblock("md"),
	define_layoutblock("lg"),
})
