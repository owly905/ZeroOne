if (!hasInterface) exitWith {}; ["Du wurdest aus der Gang geworfen.",2] call zero_fnc_msg; if (!(isNil "zero_var_gangHouse")) then {[""] call zero_fnc_gangHauptquatierUpdate;}; [[clientOwner,8,[0, getPlayerUID player, playerSide]],"zero_fnc_updateGang",zero_var_HC1_owner,false] call zero_fnc_sendPacket;
[[],"zero_fnc_refreshBuffs",player] call zero_fnc_sendPacket;
