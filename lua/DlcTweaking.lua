Hooks:PostHook(DLCTweakData, "init", "BipopMakeDlcTweak", function(self, tweak_data, ...)
	self.leiria_pack_m95_bipod = {
		free = true,
		content = {}
	}

	self.leiria_pack_m95_bipod.content.loot_drops = {
		{
			type_items = "weapon_mods",
			item_entry = "wpn_fps_snp_m95_bipod",
			amount = 1
		}
	}
end)