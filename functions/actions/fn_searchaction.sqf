if (!hasInterface) exitWith {}; private["_unit","_chance"]; _unit = param[0,objNull,[objNull]]; if(isNull _unit) exitWith {}; [localize "STR_NOTF_Searching",-1] call zero_fnc_msg; if(player distance _unit > 5 || !alive player || !alive _unit) exitWith { (localize "STR_ISTR_Lock_TooFar") call zero_fnc_msg;
}; _chance = ["search"] call zero_fnc_getSkillValueCharacter; [[player,_chance],"zero_fnc_searchClient",_unit] call zero_fnc_sendPacket; zero_var_action_inUse = false;
