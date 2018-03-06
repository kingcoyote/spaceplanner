--[[ Copyright (c) 2018 Steve Phillips
 * Part of the SpacePlanner mod
 *
 * See License.txt in the project directory for license information.
--]]

function define_layoutrecipe(name)
	local result = 
	{
		type = "recipe",
		name = name,
		enabled = "false",
		energy_required=0.01,
		ingredients = 
		{

		},
		results = {{type="item", name=name, amount=100}}
	};

	return result;
end

data:extend(
{
	define_layoutrecipe("layoutblock-sm"),
	define_layoutrecipe("layoutblock-md"),
	define_layoutrecipe("layoutblock-lg"),
	define_layoutrecipe("layoutbelt"),
	define_layoutrecipe("layoutinserter"),
	define_layoutrecipe("layouttrain"),
})
