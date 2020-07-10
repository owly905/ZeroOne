private [ "_display", "_list", "_vehicles", "_colorArray", "_vehicleInfo", "_daySkin", "_name", "_color", "_folie", "_trunkSpace", "_gangEnable", "_gang", "_index", "_basePrice", "_exit", "_exit2", "_spawnPoints", "_spawnPoint", "_vehicle", "_logModeGang", "_logMode", "_lightright", "_lightleft", "_donator", "_setValue", "_airVehicles", "_insurance", "_vehiclelist", "_className" ]; private _step = param[ 0,0,[ 0,"",[] ] ]; disableSerialization; switch _step do { case 1: { if(!(ctrlEnabled ((findDisplay 2300) displayCtrl 2303)) || !(ctrlEnabled ((findDisplay 2300) displayCtrl 2304))) exitWith {}; ((findDisplay 2300) displayCtrl 2303) ctrlEnable false; ((findDisplay 2300) displayCtrl 2304) ctrlEnable false; { if( ( _x isKindOf "Car" ) || ( _x isKindOf "Air" ) || ( _x isKindOf "Ship" ) || ( _x isKindOf "Tank" ) || ( _x isKindOf "Submarine" ) ) then { for "_i" from 0 to ( count( getArray(configFile >> "CfgVehicles" >> ( typeOf _x ) >> "hiddenSelectionsTextures") ) - 1 ) do { _x setObjectMaterial [ _i,"A3\data_f\default.rvmat" ]; }; _x hideObject true; } else { _x hideObject false; }; false; } count ( [ 24745, 18902.2, 0 ] nearObjects 30 ); zero_var_vehicleShopCurrentStep = 1; _display = findDisplay 2300; (_display displayCtrl 2304) buttonSetAction "[0] spawn zero_fnc_vehicleShopStep;"; (_display displayCtrl 2303) buttonSetAction "[2] spawn zero_fnc_vehicleShopStep;"; (_display displayCtrl 2305) progressSetPosition (1/5); (_display displayCtrl 2306) ctrlSetStructuredText parseText format["<t align='center'>%1</t>","Fahrzeugtyp (1/5) ..."]; (_display displayCtrl 2307) ctrlSetStructuredText parseText "<t align='left'>Mietpreis: </t>"; (_display displayCtrl 2308) ctrlSetStructuredText parseText format["<t align='right' color='#8cff9b'>%1€</t>",[0] call zero_fnc_numberText]; (_display displayCtrl 2314) ctrlSetStructuredText parseText "<t align='left'>Kaufpreis: </t>"; (_display displayCtrl 2315) ctrlSetStructuredText parseText format["<t align='right' color='#8cff9b'>%1€</t>",[0] call zero_fnc_numberText]; (_display displayCtrl 2309) ctrlEnable true; (_display displayCtrl 2309) ctrlShow true; (_display displayCtrl 2310) ctrlShow true; (_display displayCtrl 2311) ctrlShow false; (_display displayCtrl 2312) ctrlShow false; (_display displayCtrl 2313) ctrlShow true; _list = (_display displayCtrl 2309); lbClear _list; { if((_x select 1) == (zero_var_vehicleShopInfo select 4)) then { _list lbAdd (_x select 0); _list lbSetData [(lbSize _list)-1,(_x select 1)]; _list lbSetPicture [(lbSize _list)-1,(_x select 2)]; }; false; } count [ ["Automobil","car","\a3\ui_f\data\map\MapControl\watertower_ca.paa"], ["Lastkraftwagen","truck","\a3\ui_f\data\map\MapControl\watertower_ca.paa"], ["Luftfahrzeug","air","\a3\ui_f\data\map\MapControl\watertower_ca.paa"], ["Rennfahrzeuge","kart","\a3\ui_f\data\map\MapControl\watertower_ca.paa"], ["Boote","ship","\a3\ui_f\data\map\MapControl\watertower_ca.paa"] ]; if( !isNil "zero_var_vehicleShopVehicleTypeIndex" ) then { _list lbSetCurSel zero_var_vehicleShopVehicleTypeIndex; } else { _list lbSetCurSel 0; }; [] spawn { uiSleep 0.1; ((findDisplay 2300) displayCtrl 2303) ctrlEnable true; ((findDisplay 2300) displayCtrl 2304) ctrlEnable true; }; }; case 2: { if(!(ctrlEnabled ((findDisplay 2300) displayCtrl 2303)) || !(ctrlEnabled ((findDisplay 2300) displayCtrl 2304))) exitWith {}; ((findDisplay 2300) displayCtrl 2303) ctrlEnable false; ((findDisplay 2300) displayCtrl 2304) ctrlEnable false; zero_var_vehicleShopCurrentStep = 2; _display = findDisplay 2300; (_display displayCtrl 2304) buttonSetAction "[1] spawn zero_fnc_vehicleShopStep;"; (_display displayCtrl 2303) buttonSetAction "[3,false] spawn zero_fnc_vehicleShopStep;"; (_display displayCtrl 2305) progressSetPosition (2/5); (_display displayCtrl 2306) ctrlSetStructuredText parseText format["<t align='center'>%1</t>","Fahrzeug aussuchen (2/5) ..."]; (_display displayCtrl 2307) ctrlSetStructuredText parseText "<t align='left'>Mietpreis: </t>"; (_display displayCtrl 2308) ctrlSetStructuredText parseText format["<t align='right' color='#8cff9b'>%1€</t>",[0] call zero_fnc_numberText]; (_display displayCtrl 2314) ctrlSetStructuredText parseText "<t align='left'>Kaufpreis: </t>"; (_display displayCtrl 2315) ctrlSetStructuredText parseText format["<t align='right' color='#8cff9b'>%1€</t>",[0] call zero_fnc_numberText]; (_display displayCtrl 2309) ctrlShow true; (_display displayCtrl 2310) ctrlShow true; (_display displayCtrl 2311) ctrlShow false; (_display displayCtrl 2312) ctrlShow false; (_display displayCtrl 2313) ctrlShow true; _vehicleList = getArray(missionConfigFile >> "zero_VehicleShops" >> (zero_var_vehicleShopInfo select 0) >> "vehicles"); if((zero_var_vehicleShopInfo select 4) == "air" && !isNil "zero_var_airstop") exitWith { zero_var_Camrunning = false; uiSleep .5; "Luftfahrzeuge können derzeit leider nicht ausgeparkt oder gekauft werden." call zero_fnc_msg; }; _list = (_display displayCtrl 2309); lbClear _list; { if(!(_x select 2 isEqualTo [])) then { if(!(call (call compile ((_x select 2) select 0)) < ((_x select 2) select 1))) then { _className = _x select 0; _vehicleInfo = [_className] call zero_fnc_fetchVehInfo; if(_className == "C_Rubberboat") then { _list lbAdd "Schlauchboot"; }else{ _list lbAdd (_vehicleInfo select 3); }; _list lbSetPicture [(lbSize _list)-1,(_vehicleInfo select 2)]; _list lbSetData [(lbSize _list)-1,_className]; _list lbSetValue [(lbSize _list)-1,_forEachIndex]; }; } else { _className = _x select 0; _vehicleInfo = [_className] call zero_fnc_fetchVehInfo; if(_className == "C_Rubberboat") then { _list lbAdd "Schlauchboot"; }else{ _list lbAdd (_vehicleInfo select 3); }; _list lbSetPicture [(lbSize _list)-1,(_vehicleInfo select 2)]; _list lbSetData [(lbSize _list)-1,_className]; _list lbSetValue [(lbSize _list)-1,_forEachIndex]; }; } forEach _vehicleList; if(isNil "zero_var_vehicleShopCtrlEventhandler") then { zero_var_vehicleShopCtrlEventhandler = _list ctrlAddEventHandler ["LBSelChanged","[] spawn zero_fnc_vehicleShopChanged"]; }; if(!isNil "zero_var_vehicleShopVehicleClassIndex") then { _list lbSetCurSel zero_var_vehicleShopVehicleClassIndex; } else { _list lbSetCurSel 0; }; [] spawn { uiSleep 0.1; ((findDisplay 2300) displayCtrl 2303) ctrlEnable true; ((findDisplay 2300) displayCtrl 2304) ctrlEnable true; }; }; case 3: { private _exited = param[1,false,[false]]; if(!_exited && {!(ctrlEnabled ((findDisplay 2300) displayCtrl 2303)) || !(ctrlEnabled ((findDisplay 2300) displayCtrl 2304))}) exitWith {}; ((findDisplay 2300) displayCtrl 2303) ctrlEnable false; ((findDisplay 2300) displayCtrl 2304) ctrlEnable false; if(!isNil "zero_var_vehicleShopFirstMaterial") then { if(zero_var_vehicleShopCurrentStep == 4) then { for "_i" from 0 to (count(getArray(configFile >> "CfgVehicles" >> zero_var_vehicleShopVehicleClass >> "hiddenSelectionsTextures")) -1) do { zero_var_vehicleShopVehicleObject setObjectMaterial [_i,"A3\data_f\default.rvmat"]; }; }; } else { if(!isNull zero_var_vehicleShopVehicleObject && {zero_var_vehicleShopVehicleObject isKindOf "Air"}) then { for "_i" from 0 to (count(getArray(configFile >> "CfgVehicles" >> zero_var_vehicleShopVehicleClass >> "hiddenSelectionsTextures")) -1) do { zero_var_vehicleShopVehicleObject setObjectMaterial [_i,"A3\data_f\default.rvmat"]; }; }; }; zero_var_vehicleShopCurrentStep = 3; _display = findDisplay 2300; (_display displayCtrl 2304) buttonSetAction "[2] spawn zero_fnc_vehicleShopStep;"; (_display displayCtrl 2303) buttonSetAction "[4,false] spawn zero_fnc_vehicleShopStep;"; (_display displayCtrl 2305) progressSetPosition (3/5); (_display displayCtrl 2306) ctrlSetStructuredText parseText format["<t align='center'>%1</t>","Fahrzeugskin aussuchen (3/5) ..."]; (_display displayCtrl 2307) ctrlSetStructuredText parseText "<t align='left'>Mietpreis: </t>"; (_display displayCtrl 2308) ctrlSetStructuredText parseText format["<t align='right' color='#8cff9b'>%1€</t>",[zero_var_vehicleShopVehicleMietpreis] call zero_fnc_numberText]; (_display displayCtrl 2314) ctrlSetStructuredText parseText "<t align='left'>Kaufpreis: </t>"; (_display displayCtrl 2315) ctrlSetStructuredText parseText format["<t align='right' color='#8cff9b'>%1€</t>",[zero_var_vehicleShopVehicleKaufpreis] call zero_fnc_numberText]; (_display displayCtrl 2309) ctrlEnable true; (_display displayCtrl 2309) ctrlShow false; (_display displayCtrl 2310) ctrlShow false; (_display displayCtrl 2311) ctrlShow true; (_display displayCtrl 2312) ctrlShow false; (_display displayCtrl 2313) ctrlShow false; _list = _display displayCtrl 2311; lbClear _list; _colorArray = getArray( missionConfigFile >> "zero_CfgVehicles" >> zero_var_vehicleShopVehicleClass >> "textures" ); for "_i" from 0 to count(_colorArray)-1 do { if(((_colorArray select _i) select 1) == (zero_var_vehicleShopInfo select 2)) then { if( !( ((_colorArray select _i) select 0) in ["X-MAS"] ) ) then { if(((_colorArray select _i) select 0) in (getArray(missionConfigFile >> "zero_VehicleShops" >> "donatorSkins"))) then { if(zero_var_donator > 0) then { _list lbAdd format["%1",(_colorArray select _i) select 0]; _list lbSetData [(lbSize _list)-1,str(_colorArray select _i)]; } else { _list lbAdd format["[Premiumpack] %1",(_colorArray select _i) select 0]; _list lbSetData [(lbSize _list)-1,str(_colorArray select _i)]; }; } else { if (((_colorArray select _i) select 0) in ["SEK"]) then { if ((call zero_var_sekLevel) > 0) then { _list lbAdd format["%1",(_colorArray select _i) select 0]; _list lbSetData [(lbSize _list)-1,str(_colorArray select _i)]; } else { _list lbAdd format["[Nur für das SEK] %1",(_colorArray select _i) select 0]; _list lbSetData [(lbSize _list)-1,str(_colorArray select _i)]; }; } else { _list lbAdd format["%1",(_colorArray select _i) select 0]; _list lbSetData [(lbSize _list)-1,str(_colorArray select _i)]; }; }; }; }; }; if((lbSize _list) == 0) then { _list lbAdd "Standard"; _list lbSetData [(lbSize _list)-1,"Default"]; }; if(!isNil "zero_var_vehicleShopVehicleSkinIndex") then { _list lbSetCurSel zero_var_vehicleShopVehicleSkinIndex; } else { _list lbSetCurSel 0; }; zero_var_vehicleShopFirstMaterial = nil; [] spawn { uiSleep 0.1; ((findDisplay 2300) displayCtrl 2303) ctrlEnable true; ((findDisplay 2300) displayCtrl 2304) ctrlEnable true; }; }; case 4:{ private _exited = param[1,false,[false]]; if(!_exited && {!(ctrlEnabled ((findDisplay 2300) displayCtrl 2303)) || !(ctrlEnabled ((findDisplay 2300) displayCtrl 2304))}) exitWith {}; ((findDisplay 2300) displayCtrl 2303) ctrlEnable false; ((findDisplay 2300) displayCtrl 2304) ctrlEnable false; _exit = false; _exit2 = false; if(typeName zero_var_vehicleShopVehicleSkinData == typeName []) then { if ((playerSide isEqualTo WEST) && (zero_var_vehicleShopCurrentStep == 3) && ((call zero_var_sekLevel) < 1) && ((zero_var_vehicleShopVehicleSkinData select 0) in ["SEK"])) then { _exit2 = true; } else { _exit2 = false; if((zero_var_vehicleShopCurrentStep == 3) && (zero_var_donator < 1) && (zero_var_vehicleShopVehicleSkinData select 0) in (getArray(missionConfigFile >> "zero_VehicleShops" >> "donatorSkins"))) then { _exit = true; } else { if( ( (zero_var_vehicleShopVehicleSkinData select 0) in ["X-MAS"] ) ) then { _exit = true; } else { _exit = false; }; }; }; } else { _exit = false; _exit2 = false; }; if(_exit) exitWith { titleRsc ["zero_var_introtext","PLAIN",2]; ((uiNamespace getVariable "zero_var_introdisplay") displayCtrl 5501) ctrlSetText "Der ausgewählte Skin ist leider nicht Verfügbar! Bitte wähle einen anderen."; zero_var_vehicleShopVehicleSkinIndex = nil; [3,true] spawn zero_fnc_vehicleShopStep; }; if(_exit2) exitWith { titleRsc ["zero_var_introtext","PLAIN",2]; ((uiNamespace getVariable "zero_var_introdisplay") displayCtrl 5501) ctrlSetText "Der ausgewählte Skin ist leider nur für das SEK verfügbar! Bitte wähle einen anderen."; zero_var_vehicleShopVehicleSkinIndex = nil; [3,true] spawn zero_fnc_vehicleShopStep; }; zero_var_vehicleShopCurrentStep = 4; _display = findDisplay 2300; (_display displayCtrl 2304) buttonSetAction "[3,false] spawn zero_fnc_vehicleShopStep;"; (_display displayCtrl 2303) buttonSetAction "[5] spawn zero_fnc_vehicleShopStep;"; (_display displayCtrl 2305) progressSetPosition (4/5); (_display displayCtrl 2306) ctrlSetStructuredText parseText format["<t align='center'>%1</t>","Fahrzeugfolierung (4/5) ..."];
(_display displayCtrl 2307) ctrlSetStructuredText parseText "<t align='left'>Mietpreis: </t>"; (_display displayCtrl 2308) ctrlSetStructuredText parseText format["<t align='right' color='#8cff9b'>%1€</t>",[zero_var_vehicleShopVehicleMietpreis] call zero_fnc_numberText]; (_display displayCtrl 2314) ctrlSetStructuredText parseText "<t align='left'>Kaufpreis: </t>"; (_display displayCtrl 2315) ctrlSetStructuredText parseText format["<t align='right' color='#8cff9b'>%1€</t>",[zero_var_vehicleShopVehicleKaufpreis] call zero_fnc_numberText]; (_display displayCtrl 2309) ctrlShow false; (_display displayCtrl 2310) ctrlShow false; (_display displayCtrl 2311) ctrlShow true; (_display displayCtrl 2312) ctrlShow false; (_display displayCtrl 2313) ctrlShow false; (_display displayCtrl 2301) ctrlSetText "Resources\Textures\Images\Fahrzeugshop_default.jpg"; _list = (_display displayCtrl 2311); lbClear _list; _list lbAdd format["%1","Keine Folie"]; _list lbSetData [(lbSize _list)-1,"Default"]; if(playerSide in [civilian, east]) then { _colorArray = ("true" configClasses (missionConfigFile >> "zero_CfgMaterials")); _daySkin = if((daytime > 17.75 || daytime < 5.40)) then {0} else {1}; { if(getNumber(_x >> "exclusive") > (zero_var_exclusive)) then { _list lbAdd format["[Sonderfolierung] %1",getText(_x >> "name")]; _list lbSetData [(lbSize _list)-1,"disabled"]; } else { if(getNumber(_x >> "donator") <= (zero_var_donator)) then { if(getNumber(_x >> "daySkin") >= _daySkin) then { _list lbAdd format["%1",getText(_x >> "name")]; _list lbSetData [(lbSize _list)-1,(configName _x)]; } else { _list lbAdd format["[Nur in der Nacht verfügbar] %1",getText(_x >> "name")]; _list lbSetData [(lbSize _list)-1,"disabled"]; }; } else { if(getNumber(_x >> "daySkin") >= _daySkin) then { _list lbAdd format["[Premiumpack] %1",getText(_x >> "name")]; _list lbSetData [(lbSize _list)-1,(configName _x)]; } else { _list lbAdd format["[Nur in der Nacht verfügbar] %1",getText(_x >> "name")]; _list lbSetData [(lbSize _list)-1,"disabled"]; }; }; }; } forEach _colorArray; }; if(!isNil "zero_var_vehicleShopVehicleMaterialIndex") then { _list lbSetCurSel zero_var_vehicleShopVehicleMaterialIndex; } else { zero_var_vehicleShopVehicleMaterialIndex = 0; zero_var_vehicleShopVehicleMaterial = "Default"; zero_var_vehicleShopVehicleMietpreisTemp = zero_var_vehicleShopVehicleMietpreis; zero_var_vehicleShopVehicleKaufpreisTemp = zero_var_vehicleShopVehicleKaufpreis; _list lbSetCurSel 0; }; [] spawn { uiSleep 0.1; ((findDisplay 2300) displayCtrl 2303) ctrlEnable true; ((findDisplay 2300) displayCtrl 2304) ctrlEnable true; }; }; case 5:{ if(!(ctrlEnabled ((findDisplay 2300) displayCtrl 2303)) || !(ctrlEnabled ((findDisplay 2300) displayCtrl 2304))) exitWith {}; ((findDisplay 2300) displayCtrl 2303) ctrlEnable false; ((findDisplay 2300) displayCtrl 2304) ctrlEnable false; if(zero_var_vehicleShopVehicleMaterial == "disabled") exitWith { titleRsc ["zero_var_introtext","PLAIN",3]; (((uiNamespace getVariable "zero_var_introdisplay") displayCtrl 5501) ctrlSetText "Die ausgewählte Folie ist nur für Premiumpack Besitzer verfügbar."); zero_var_vehicleShopVehicleMaterialIndex = nil; [4,true] spawn zero_fnc_vehicleShopStep; }; zero_var_vehicleShopCurrentStep = 5; if(zero_var_vehicleShopVehicleMaterial == "Default") then { _folie = "Keine"; } else { _folie = getText(missionConfigFile >> "zero_CfgMaterials" >> zero_var_vehicleShopVehicleMaterial >> "name"); }; _display = findDisplay 2300; (_display displayCtrl 2304) buttonSetAction "[4,false] spawn zero_fnc_vehicleShopStep;"; (_display displayCtrl 2303) buttonSetAction "[6] spawn zero_fnc_vehicleShopStep;"; (_display displayCtrl 2305) progressSetPosition (5/5); (_display displayCtrl 2306) ctrlSetStructuredText parseText format["<t align='center'>%1</t>","Deine Bestellung (5/5) ..."]; (_display displayCtrl 2307) ctrlSetStructuredText parseText "<t align='left'>Mietpreis: </t>"; (_display displayCtrl 2308) ctrlSetStructuredText parseText format["<t align='right' color='#8cff9b'>%1€</t>",[zero_var_vehicleShopVehicleMietpreisTemp] call zero_fnc_numberText]; (_display displayCtrl 2314) ctrlSetStructuredText parseText "<t align='left'>Kaufpreis: </t>"; (_display displayCtrl 2315) ctrlSetStructuredText parseText format["<t align='right' color='#8cff9b'>%1€</t>",[zero_var_vehicleShopVehicleKaufpreisTemp] call zero_fnc_numberText]; (_display displayCtrl 2309) ctrlShow true; (_display displayCtrl 2310) ctrlShow true; (_display displayCtrl 2311) ctrlShow false; (_display displayCtrl 2312) ctrlShow false; (_display displayCtrl 2313) ctrlShow true; (_display displayCtrl 2301) ctrlSetText "Resources\Textures\Images\Fahrzeugshop_final.jpg"; _list = (_display displayCtrl 2309); lbClear _list; if(!(zero_var_vehicleShopVehicleClass in (call(zero_var_vShop_rentalOnly))) && !(zero_var_vehicleShopInfo select 3)) then { _list lbAdd "Kaufen"; _list lbSetData [(lbSize _list)-1,"buy"]; _list lbAdd "Kaufen mit Versicherung"; _list lbSetData [(lbSize _list)-1,"buyInsurance"]; }; _list lbAdd "Mieten"; _list lbSetData [(lbSize _list)-1,"rent"]; _gangEnable = true; _gang = (group player) getVariable ["zero_var_gang",[]]; if(_gang isEqualTo [] || {(typeName (_gang select(count _gang -1)) == "BOOL")}) then { _gangEnable = false; } else { _index = [getPlayerUID player, _gang select 3] call zero_fnc_findIndex; if(_index isEqualTo -1) then { _gangEnable = false; }else{ if((((_gang select 3) select _index) select 1) < 2) then { _gangEnable = false; }; }; }; if(_gangEnable) then { if(!(zero_var_vehicleShopVehicleClass in (call(zero_var_vShop_rentalOnly))) && !(zero_var_vehicleShopInfo select 3)) then { _list lbAdd "Kaufen [Gang]"; _list lbSetData [(lbSize _list)-1,"buy_gang"]; }; _list lbAdd "Mieten [Gang]"; _list lbSetData [(lbSize _list)-1,"rent_gang"]; }; _vehicleInfo = [zero_var_vehicleShopVehicleClass] call zero_fnc_fetchVehInfo; if(zero_var_vehicleShopVehicleClass == "C_Rubberboat") then { _name = "Schlauchboot"; } else { _name = (_vehicleInfo select 3); }; _trunkSpace = getNumber(missionConfigFile >> "zero_CfgVehicles" >> zero_var_vehicleShopVehicleClass >> "trunk"); if(_trunkSpace == -1) then {_trunkSpace = "None";}; if(typeName zero_var_vehicleShopVehicleSkinData == typeName []) then { _color = zero_var_vehicleShopVehicleSkinData select 0; } else { _color = "Standard"; }; if(zero_var_donator > 0) then { _donator = ""; } else { _donator = "Freischaltung von Skins/Folien: <t color='#cc1f00'><a href='https://zero-one.cc/spenden'>Hier</a></t>"; }; (_display displayCtrl 2310) ctrlSetStructuredText parseText format[ "Fahrzeugname: " + _name + "<br/>" + (localize "STR_Shop_Veh_UI_MaxSpeed") + " %1 km/h<br/>" + (localize "STR_Shop_Veh_UI_HPower") + " %2<br/>" + (localize "STR_Shop_Veh_UI_PSeats") + " %3<br/>" + (localize "STR_Shop_Veh_UI_Trunk") + " %4<br/>" + (localize "STR_Shop_Veh_UI_Fuel") + " %5<br/>" + (localize "STR_Shop_Veh_UI_Armor") + " %6<br/>" + "Farbe: " + _color + "<br/>" + "Folie: " + _folie + "<br/>" + _donator + "<br/>" + "Moegliche Versicherungskosten: <t color='#8cff9b'>%7€</t>", _vehicleInfo select 8, _vehicleInfo select 11, _vehicleInfo select 10, _trunkSpace, _vehicleInfo select 12, _vehicleInfo select 9, [zero_var_vehicleShopVehicleVersicherungspreis] call zero_fnc_numberText ]; _list lbSetCurSel 0; ((uiNamespace getVariable "zero_var_introdisplay") displayCtrl 5501) ctrlSetText ""; zero_var_vehicleShopFirstMaterial = nil; [] spawn { uiSleep 0.1; ((findDisplay 2300) displayCtrl 2303) ctrlEnable true; ((findDisplay 2300) displayCtrl 2304) ctrlEnable true; }; }; case 6:{ if(!(ctrlEnabled ((findDisplay 2300) displayCtrl 2303)) || !(ctrlEnabled ((findDisplay 2300) displayCtrl 2304))) exitWith {}; ((findDisplay 2300) displayCtrl 2303) ctrlEnable false; ((findDisplay 2300) displayCtrl 2304) ctrlEnable false; zero_var_vehicleShopCurrentStep = 6; ((uiNamespace getVariable "zero_var_introdisplay") displayCtrl 5501) ctrlSetText ""; _exit = false; _insurance = false; if(zero_var_vehicleShopBuyType in ["rent","rent_gang"]) then { _basePrice = floor(zero_var_vehicleShopVehicleMietpreisTemp); } else { if(zero_var_vehicleShopBuyType == "buyInsurance") then { _insurance = true; _basePrice = floor(zero_var_vehicleShopVehicleKaufpreisTemp + zero_var_vehicleShopVehicleVersicherungspreis); }else{ _basePrice = floor(zero_var_vehicleShopVehicleKaufpreisTemp); }; }; _gang = (group player) getVariable["zero_var_gang",[]]; if(zero_var_vehicleShopBuyType in ["rent_gang","buy_gang"]) then { if(_gang isEqualTo []) exitWith {"Du bist in keiner Gang!" call zero_fnc_msg; _exit = true;}; if(!isNull ((group player) getVariable["zero_var_gangKontoInUse",objNull])) exitWith {_exit = true; "Auf das Gangkonto wird bereits zugegriffen!" call zero_fnc_msg;}; if((_gang select 5) < _basePrice) then { (format["Deine Gang hat nicht genug Geld um das Fahrzeug zu kaufen.<br/><br/>Es fehlen: €%1",[_basePrice - (_gang select 5)] call zero_fnc_numberText]) call zero_fnc_msg; _exit = true;}; }else{ if(([3, 0] call zero_fnc_Z0Check) < _basePrice) then {(format[localize "STR_Shop_Veh_NotEnough",[_basePrice - ([3, 0] call zero_fnc_Z0Check)] call zero_fnc_numberText]) call zero_fnc_msg; _exit = true;}; }; if(_exit) exitWith {zero_var_Camrunning = false;}; _spawnPoints = (zero_var_vehicleShopInfo select 1); _spawnPoint = ""; if(typeName _spawnPoints == typeName []) then { { if(count(nearestObjects[(getMarkerPos _x),["Car","Ship","Air","B_APC_Tracked_01_CRV_F"],5]) == 0) exitWith {_spawnPoint = _x;}; } forEach _spawnPoints; } else { if(count(nearestObjects[(getMarkerPos _spawnPoints),["Car","Ship","Air","B_APC_Tracked_01_CRV_F"],5]) == 0) exitWith {_spawnPoint = _spawnPoints;}; }; if(_spawnPoint isEqualTo "") exitWith { (localize "STR_Shop_Veh_Block") call zero_fnc_msg; zero_var_Camrunning = false;}; if(zero_var_vehicleShopBuyType in ["rent_gang","buy_gang"]) then { [format ["GANG BUY: %1 (%2, %3) Gang %4 hat sich %5 für %6", player getVariable["zero_var_realname", name player], getPlayerUID player, playerSide, _gang select 1, zero_var_vehicleShopVehicleClass, [_basePrice] call zero_fnc_numberText]] call zero_fnc_zoLog; _gang set[5,(_gang select 5) - _basePrice]; ((group player) setVariable["zero_var_gang",_gang,true]); [[clientOwner,1,[_gang select 0,_gang select 5]],"zero_fnc_updateGang",zero_var_HC1_owner,false] call zero_fnc_sendPacket; }else{ [1, ([3, 0] call zero_fnc_Z0Check) - _basePrice] call zero_fnc_Z0Check; }; if(zero_var_vehicleShopBuyType in ["buy","buy_gang","buyInsurance"]) then { [format[localize "STR_Shop_Veh_Bought",getText(configFile >> "CfgVehicles" >> zero_var_vehicleShopVehicleClass >> "displayName"),[_basePrice] call zero_fnc_numberText],1] call zero_fnc_msg; } else { [format[localize "STR_Shop_Veh_Rented",getText(configFile >> "CfgVehicles" >> zero_var_vehicleShopVehicleClass >> "displayName"),[_basePrice] call zero_fnc_numberText,[round(_basePrice*0.3)] call zero_fnc_numberText],1] call zero_fnc_msg; }; private _shopInfo = (zero_var_vehicleShopInfo select 0); private _color = if(typeName zero_var_vehicleShopVehicleSkinData == typeName []) then {zero_var_vehicleShopVehicleSkinData select 0;} else {zero_var_vehicleShopVehicleSkinData;}; private _spawnPos = if(_spawnPoint == "air_g_3" ) then { [21953.5,12603.2,23.7] } else { [(getMarkerPos _spawnPoint) select 0,(getMarkerPos _spawnPoint) select 1,((getMarkerPos _spawnPoint) select 2) + 0.5]; }; private _pylons = getArray(missionConfigFile >> "zero_CfgVehicles" >> zero_var_vehicleShopVehicleClass >> "pylons"); _nearestcity = ""; _dis = 999999; { _temp = player distance (getMarkerPos (_x select 0)); if(_temp < _dis) then { _dis = _temp; _nearestcity = _x select 1; }; } forEach [["civ_spawn_1", "KAV"], ["civ_spawn_7","NEO"], ["civ_spawn_2", "PYR"], ["civ_spawn_3", "ATH"], ["civ_spawn_4", "SOF"]]; [[zero_var_vehicleShopVehicleClass,player,_spawnPos,markerDir(_spawnPoint),_color,zero_var_vehicleShopVehicleMaterial,_insurance,_nearestcity,zero_var_vehicleShopBuyType,_shopInfo,_pylons],"zero_fnc_vehicleCreate",zero_var_HC1_owner,false] call zero_fnc_sendPacket; if(zero_var_vehicleShopBuyType in ["buy_gang","rent_gang"])then{ _logModeGang = "(Gangkonto)"; }else{ _logModeGang = ""; }; if(zero_var_vehicleShopBuyType in ["buy_gang","buy","buyInsurance"])then{ if(zero_var_vehicleShopBuyType == "buyInsurance") then { _logMode = "gekauft (mit Versicherung)"; }else{ _logMode = "gekauft"; }; } else { _logMode = "gemietet"; }; [format ["VEHICLE BUY: %1 (%2, %3) hat sich %4 fuer %5 %6 %7", player getVariable["zero_var_realname", name player], getPlayerUID player, playerSide, getText(missionConfigFile >> "zero_CfgVehicles" >> zero_var_vehicleShopVehicleClass >> "logname"), [_basePrice] call zero_fnc_numberText,_logMode, _logModeGang]] call zero_fnc_zoLog; [1] call zero_fnc_updatePartial; zero_var_allowedToUnimpound = diag_tickTime; zero_var_Camrunning = false; [] spawn { uiSleep 0.1; ((findDisplay 2300) displayCtrl 2303) ctrlEnable true; ((findDisplay 2300) displayCtrl 2304) ctrlEnable true; }; { _x hideObject true; false; } count ( [ 24745, 18902.2, 0 ] nearObjects 30 ); }; default { zero_var_Camrunning = false; }; };