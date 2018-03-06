--[[ Copyright (c) 2018 Steve Phillips
 * Part of the SpacePlanner mod
 *
 * See License.txt in the project directory for license information.
--]]

function define_layoutitem(name, order)
	local result = 
	{
		type = "item",
		name = name,
		icon = "__SpacePlanner__/graphics/icons/" .. name .. ".png",
		icon_size = 32,
		flags = {"goes-to-quickbar"},
		order = "a[items]-c[spaceplanner" .. order .. "]",
		place_result = name,
		stack_size = 10000
	};

	return result;
end

local i = 0

data:extend(
{
	define_layoutitem("layoutblock-sm", 1),
	define_layoutitem("layoutblock-md", 1),
	define_layoutitem("layoutblock-lg", 1),
	define_layoutitem("layoutinserter", 4),
	define_layoutitem("layoutbelt", 5),
	define_layoutitem("layouttrain", 6),
})
