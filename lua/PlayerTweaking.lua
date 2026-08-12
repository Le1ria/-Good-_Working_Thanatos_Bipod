Hooks:PostHook(PlayerTweakData, "_init_m95", "Bipop95", function(self, weapon_data, ...)
	local pivot_shoulder_translation = Vector3(12.8734, 21.463, -2.5494)
	local pivot_shoulder_rotation = Rotation(0.113234, 0.518279, 0.627416)
	local pivot_head_translation = Vector3(0, 0, 0)
	local pivot_head_rotation = Rotation(0, 0, 0)

	self.stances.m95.bipod = {
		shoulders = {},
		vel_overshot = {}
	}

	self.stances.m95.bipod.shoulders.translation = pivot_head_translation - pivot_shoulder_translation:rotate_with(pivot_shoulder_rotation:inverse()):rotate_with(pivot_head_rotation)
	self.stances.m95.bipod.shoulders.rotation = pivot_head_rotation * pivot_shoulder_rotation:inverse()
	self.stances.m95.bipod.vel_overshot.pivot = pivot_shoulder_translation + Vector3(0, -0, 0)
	self.stances.m95.bipod.vel_overshot.yaw_neg = 0
	self.stances.m95.bipod.vel_overshot.yaw_pos = 0
	self.stances.m95.bipod.vel_overshot.pitch_neg = 0
	self.stances.m95.bipod.vel_overshot.pitch_pos = 0
	self.stances.m95.bipod.FOV = 55

	self.stances.m95.bipod.shakers = {breathing = {}}
	self.stances.m95.bipod.shakers.breathing.amplitude = 0
end)