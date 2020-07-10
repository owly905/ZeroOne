if (!hasInterface) exitWith {};

{ 
	if(typeName(profileNamespace getVariable[_x,0]) == typeName "") then { 
		[format ["ADMIN: %1 (%2) wollte %3 ausfuehren", name player, getPlayerUID player,str(profileNamespace getVariable[_x,0])]] call zero_fnc_zoLog; 
	}; 
} forEach ["igui_bcg_rgb_a","igui_bcg_rgb_r","igui_bcg_rgb_g","igui_bcg_rgb_b","IGUI_grid_mission_X","IGUI_grid_mission_Y","IGUI_grid_mission_W","IGUI_grid_mission_H"];

{ 
	[_x] call zero_fnc_addExplosionEventhandler; 
} forEach (entities [["CAManBase","Car","Air","Ship"], [], true, false]); 

[] spawn zero_fnc_loadClient; 
zero_var_doJip = compileFinal 'true';
