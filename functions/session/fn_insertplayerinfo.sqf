if(zero_var_session_completed || !hasInterface) exitWith {}; cutText[localize "STR_Session_QueryFail","BLACK FADED"]; 0 cutFadeOut 9999999; [[getPlayerUID player,profileName,([3, 0] call zero_fnc_Z0Check),([2, 0] call zero_fnc_Z0Check),clientOwner],"zero_fnc_insertRequest",zero_var_HC1_owner,false] call zero_fnc_sendPacket;

