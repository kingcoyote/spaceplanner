--[[ Copyright (c) 2018 Steve Phillips
 * Part of the SpacePlanner mod
 *
 * See License.txt in the project directory for license information.
--]]

function define_layoutblock(name, size)
	local size_px = size / 64
	local result = 
	{
		type = "corpse",
		name = "layoutblock-" .. name,
		icon = "__SpacePlanner__/graphics/icons/layoutblock-" .. name .. ".png",
		icon_size = 32,
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 0.01},
		max_health = 1,
		collision_box = {{0 - size_px * 0.99, 0 - size_px  * 0.99}, {0 + size_px * 0.99, 0 + size_px  * 0.99}},
		selection_box = {{0 - size_px, 0 - size_px}, {0 + size_px, 0 + size_px}},
		drawing_box = {{0 - size_px, 0 - size_px}, {0 + size_px, 0 + size_px}},
		scale_info_icons = true,
		final_render_layer = "remnants",
		time_before_removed = 60 * 60 * 60 * 3600, -- 3600 hours
		animation = 
		{
		  {
			frame_count = 1,
			direction_count = 1,
			filename = "__SpacePlanner__/graphics/entity/layoutblock-" .. name .. ".png",
			width = size,
			height = size,
		  }
		},
	};

	return result;
end

function define_layoutentity(name, group)
	local size_px = 0.5
	local result = 
	{
		type = "corpse",
		name = name,
		icon = "__SpacePlanner__/graphics/icons/" .. name .. ".png",
		icon_size = 32,
		flags = {"placeable-neutral", "placeable-player", "player-creation"},
		minable = {mining_time = 0.01},
		max_health = 1,
		collision_box = {{-0.49, -0.49}, {0.49, 0.49}},
		selection_box = {{-0.5, -0.5}, {0.5, 0.5}},
		drawing_box = {{-0.5, -0.5}, {0.5, 0.5}},
		scale_info_icons = true,
		
		-- simple-entity settings
		collision_mask = { "item-layer" },
		picture = {
			direction_count = 1,
			filename = "__SpacePlanner__/graphics/entity/" .. name .. ".png",
			width = 32,
			height = 32,
			shift = {0, 0},
		},
		
		-- corpse entity settings
		final_render_layer = "remnants",
		time_before_removed = 60 * 60 * 60 * 3600, -- 3600 hours,
		animation = 
		{
		  {
			frame_count = 1,
			direction_count = 1,
			filename = "__SpacePlanner__/graphics/entity/" .. name .. ".png",
			width = 32,
			height = 32,
		  }
		},
	};

	return result;
end

data:extend(
{
	define_layoutblock("sm", 32),
	define_layoutblock("md", 64),
	define_layoutblock("lg", 96),
	define_layoutentity("layoutinserter", "inserter"),
	define_layoutentity("layoutbelt", "transport-belt"),
})

