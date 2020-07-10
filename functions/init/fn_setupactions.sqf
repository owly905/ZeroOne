if (!hasInterface) exitWith {};
private["_clear"];

if (playerSide isEqualTo west) then {
	zero_var_actions pushBack 
		(player addAction["Waffe beschlagnahmen", { [[],"zero_fnc_seizePlayerWeaponAction",cursorObject] call zero_fnc_sendPacket;
		titleText[format[localize "STR_ISTR_WeaponsRemoved", cursorObject getVariable["zero_var_realname", name cursorObject]],"PLAIN"] }, 
		cursorObject,0,false,false,"",'!isNull cursorObject && (player distance cursorObject) < 6 && speed cursorObject < 2 &&
		cursorObject isKindOf "Man" && (isPlayer cursorObject) && (side cursorObject == civilian || side cursorObject == east) &&
		(cursorObject getVariable["zero_var_restrained",false])']);
	
	zero_var_actions pushBack 
		(player addAction["Kleidung beschlagnahmen",{ [[],"zero_fnc_seizePlayerGearAction",cursorObject,false] call zero_fnc_sendPacket;
		titleText[format[localize "STR_ISTR_ClothingRemoved", cursorObject getVariable["zero_var_realname", name cursorObject]],"PLAIN"]; },
		cursorObject,0,false,false,"",'!isNull cursorObject && (player distance cursorObject) < 6 && speed cursorObject < 2 &&
		cursorObject isKindOf "Man" && (isPlayer cursorObject) && (side cursorObject == civilian || side cursorObject == east) &&
		(cursorObject getVariable["zero_var_restrained",false])']);

	zero_var_actions pushBack 
		(player addAction["Objekte entfernen",{ _clear = nearestObjects [player,["weaponholder","GroundWeaponHolder","WeaponHolderSimulated"],3];
		for "_i" from 0 to (count _clear - 1) do {[(_clear select _i)] call zero_fnc_deleteVehicle; uiSleep 0.06;};
		titleText[format[localize "STR_ISTR_ObjectsDestroyed"],"PLAIN"]; }, cursorObject,0,false,false,"",
		'(count(nearestObjects [player,["weaponholder","GroundWeaponHolder","WeaponHolderSimulated"],4]) > 0)']);

	zero_var_actions pushBack 
		(player addAction["Geld abnehmen",zero_fnc_robZOAction,"",0,false,false,"",'!isNull cursorObject && (player distance cursorObject) < 6 &&
		speed cursorObject < 2 && cursorObject isKindOf "Man" && (isPlayer cursorObject) && (side cursorObject == civilian || side cursorObject == east) &&
		(cursorObject getVariable["zero_var_restrained",false])']);
};

if (playerSide isEqualTo civilian || playerSide isEqualTo east) then {
		zero_var_actions pushBack
		(player addAction["Spieler ausrauben",zero_fnc_robZOAction,"",0,false,false,"",'!isNull cursorObject && player distance cursorObject < 5 &&
		isPlayer cursorObject && (((lifeState cursorObject) == "Incapacitated") || (cursorObject getVariable ["zero_var_surrender", false])) && 
		!(cursorObject getVariable["zero_var_robbed",false]) && (!(player getVariable["zero_var_restrained",false])) && side cursorObject != independent']);
	
	if(zero_var_playerSide isEqualTo east) then {
		zero_gang_flag addAction["<t color='#FF0000'>Gang Eroberung</t>",zero_fnc_gangEroberung,"",0,false,false,"",
		'_this distance player < 3 && {isNull (objectParent player)} && {!zero_var_action_inUse} && {zero_gang_flag getVariable["zero_var_gangFight",-1] > 0}'];
	}; 
}; 

if(playerSide isEqualTo independent) then {
	zero_var_actions pushBack
		(player addAction["Selbstbehandlung",{ [0] spawn zero_fnc_selfhealing; },"",0,false,false,"",'(zero_var_medipack > 0) &&
		{((damage player) > 0.01)} && {(!(player getVariable["zero_var_restrained",false]))} && {isNull (objectParent player)}']);
	
	player addAction["Spieler behandeln", { [0,cursorObject] spawn zero_fnc_otherhealing; },"",0,false,false,"",'(zero_var_medipack > 0) &&
		{((speed cursorObject) < 1)} && {((damage cursorObject) > 0.01)} && {!isNull cursorObject} && {(player distance cursorObject) < 2} &&
		{(!(player getVariable["zero_var_restrained",false]))} && {cursorObject isKindOf "Man"} && {(isPlayer cursorObject)} &&
		{isNull (objectParent player)}'];
} else {
	zero_var_actions pushBack 
		(player addAction["Selbstbehandlung",{ [0] spawn zero_fnc_selfhealing; },"",0,false,false,"",'(zero_var_medipack > 0) &&
		{((damage player) > 0.26)} && {(!(player getVariable["zero_var_restrained",false]))} && {isNull (objectParent player)}']);
		
	zero_var_actions pushBack
		(player addAction["Selbstbehandlung (Großer Erste Hilfe Kasten)",{ [1] spawn zero_fnc_selfhealing; },"",0,false,false,"",
		'(zero_var_medipack_large > 0) && {((damage player) > 0.01)} && {(!(player getVariable["zero_var_restrained",false]))} &&
		{isNull (objectParent player)}']);
		
	player addAction["Spieler behandeln", { [0,cursorObject] spawn zero_fnc_otherhealing; },"",0,false,false,"",'(zero_var_medipack > 0) &&
		{((speed cursorObject) < 1)} && {((damage cursorObject) > 0.26)} && {!isNull cursorObject} && {(player distance cursorObject) < 2} &&
		{(!(player getVariable["zero_var_restrained",false]))} && {cursorObject isKindOf "Man"} && {(isPlayer cursorObject)} && {isNull (objectParent player)}'];
	
	player addAction["Spieler behandeln (Großer Erste Hilfe Kasten)", { [1,cursorObject] spawn zero_fnc_otherhealing; },"",0,false,false,"",
		'(zero_var_medipack_large > 0) && {((speed cursorObject) < 1)} && {((damage cursorObject) > 0.01)} && {!isNull cursorObject} &&
		{(player distance cursorObject) < 2} && {(!(player getVariable["zero_var_restrained",false]))} && {cursorObject isKindOf "Man"} &&
		{(isPlayer cursorObject)} && {isNull (objectParent player)}'];
}; 

player addAction["Leiche ausrauben",zero_fnc_pickupMoney,"",0,false,false,"",'!isNull cursorObject && player distance cursorObject < 3.5 &&
	!isPlayer cursorObject && !alive cursorObject && (!(player getVariable["zero_var_restrained",false])) && (!isNil {cursorObject getVariable
	"zero_var_dead_money"})']; player addAction["Interagieren",zero_fnc_handleInteraction,"",0,false,false,"",'isNull (objectParent player) &&
	{!isNull cursorObject} && {player distance cursorObject < 3} && {!isNil {cursorObject getVariable "zero_var_interaction"}}'];
