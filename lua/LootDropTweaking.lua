Hooks:PostHook(LootDropTweakData, "init_generated", "BipopLootDropText", function(self, tweak_data, ...)
	self.global_values.leiria_pack_m95_bipod = {
		name_id = "bm_global_value_leiria_pack_m95_bipod",
		desc_id = "menu_l_global_value_leiria_pack_m95_bipod",
		color = Color(0.8, 0, 0.7),
		dlc = true,
		free = true,
		chance = 0,
		value_multiplier = 0,
		durability_multiplier = 1,
		drops = false,
		track = false,
		sort_number = 0,
		category = "dlc"
	}

	self.global_value_list_index = {
		"leiria_pack_m95_bipod"
	}
end)