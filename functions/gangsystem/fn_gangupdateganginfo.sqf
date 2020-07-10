if (!hasInterface) exitWith {}; private["_display","_info","_gang","_member","_gangHouse","_gangHouseUpgrades","_gangHouseUpgradesText","_temp","_count"]; disableSerialization; _display = findDisplay 3100; if (isNull _display) exitWith {}; _info = _display displayCtrl 3104; _gang = (group player) getVariable ["zero_var_gang",[]]; if(_gang isEqualTo []) exitWith {"Du bist in keiner Gang" call zero_fnc_msg; closeDialog 0;}; _temp = false; if(typeName (_gang select(count _gang -1)) == "BOOL") then {_temp = true;}; _member = _gang select 3; _gangHouse = _gang select 6; _gangHouseUpgrades = _gangHouse select 1; _gangHouseUpgradesText = ""; _gangHouse = _gangHouse select 0; if(_gangHouse isEqualTo []) then { _gangHouse = "Nicht ausgewählt"; _gangHouseUpgradesText = "keine"; }else{ _gangHouse = (nearestBuilding (call compile format["%1",_gangHouse])); _gangHouse = format["%1 - %2",getText(configFile >> "CfgVehicles" >> (typeOf _gangHouse) >> "displayName"),mapGridPosition _gangHouse]; if(_gangHouseUpgrades isEqualTo []) then { _gangHouseUpgradesText = "keine";
}else{ _count = count _gangHouseUpgrades; { _gangHouseUpgradesText = _gangHouseUpgradesText + format["%1%2", _x,if(_forEachIndex == _count-1) then {""} else {", "}]; } forEach _gangHouseUpgrades; }; }; if(_temp) then { _info ctrlSetStructuredText parseText format[ "
		<t align='center'>Informationen über %1 (temporär)</t><br/>
		<br/>
		<t align='center'>Anzahl Mitglieder: %2/%3</t><br/>
		<t align='center'>Kontostand: %4€</t><br/>
		",_gang select 1, [count _member] call zero_fnc_numberText, [_gang select 4] call zero_fnc_numberText, [_gang select 5] call zero_fnc_numberText]; }else{ _info ctrlSetStructuredText parseText format[ "
		<t align='center'>Informationen über %1 </t><br/>
		<br/>
		<t align='center'>Anzahl Mitglieder: %2/%3</t><br/>
		<t align='center'>Kontostand: %4€</t><br/>
		<t align='center'>Hauptquartier: %5</t><br/>
		<t align='center'>Hauptquartier Upgrades: %6</t><br/>
		",_gang select 1, [count _member] call zero_fnc_numberText, [_gang select 4] call zero_fnc_numberText, [_gang select 5] call zero_fnc_numberText, _gangHouse,_gangHouseUpgradesText]; };
