if !(hasInterface) exitWith {}; if (isNil "Zero_var_spawnMenuArray" || {isNil "Zero_var_spawn_point"}) exitWith {}; (findDisplay 46) displayAddEventHandler ["KeyDown", "_this call zero_fnc_keyHandler"]; (Zero_var_spawnMenuArray select Zero_var_spawn_point) params ["", "_position", "_dir", "_display"]; player setDir _dir; [player, _position] call zero_fnc_setPosATL; titleText [format ["%2 %1", _display, localize "STR_Spawn_Spawned"], "BLACK IN"]; hint ""; Zero_var_spawnMenuArray = nil; if(zero_var_firstSpawn) then { zero_var_firstSpawn = false; playMusic ""; if(!isNil "_volume") then { 0 fadeMusic _volume; }; playSound "JoinSound"; if(zero_var_donator > 0) then { ["Herzlichen Glückwunsch! Du bist VIP-Member.",2] call zero_fnc_msg;}; [format["PLAYER SPAWNED: %1 (%2, %3) ist mit %4, %5, %6, %7, %8 (Rucksack: %9, Weste: %10, Kleidung: %11) gespawnt", player getVariable["zero_var_realname",name player], getPlayerUID player, playerSide, zero_var_gear param[6,"",[""]], zero_var_gear param[7,"",[""]], zero_var_gear param[0,"",[""]], zero_var_gear param[1,"",[""]], zero_var_gear param[2,"",[""]]], backpackItems player, vestItems player, uniformItems player ] call zero_fnc_zoLog;
}else{ if(isNil "zero_var_trainride") then { [[getPlayerUID player,player getVariable["zero_var_realname",name player]],"zero_fnc_wantedRemove",zero_var_HC1_owner] call zero_fnc_sendPacket; } else { zero_var_trainride = nil; }; }; if(!isNil "zero_var_combatlog") then { ["Du wurdest des Combat-Log überführt! Die Admins wurden informiert!",4] call zero_fnc_msg; zero_var_combatlog = nil; }; if(!isNil "zero_var_gang_kicked") then { zero_var_gang_kicked = nil; [player] joinSilent grpNull; }; profileNamespace setVariable["zero_killed",nil]; closeDialog 0; 2 cutRsc ["zero_var_playerHUD","PLAIN"]; [] call zero_fnc_hudUpdate; player switchCamera "EXTERNAL"; showHUD [true,true,true,true,true,false,true,true]; setCurrentChannel 5; enableRadio false; enableSentences false; 0 enableChannel [false,false]; 1 enableChannel [true,false]; 2 enableChannel [false,false]; 3 enableChannel [true,true]; 4 enableChannel [true,true]; 5 enableChannel [true,true];
