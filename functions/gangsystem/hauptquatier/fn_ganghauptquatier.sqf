if (!hasInterface) exitWith {}; private["_house","_group","_gang","_gangHouse","_name","_action","_display","_titel","_list","_button","_houset","_button2"]; _house = param [0,"",[""]]; disableSerialization; _group = (group player); _gang = _group getVariable ["zero_var_gang",[]]; if(_gang isEqualTo []) exitWith {"Du bist in keiner Gang" call zero_fnc_msg;}; if(count _gang < 7) exitWith {"Es ist ein Fehler aufgetreten" call zero_fnc_msg;}; if(typeName (_gang select(count _gang -1)) == "BOOL") exitWith {"Nicht für temporäre Gangs verfügbar!" call zero_fnc_msg;}; uiSleep random(0.75); if(!isNull (_group getVariable["zero_var_gangHausInUse",objNull])) exitWith {"Auf das Hausmenü wird bereits zugegriffen!" call zero_fnc_msg;}; _group setVariable["zero_var_gangHausInUse",player,true]; _gangHouse = _gang select 6; _gangHouse = _gangHouse select 0; if(_gangHouse isEqualTo []) then { if(_house isEqualTo "") then { createDialog "zero_var_ganglist"; _display = findDisplay 3300; if (isNull _display) exitWith {}; _titel = _display displayCtrl 3301; _list = _display displayCtrl 3302; _button = _display displayCtrl 3303; _button2 = _display displayCtrl 3304; _titel ctrlSetStructuredText parseText "<t align='left' size='1.3'>Bitte wähle ein Hauptquatier:</t>"; _button ctrlSetText "Auswählen"; _button buttonSetAction "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;if(lbCurSel 3302 isEqualTo -1) exitWith {""Du hast nichts ausgewählt!"" call zero_fnc_msg;}; [lbData[3302,(lbCurSel 3302)]] spawn zero_fnc_gangHauptquatier;(group player) setVariable[""zero_var_gangHausInUse"",nil,true];";
_button2 ctrlShow false; lbClear _list; { _houset = nearestBuilding (call compile format["%1", _x select 0]); if(!((typeOf _houset) in ["Land_i_Garage_V1_F","Land_i_Garage_V2_F"])) then { _name = getText(configFile >> "CfgVehicles" >> (typeOf _houset) >> "displayName"); _list lbAdd format ["%1 - %2", _name, mapGridPosition _houset]; _list lbSetData[(lbSize _list)-1, str(_x select 0)]; }; } forEach zero_var_houses; }else{ _house = call compile format["%1",_house]; _house = nearestBuilding (call compile format["%1", _house]); _name = getText(configFile >> "CfgVehicles" >> (typeOf _house) >> "displayName"); _action = [ format["Möchtest du %1 - %2 als das Ganghauptquartier der Gang auswählen?",_name, mapGridPosition _house], "Ganghauptquartier auswählen", localize "STR_Global_Yes", localize "STR_Global_No" ] call BIS_fnc_guiMessage; if(!_action) exitWith {}; _gang set[6,[getPosASLW _house,[]]]; _house setVariable["zero_var_gangID",_gang select 0,true]; _group setVariable["zero_var_gang",_gang,true]; [[clientOwner,5,[_gang select 0,_gang select 6, _gang select 5]],"zero_fnc_updateGang",zero_var_HC1_owner,false] call zero_fnc_sendPacket; [[str(getPosASLW _house)],"zero_fnc_gangHauptquatierUpdate",units _group,false] call zero_fnc_sendPacket; ["Das Ganghauptquartier wurde aktualisiert!",2] call zero_fnc_msg; closeDialog 0; }; }else{ [] spawn zero_fnc_gangHauptquatierUpgradeMenu; }; [] spawn zero_fnc_gangUpdateGanginfo; [] spawn { uiSleep 0.5; waitUntil {isNull (findDisplay 3300)}; (group player) setVariable["zero_var_gangHausInUse",nil,true]; };