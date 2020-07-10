if(zero_var_session_completed || !hasInterface) exitWith {}; cutText[format[localize "STR_Session_Query",getPlayerUID player],"BLACK FADED"]; 0 cutFadeOut 999999999;
[[getPlayerUID player,playerSide,clientOwner,name player],"zero_fnc_queryRequest",zero_var_HC1_owner,false] call zero_fnc_sendPacket;
