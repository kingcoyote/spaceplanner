--[[ Copyright (c) 2018 Steve Phillips
 * Part of the SpacePlanner mod
 *
 * See License.txt in the project directory for license information.
--]]

function define_layoutentity(name, size)
	local size_px = size / 64
	local result = 
	{
		type = "corpse",
		name = name,
		icon = "__SpacePlanner__/graphics/icons/" .. name .. ".png",
		icon_size = 32,
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 0.01},
		collision_box = {{0 - size_px * 0.99, 0 - size_px  * 0.99}, {0 + size_px * 0.99, 0 + size_px  * 0.99}},
		selection_box = {{0 - size_px, 0 - size_px}, {0 + size_px, 0 + size_px}},
		drawing_box = {{0 - size_px, 0 - size_px}, {0 + size_px, 0 + size_px}},
		scale_info_icons = true,
		
		-- simple-entity settings
		collision_mask = { "item-layer" },
		
		-- corpse entity settings
		final_render_layer = "remnants",
		time_before_removed = 60 * 60 * 60 * 3600, -- 3600 hours,
		animation = 
		{
		  {
			frame_count = 1,
			direction_count = 1,
			filename = "__SpacePlanner__/graphics/entity/" .. name .. ".png",
			width = size,
			height = size,
		  }
		},
	};

	return result;
end

data:extend(
{
	define_layoutentity("layoutblock-sm", 32),
	define_layoutentity("layoutblock-md", 64),
	define_layoutentity("layoutblock-lg", 96),
	define_layoutentity("layoutinserter", 32),
	define_layoutentity("layoutbelt", 32),
})

