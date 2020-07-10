if (!hasInterface) exitWith {}; closeDialog 0; createDialog "zero_var_buffmenu"; private _group = group player; private _arr = _group getVariable ["zero_var_gang_buffs",[[],[]]];
if (_arr isEqualTo [[],[]]) exitWith { [[_group],"zero_fnc_getBuff",zero_var_hc1_owner,false] call zero_fnc_sendPacket; }; [_arr] call zero_fnc_buffMenu_load;
