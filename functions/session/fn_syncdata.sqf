if (!hasInterface) exitWith {}; if(zero_var_session_time) exitWith {(localize "STR_Session_SyncdAlready") call zero_fnc_msg;}; [] call zero_fnc_updateRequest;
[localize "STR_Session_SyncData",1] call zero_fnc_msg; [] spawn { zero_var_session_time = true; uiSleep (5 * 60); zero_var_session_time = false; };
