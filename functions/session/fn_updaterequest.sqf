if (!hasInterface) exitWith {}; private["_packet","_array","_flag","_disconnect"]; _disconnect = param[0,false,[false]]; if (!zero_var_session_completed) exitWith{}; if(zero_var_synced && !_disconnect) exitWith {}; [] spawn { zero_var_synced = true; uiSleep 10; zero_var_synced = false; }; _packet = [getPlayerUID player,(profileName),zero_var_playerSide,([3, 0] call zero_fnc_Z0Check),([2, 0] call zero_fnc_Z0Check)]; _array = []; _flag = switch(playerSide) do {case west: {"cop"}; case independent: {"med"}; default {"civ"};
}; { if(_x select 1 == _flag) then { _array pushBack [_x select 0,(missionNamespace getVariable (_x select 0))]; }; } forEach zero_var_licenses; _packet pushBack _array; [] call zero_fnc_saveGear; if (playerSide in [civilian,east] && zero_var_killed) then {zero_var_gear = [];}; _packet pushBack zero_var_gear; if(playerSide isEqualTo civilian || playerSide isEqualTo east) then {_packet pushBack zero_var_is_arrested;}; _packet set[8,zero_var_skills]; [_packet,"zero_fnc_updatePlayerInfo",zero_var_HC1_owner,false] call zero_fnc_sendPacket;