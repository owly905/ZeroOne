if (!hasInterface) exitWith {}; if !(params [["_unit", objNull, [objNull]], ["_shooter", objNull, [objNull]]]) exitWith {zero_var_istazed = false;}; if (playerSide isEqualTo west) exitWith {zero_var_istazed = false;}; if (_shooter isKindOf "Man" && {alive _unit}) then { if(!zero_var_istazed) then { zero_var_istazed = true; if(typeOf (vehicle player) in ["B_Quadbike_01_F","C_Kart_01_Blu_F","C_Kart_01_Fuel_F","C_Kart_01_Red_F","C_Kart_01_Vrana_F"]) then { while {!isNull (objectParent player)} do { player action ["Eject",vehicle player]; }; }; [] call zero_fnc_closeGUIs; private _all = (allPlayers - entities "HeadlessClient_F") select {_x distance player < 350}; [[player],"zero_fnc_tazeSound",_all] call zero_fnc_sendPacket; player setUnconscious true; [[0,format[localize "STR_NOTF_Tazed", player getVariable["zero_var_realname",name player], _shooter getVariable["zero_var_realname",name _shooter]]],"zero_fnc_broadcast",(allPlayers - entities "HeadlessClient_F")] call zero_fnc_sendPacket;
private _curWep = currentWeapon player; private _curMag = currentMagazine player; private _bulletC = 0; if (!(_curWep isEqualTo "") && {!(_curMag isEqualTo "")}) then { private _curWeaponMags = (magazinesAmmoFull player) select {(_x select 0) isEqualTo _curMag && {(_x select 4) isEqualTo _curWep}}; player setAmmo [_curWep, _bulletC]; _bulletC = (_curWeaponMags select 0) select 1; }; uiSleep 30; player setAmmo [_curWep, _bulletC]; zero_var_istazed = false; player setUnconscious false; player playMoveNow "AmovPercMstpSnonWnonDnon"; player allowDamage true; }; } else { zero_var_istazed = false; };