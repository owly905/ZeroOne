if (!hasInterface) exitWith {}; 

call zero_fnc_refreshPlayers; disableSerialization; createDialog "zero_var_wantedList"; lbClear 2401; if (call(zero_var_copLevel) < 3 && (call(zero_var_sekLevel) < 2)) then {ctrlShow [2405, false];
ctrlShow [2406, false];}; if(zero_var_wanted_list isEqualTo []) then { lbAdd [2401, localize "STR_PM_WantedList_sear"]; } else { [[clientOwner],"zero_fnc_wantedFetch",zero_var_HC1_owner] call zero_fnc_sendPacket; };
