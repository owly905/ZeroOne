if (!hasInterface) exitWith {}; private["_bad","_unit","_time","_licence","_temp","_temp2"]; _unit = param[0,objNull,[objNull]]; if(isNull _unit || _unit != player || zero_var_is_arrested) exitWith {}; _bad = param[1,false,[false]]; _time = param[2,15,[0]]; [1] call zero_fnc_useBag; 0 spawn mav_gps_fnc_stopNavigationScripted; player setVariable["zero_var_restrained",false,true]; if(player getVariable ["zero_var_restrained_ziptie", false]) then { player setVariable ["zero_var_restrained_ziptie", nil, true]; }; player setVariable["zero_var_escorting",false,true]; player setVariable["zero_var_transporting",false,true]; _licence = if(zero_var_license_civ_gun) then {"Waffenlizenz<br\>"} else {""}; if(zero_var_license_civ_rebel) then {_licence = format ["%1Rebellenlizenz<br\>", _licence];}; titleText[localize "STR_Jail_Warn","PLAIN"]; [_licence,1,"Durch die Verhaftung haben Sie folgende Lizenzen verloren"] call zero_fnc_msg; _temp2 = (getMarkerPos "jail_marker"); [[player, "zero_var_fnc_setPos", [player, [_temp2 select 0,_temp2 select 1,(_temp2 select 2)+0.5]]], "zero_fnc_remoteExecuteCommand", zero_var_HC1_owner] call zero_fnc_sendPacket;
if(_bad) then { waitUntil {alive player}; uiSleep 1; }; if(player distance (getMarkerPos "jail_marker") > 40) then { _temp = (getMarkerPos "jail_marker"); [[player, "zero_var_fnc_setPos", [player, [(_temp select 0), (_temp select 1), ((_temp select 2) + 1)]]], "zero_fnc_remoteExecuteCommand", zero_var_HC1_owner] call zero_fnc_sendPacket; }; { private _index = [_x,zero_var_inventory] call zero_fnc_findIndex; if(_index != -1) then { [false,_x,(zero_var_inventory select _index) select 1] call zero_fnc_handleZOInv; }; }forEach ["heroinu","heroinp","cocaine","cocainep","turtle","cannabis","marijuana","dunklematerie","lockpick","blastingcharge","boltcutter","zipties","moonshine","tuna"]; zero_var_is_arrested = true; removeAllWeapons player; {player removeMagazine _x} forEach (magazines player); [[player,_bad,_time,clientOwner],"zero_fnc_jailSys",zero_var_HC1_owner,false] call zero_fnc_sendPacket; [] call zero_fnc_updateRequest;