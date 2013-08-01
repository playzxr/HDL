skills["JumpForward"] =
{
	name = "Jump",
	nextSkill = "Run",
	
	IsReady = function(this)
		return true;
	end, 
	
	Enter = function(this)
		Self:SetMoveSpeed(5.0);
		Self:SetJumpSpeed(10.0);
		Self:SetJumpAccel(-30);
	end,
	
	Actions = 
	{
		--normal
		["normal0"] =
		{
			name = "jump_blades",
			loop = false,
			stance = "hang_free",
			weapon = 0,
			switch = 1,
			priority = 0,
			nextAction = "normal1",
			
			IsReady = function(this)
				return true;
			end,
		},	
		
		["normal1"] =
		{
			name = "hang_blades",
			loop = true,
			stance = "hang_free",
			weapon = 1,
			switch = 0,
			priority = 0,
			nextAction = "normal2",
			
			Events = 
			{
				["SysCollideDown"] =
				{
					Func = function(this)
						this.action.skill:NextAction();
					end,	
				},	
			},
		},	
		
		["normal2"] =
		{
			name = "land_blades",
			loop = false,
			stance = "ground_action",
			weapon = 1,
			switch = 0,
			priority = 0,
			nextAction = "run_blades",
			
			Events =
			{
				["Land"] =
				{
					time = 0.21,
					Func = function(this)
						Self:SetMoveSpeed(0.0);
					end,	
				},
			},
		},	
		
		--mace
		["mace0"] = 
		{
			name = "jump_mace",
			loop = false,
			stance = "hang_free",	
			weapon = 1,
			switch = 0,
			priority = 1,
			nextAction = "mace1",
			
			IsReady = function(this)
				return Self:HasEquipSubType("Hammer");
			end,
		},
		
		["mace1"] = 
		{
			name = "hang_mace",
			loop = true,
			stance = "hang_free",
			weapon = 1,
			switch = 0,
			priority = 1,
			nextAction = "mace2",
			
			Events = 
			{
				["SysCollideDown"] =
				{
					Func = function(this)
						this.action.skill:NextAction();
					end,	
				},	
			},
		},
		
		["mace2"] = 
		{
			name = "land_mace",
			loop = false,
			stance = "ground_action",
			weapon = 1,
			switch = 0,
			priority = 1,
			nextAction = "run_mace",
			
			Events =
			{
				["Land"] =
				{
					time = 0.07,
					Func = function(this)
						Self:SetMoveSpeed(0.0);
					end,	
				},
			},
		},
		
		--blades
		["blades0"] = 
		{
			name = "jump_blades",
			loop = false,
			stance = "hang_free",	
			weapon = 1,
			switch = 0,
			priority = 1,
			nextAction = "blades1",
			
			IsReady = function(this)
				return Self:HasEquipSubType("Glave");
			end,
		},
		
		["blades1"] = 
		{
			name = "hang_blades",
			loop = true,
			stance = "hang_free",
			weapon = 1,
			switch = 0,
			priority = 1,
			nextAction = "blades2",
			
			Events = 
			{
				["SysCollideDown"] =
				{
					Func = function(this)
						this.action.skill:NextAction();
					end,	
				},	
			},
		},
		
		["blades2"] = 
		{
			name = "land_blades",
			loop = false,
			stance = "ground_action",
			weapon = 1,
			switch = 0,
			priority = 1,
			nextAction = "run_blades",
			
			Events =
			{
				["Land"] =
				{
					time = 0.21,
					Func = function(this)
						Self:SetMoveSpeed(0.0);
					end,	
				},
			},
		},
		
		--shield
		["shield0"] = 
		{
			name = "jump_shield",
			loop = false,
			stance = "hang_free",	
			weapon = 1,
			switch = 0,
			priority = 1,
			nextAction = "shield1",
			
			IsReady = function(this)
				return Self:HasEquipSubType("Shield");
			end,
		},
		
		["shield1"] = 
		{
			name = "hang_shield",
			loop = true,
			stance = "hang_free",
			weapon = 1,
			switch = 0,
			priority = 1,
			nextAction = "shield2",
			
			Events = 
			{
				["SysCollideDown"] =
				{
					Func = function(this)
						this.action.skill:NextAction();
					end,	
				},	
			},
		},
		
		["shield2"] = 
		{
			name = "land_shield",
			loop = false,
			stance = "ground_action",
			weapon = 1,
			switch = 0,
			priority = 1,
			nextAction = "run_shield",
			
			Events =
			{
				["Land"] =
				{
					time = 0.21,
					Func = function(this)
						Self:SetMoveSpeed(0.0);
					end,	
				},
			},
		},
	},	
}