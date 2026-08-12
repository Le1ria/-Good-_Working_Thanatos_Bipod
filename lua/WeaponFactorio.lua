--Creates the blackmarket icon and inserts it into the game
local TortureM95Bipod = ModPath

BLT.AssetManager:CreateEntry(Idstring("guis/textures/pd2/blackmarket/icons/mods/wpn_fps_snp_m95_bipod"), Idstring("texture"), TortureM95Bipod.."assets/guis/textures/pd2/blackmarket/icons/mods/wpn_fps_snp_m95_bipod.texture")
BLT.AssetManager:CreateEntry(Idstring("anims/fps/m95/m95_bipod_enter"), Idstring("animation"), TortureM95Bipod.."assets/anims/fps/m95/m95_bipod_enter.animation")
BLT.AssetManager:CreateEntry(Idstring("anims/fps/m95/m95_bipod_exit"), Idstring("animation"), TortureM95Bipod.."assets/anims/fps/m95/m95_bipod_exit.animation")
BLT.AssetManager:CreateEntry(Idstring("anims/fps/m95/m95_bipod_idle"), Idstring("animation"), TortureM95Bipod.."assets/anims/fps/m95/m95_bipod_idle.animation")
BLT.AssetManager:CreateEntry(Idstring("anims/fps/m95/m95_bipod_recoil"), Idstring("animation"), TortureM95Bipod.."assets/anims/fps/m95/m95_bipod_recoil.animation")

