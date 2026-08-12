Hooks:PostHook(WeaponTweakData, "_init_m95", "BipopTweakWeapon", function(self, weapon_data, ...)
	self.m95.timers = {
		reload_not_empty = 3.8,
		reload_empty = 5.1,
		unequip = 0.6,
		equip = 0.6,
		deploy_bipod = 1
	}

	self.m95.bipod_camera_spin_limit = 45
	self.m95.bipod_camera_pitch_limit = 30
	self.m95.bipod_weapon_translation = Vector3(-13.2, 20, -10)
	self.m95.bipod_deploy_multiplier = 1

	self.m95.spread = {
		standing = self.new_m4.spread.standing,
		crouching = self.new_m4.spread.crouching,
		steelsight = self.new_m4.spread.steelsight,
		moving_standing = self.new_m4.spread.moving_standing,
		moving_crouching = self.new_m4.spread.moving_crouching,
		moving_steelsight = self.new_m4.spread.moving_steelsight,
		bipod = weapon_data.default_bipod_spread
	}

	self.m95.animations = {
		equip_id = "equip_m95",
		recoil_steelsight = true,
		bipod_enter = "bipod_enter",
		bipod_exit = "bipod_exit",
		bipod_recoil = "bipod_recoil",
		bipod_recoil_enter = "bipod_recoil",
		bipod_recoil_loop = "bipod_recoil",
		bipod_recoil_exit = "bipod_recoil"
	}
end)