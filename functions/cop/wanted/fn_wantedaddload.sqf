if (!hasInterface) exitWith {}; 


disableSerialization; if (_this isEqualTo 0) exitWith { waitUntil {!isNull (findDisplay 9900)}; call zero_fnc_refreshPlayers; uiSleep 1; lbClear 9902; lbClear 9991; 

{ if (_x != player && alive _x && ((side _x) != west)) then { lbAdd [9902, format["%1 (%2)",(_x getVariable["zero_var_realname", name _x]), (switch (side _x) do { case civilian: {localize "STR_Cell_Civ"}; case east: {localize "STR_Cell_Civ"}; case independent: {localize "STR_Cell_Med"}; })]]; lbSetData [9902, (lbSize 9902)-1, netId _x];
}; } forEach zero_var_localplayerlist; lbSort [9902,"ASC"]; { lbAdd [9991, _x]; } forEach (zero_var_wantedListReasons); }; private "_cfg"; if((count zero_var_wantedCurrentReasons) != 0)then{ _cfg = configProperties [missionConfigFile >> "zero_wanted" >> str (zero_var_wantedCurrentReasons select (lbCurSel 9991))]; }else{ _cfg = configProperties [missionConfigFile >> "zero_wanted" >> str (lbCurSel 9991)]; }; ctrlSetText [1401,getText (_cfg select 1)]; ctrlSetText [1402,getText (_cfg select 2)]; ctrlSetText [1403,str getNumber (_cfg select 3)]; ctrlSetText [1005,(if (getNumber (_cfg select 4) isEqualTo 0) then [{"Nein"},{"Ja"}])]; ctrlSetText [1400,""];