--Removes the bipod from the parts of the m95 (Thanatos)
Hooks:OverrideFunction(WeaponFactoryTweakData, "_init_m95", function(self, ...)
	self.parts.wpn_fps_snp_m95_barrel_standard = {
		a_obj = "a_b",
		type = "barrel",
		name_id = "bm_wp_m14_b_standard",
		unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_m95_pts/wpn_fps_snp_m95_barrel_standard",
		stats = {
			value = 1
		}
	}
	self.parts.wpn_fps_snp_m95_barrel_long = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_snp",
		type = "barrel",
		a_obj = "a_b",
		dlc = "gage_pack_snp",
		name_id = "bm_wp_m95_b_barrel_long",
		unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_m95_pts/wpn_fps_snp_m95_barrel_long",
		pcs = {},
		stats = {
			value = 1,
			concealment = -4,
			spread = 2,
			suppression = -10
		}
	}
	self.parts.wpn_fps_snp_m95_barrel_short = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_snp",
		type = "barrel",
		a_obj = "a_b",
		dlc = "gage_pack_snp",
		name_id = "bm_wp_m95_b_barrel_short",
		unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_m95_pts/wpn_fps_snp_m95_barrel_short",
		pcs = {},
		stats = {
			concealment = 3,
			spread_moving = 3,
			spread = -3,
			value = 1
		}
	}
	self.parts.wpn_fps_snp_m95_barrel_suppressed = {
		is_a_unlockable = true,
		texture_bundle_folder = "gage_pack_snp",
		a_obj = "a_b",
		type = "barrel",
		sub_type = "silencer",
		dlc = "gage_pack_snp",
		name_id = "bm_wp_m95_b_barrel_suppressed",
		unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_m95_pts/wpn_fps_snp_m95_barrel_suppressed",
		pcs = {},
		stats = {
			alert_size = 12,
			spread_moving = 1,
			damage = -4,
			suppression = 12,
			value = 6,
			recoil = 2,
			concealment = 0
		},
		perks = {
			"silencer"
		},
		sound_switch = {
			suppressed = "suppressed_c"
		}
	}
	self.parts.wpn_fps_snp_m95_lower_reciever = {
		a_obj = "a_body",
		type = "lower_body",
		name_id = "bm_wp_m14_body_lower",
		unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_m95_pts/wpn_fps_snp_m95_lower_reciever",
		stats = {
			value = 1
		},
		animations = {
			fire = "bipod_recoil",
		}
	}
	self.parts.wpn_fps_snp_m95_upper_reciever = {
		a_obj = "a_body",
		type = "upper_body",
		name_id = "bm_wp_m14_body_upper",
		unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_m95_pts/wpn_fps_snp_m95_upper_reciever",
		stats = {
			value = 1
		}
	}
	self.parts.wpn_fps_snp_m95_magazine = {
		a_obj = "a_m",
		type = "magazine",
		name_id = "bm_wp_m14_m_standard",
		unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_m95_pts/wpn_fps_snp_m95_magazine",
		stats = {
			value = 1
		},
		animations = {
			reload_not_empty = "reload_not_empty",
			reload = "reload"
		}
	}
	self.parts.wpn_fps_snp_m95_barrel_standard.third_unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_m95_pts/wpn_third_snp_m95_barrel_standard"
	self.parts.wpn_fps_snp_m95_barrel_long.third_unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_m95_pts/wpn_third_snp_m95_barrel_long"
	self.parts.wpn_fps_snp_m95_barrel_short.third_unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_m95_pts/wpn_third_snp_m95_barrel_short"
	self.parts.wpn_fps_snp_m95_barrel_suppressed.third_unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_m95_pts/wpn_third_snp_m95_barrel_suppressed"
	self.parts.wpn_fps_snp_m95_lower_reciever.third_unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_m95_pts/wpn_third_snp_m95_lower_reciever"
	self.parts.wpn_fps_snp_m95_upper_reciever.third_unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_m95_pts/wpn_third_snp_m95_upper_reciever"
	self.parts.wpn_fps_snp_m95_magazine.third_unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_m95_pts/wpn_third_snp_m95_magazine"
	self.wpn_fps_snp_m95 = {
		unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_m95/wpn_fps_snp_m95",
		optional_types = {
			"gadget",
			"sight"
		},
		override = {
			wpn_fps_upg_m4_g_mgrip = {
				stats = {
					value = 2,
					spread_moving = 2,
					concealment = 1
				}
			}
		},
		default_blueprint = {
			"wpn_fps_snp_m95_barrel_standard",
			"wpn_fps_snp_m95_lower_reciever",
			"wpn_fps_snp_m95_upper_reciever",
			"wpn_fps_snp_m95_magazine",
			"wpn_fps_upg_o_shortdot_vanilla",
			"wpn_fps_upg_m4_g_standard_vanilla"
		},
		uses_parts = {
			"wpn_fps_snp_m95_barrel_standard",
			"wpn_fps_snp_m95_barrel_long",
			"wpn_fps_snp_m95_barrel_short",
			"wpn_fps_snp_m95_barrel_suppressed",
			"wpn_fps_snp_m95_lower_reciever",
			"wpn_fps_snp_m95_upper_reciever",
			"wpn_fps_snp_m95_magazine",
			"wpn_fps_upg_o_specter",
			"wpn_fps_upg_o_aimpoint",
			"wpn_fps_upg_o_docter",
			"wpn_fps_upg_o_eotech",
			"wpn_fps_upg_o_t1micro",
			"wpn_fps_upg_o_rx30",
			"wpn_fps_upg_o_rx01",
			"wpn_fps_upg_o_reflex",
			"wpn_fps_upg_o_eotech_xps",
			"wpn_fps_upg_o_cmore",
			"wpn_fps_upg_o_aimpoint_2",
			"wpn_fps_upg_o_acog",
			"wpn_fps_upg_o_cs",
			"wpn_fps_upg_o_shortdot_vanilla",
			"wpn_fps_upg_o_leupold",
			"wpn_fps_upg_o_45iron",
			"wpn_fps_upg_m4_g_standard_vanilla",
			"wpn_fps_upg_m4_g_hgrip",
			"wpn_fps_upg_m4_g_mgrip",
			"wpn_fps_upg_m4_g_ergo",
			"wpn_fps_upg_m4_g_sniper",
			"wpn_fps_upg_fl_ass_smg_sho_peqbox",
			"wpn_fps_upg_fl_ass_smg_sho_surefire",
			"wpn_fps_upg_fl_ass_peq15",
			"wpn_fps_upg_fl_ass_laser",
			"wpn_fps_upg_fl_dbal_laser",
			"wpn_fps_upg_fl_ass_utg",
			"wpn_fps_upg_o_spot",
			"wpn_fps_upg_o_box",
			"wpn_fps_upg_o_45rds",
			"wpn_fps_snp_tti_g_grippy",
			"wpn_fps_upg_o_xpsg33_magnifier",
			"wpn_fps_upg_o_45rds_v2",
			"wpn_fps_upg_g_m4_surgeon",
			"wpn_fps_upg_o_sig",
			"wpn_fps_upg_o_bmg",
			"wpn_fps_upg_o_uh",
			"wpn_fps_upg_o_fc1",
			"wpn_fps_upg_o_45steel",
			"wpn_fps_upg_o_tf90",
			"wpn_fps_upg_o_poe",
			"wpn_fps_sho_sko12_body_grip",
			"wpn_fps_upg_o_northtac",
			"wpn_fps_upg_o_northtac_reddot",
			"wpn_fps_upg_o_hamr",
			"wpn_fps_upg_o_atibal",
			"wpn_fps_upg_o_health",
			"wpn_fps_upg_o_mbus_pro",
			"wpn_fps_snp_victor_g_mod3",
			"wpn_fps_upg_o_schmidt",
			"wpn_fps_upg_o_schmidt_magnified"
		}
	}
	self.wpn_fps_snp_m95_npc = deep_clone(self.wpn_fps_snp_m95)
	self.wpn_fps_snp_m95_npc.unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_m95/wpn_fps_snp_m95_npc"
end)

-- Remakes it into a real bipod and attaches itself back to the m95 parts
Hooks:PostHook(WeaponFactoryTweakData, "_init_bipods", "BipopCreateIt", function(self, ...)
	self.parts.wpn_fps_snp_m95_bipod = {
		is_a_unlockable = true,
		type = "bipod",
		a_obj = "a_body",
		sub_type = "bipod",
		dlc = "leiria_pack_m95_bipod",
		name_id = "bm_wp_snp_m95_bipod",
		desc_id = "bm_wp_snp_m95_bipod_desc",
		has_description = true,
		unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_m95_pts/wpn_fps_snp_m95_bipod",
		pcs = {},
		stats = {
			value = 1,
			zoom = 1
		},
		animations = {
			undeploy = "undeploy",
			deploy = "deploy"
		},
		perks = {
			"bipod"
		},
		third_unit = "units/pd2_dlc_gage_snp/weapons/wpn_fps_snp_m95_pts/wpn_third_snp_m95_bipod"
	}


	table.list_append(self.wpn_fps_snp_m95.uses_parts, {
		"wpn_fps_snp_m95_bipod"
	})
	table.list_append(self.wpn_fps_snp_m95_npc.uses_parts, {
		"wpn_fps_snp_m95_bipod"
	})
end)