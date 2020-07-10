if (!hasInterface) exitWith {}; private["_group"]; _group = param[0,grpNull,[grpNull]]; if(isNull _group) exitWith {}; ["Deine Gang wurde vom Owner aufgelöst!",2] call zero_fnc_msg;
uiSleep (random (1)); [player] joinSilent grpNull; [[clientOwner,8,[0, getPlayerUID player, playerSide]],"zero_fnc_updateGang",zero_var_HC1_owner,false] call zero_fnc_sendPacket;
