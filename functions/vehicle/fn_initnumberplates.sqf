if(!(playerSide in [CIVILIAN,EAST])) exitWIth {["Du kannst das nur als Zivilist",0,"Kennzeichen-Verwaltung",true,2] call zero_fnc_msg}; if(zero_var_donator < 3) exitWith {["Du kannst das nur als Premiumpack Besitzer",0,"Kennzeichen-Verwaltung",true,2] call zero_fnc_msg}; disableSerialization; createDialog "zero_var_numberplate"; _display = findDisplay 520000; ctrlEnable[520002,false]; ctrlEnable[520003,false]; _arr = [getplayeruid player, profilename]; zero_var_platesveh = []; _index = 0; { if((_x getVariable ["zero_var_vehicle_real_owner",[]]) isEqualTo _arr) then { _type = typeof _x; if((getNumber(missionconfigfile >> "zero_CfgVehicles" >> _type >> "illegal") isEqualTo 0) && {local _x}) then { lbAdd[520000, getText(configFile >> "CfgVehicles" >> _type >> "displayName")]; zero_var_platesveh pushBack _x; lbSetPicture [520000, _index, getText(configFile >> "CfgVehicles" >> _type >> "picture")]; _index = _index + 1; }; }; } forEach (player nearEntities [["Car","Tank","Motorcycle"],100]); if(_index isEqualTO 0) then { lbAdd[520000, "Kein Fahrzeug vorhanden"]; lbSetData[520000, 0, "-1"]; }; (_display displayCtrl 520000) ctrlSetEventhandler ["LbSelChanged", "
	disableSerialization;
	_lb = _this select 0;
	_index = _this select 1;
	if((_lb lbData _index) isEqualTo ""-1"") exitWith {
		ctrlEnable[520002,false];
		ctrlEnable[520003,false];
		ctrlSetText[520001,""""];
	};

	_plate = getPlateNumber (zero_var_platesveh select _index);
	_parts = _plate splitString ""-"";
	_city = (_parts select 0) call {
		if(_this isEqualTo ""KAV"") exitWith {""Kavala""};
		if(_this isEqualTo ""ATH"") exitWith {""Athira""};
		if(_this isEqualTo ""PYR"") exitWith {""Pyrgos""};
		if(_this isEqualTo ""SOF"") exitWith {""Sofia""};
		if(_this isEqualTo ""NEO"") exitWith {""Neochori""};
		""Altis""
	};
	ctrlSetText[520001, format[""Das KFZ wurde in %1 registriert"",_city]];
	ctrlSetText[520002, _parts select 1];
	ctrlEnable[520002,true];
	ctrlEnable[520003,true];
"];
(_display displayCtrl 520003) ctrlSetEventhandler ["ButtonClick", "
	_this spawn {
		_txt = ctrlText 520002;
		_cur = lbCurSel 520000;
		if(_cur isEqualTo -1) exitWith {ctrlShow[520003,false]};
		if((count _txt) < 3) exitWith {[""Das Kennzeichen kann nicht leer sein!"",0,""Kennzeichen-Verwaltung"",true,2] call zero_fnc_msg};
		_bad = false;
		{
			if (!(_x in [65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,97,98,99,100,101,102,103,104,105,106,107,108,109,110,111,112,113,114,115,116,117,118,119,120,121,122,48,49,50,51,52,53,54,55,56,57])) exitWith {_bad = true};
		} forEach (toArray _txt);
		if(_bad) exitWith {[""Das Kennzeichen darf keine Sonderzeichen enthalten."",0,""Kennzeichen-Verwaltung"",true,2] call zero_fnc_msg};
		_bool = [""Die Änderung kostet 250.000€. Willst du wirklich fortfahren?"", ""Kennzeichen-Verwaltung"", true, true] call bis_fnc_guimessage;
		if(!_bool) exitWith {};
		_var = [3, 0] call zero_fnc_Z0Check;
		if(_var < 250000) exitWith {(localize ""STR_NOTF_NotEnoughMoney"") call zero_fnc_msg;};
		[1, _var - 250000] call zero_fnc_Z0Check;
		_veh = zero_var_platesveh select _cur;
		if(!(local _veh)) exitWith {[""Da hat wohl jemand anders den Schlüssel gedreht."",0,""Kennzeichen-Verwaltung"",true,2] call zero_fnc_msg};
		_plate = getPlateNumber _veh;
		_city = (_plate splitString ""-"") select 0;
		_txt = format[""%1-%2"",_city, _txt];
		[[player,_veh,_txt],""zero_fnc_updateNumberplate"",zero_var_hc1_owner] call zero_fnc_sendPacket;
		_veh setPlateNumber _txt;
		zero_var_platesveh = nil;
		closeDialog 0;
	};
"];
