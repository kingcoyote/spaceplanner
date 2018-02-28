--[[ Copyright (c) 2018 Steve Phillips
 * Part of the SpacePlanner mod
 *
 * See License.txt in the project directory for license information.
--]]

function define_layoutblock(name)
	local result = 
	{
		type = "recipe",
		name = "layoutblock-" .. name,
		enabled = "false",
		energy_required=0.01,
		ingredients = 
		{

		},
		results = {{type="item", name="layoutblock-" .. name, amount=100}}
	};

	return result;
end

data:extend(
{
	define_layoutblock("sm"),
	define_layoutblock("md"),
	define_layoutblock("lg"),
})
