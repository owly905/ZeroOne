if (!hasInterface) exitWith {}; private["_exit","_name"]; disableSerialization; waitUntil {!isNull (findDisplay 9000)}; _name = ""; _exit = false; if(playerSide isEqualTo west) then { if(call(zero_var_copLevel) < 5 && (call(zero_var_sekLevel) < 3)) exitWith {(localize "STR_NOTF_Rank") call zero_fnc_msg; _exit = true;}; _name = if(call(zero_var_sekLevel) < 3) then {"Polizei"}else{"SEK"}; }else{ if(playerSide isEqualTo independent) then { if(call(zero_var_medicLevel) < 6) exitWith {(localize "STR_NOTF_Rank") call zero_fnc_msg; _exit = true;}; _name = "Feuerwehr";
}else{ if (!zero_var_channel_send) exitWith {(localize "STR_NOTF_Broadcaster_Wait") call zero_fnc_msg; _exit = true;}; if ( ([3, 0] call zero_fnc_Z0Check) <= 499999 ) exitWith {(localize "STR_NOTF_Broadcaster_Not_Enough") call zero_fnc_msg; _exit = true;}; [1, ([3, 0] call zero_fnc_Z0Check) - 500000] call zero_fnc_Z0Check; _name = name player; zero_var_channel_send = false; [] spawn { uiSleep 600; zero_var_channel_send = true; }; }; }; if (_exit) exitWith {}; [[3,format ["%1: %2",_name,(ctrlText 9001)]],"zero_fnc_broadcast",(allPlayers - entities "HeadlessClient_F")] call zero_fnc_sendPacket;
