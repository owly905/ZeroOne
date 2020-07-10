if (!hasInterface) exitWith {}; disableSerialization; private ["_control","_selection","_list","_exit","_license","_lev","_frei","_model","_bild","_clothes","_pic"]; _exit = false; _control = _this select 0; _selection = _this select 1; _selection = (_control lbText _selection); if(isNull (findDisplay 3100)) exitWith {}; _list = (findDisplay 3100) displayCtrl 3102; _model = (findDisplay 3100) displayCtrl 3106; _bild = (findDisplay 3100) displayCtrl 3109; lbClear _list; _model ctrlSetModel "\A3\Weapons_F\DummyItem.p3d"; _model ctrlSetModelDirAndUp [[0,1,0],[0,0,1]]; _model ctrlSetModelScale 0.25; _model ctrlSetPosition [0.16, 0.6, -0.1] ; _bild ctrlSetText ""; _license = getText(missionConfigFile >> "zero_CfgItemShops" >> zero_var_store >> "license"); if((_license) != "") then { _exit = switch (typeName (call compile _license)) do { case "BOOL" : {!(call compile _license)}; case "CODE" : {(call(call compile _license)) == 0}; default {true}; }; }; if (_exit) exitWith { (localize "STR_Shop_Veh_NotAllowed") call zero_fnc_msg; waitUntil {!isNull (findDisplay 3100)}; closeDialog 0; }; _clothes = switch (_selection) do { case localize "STR_Shop_UI_Clothing": { (getArray(missionConfigFile >> "zero_CfgItemShops" >> zero_var_store >> "uniform")); }; case localize "STR_Shop_UI_Hats": { (getArray(missionConfigFile >> "zero_CfgItemShops" >> zero_var_store >> "Kopfbedeckungen")); }; case localize "STR_Shop_UI_Glasses": { (getArray(missionConfigFile >> "zero_CfgItemShops" >> zero_var_store >> "Sonnenbrillen")); }; case localize "STR_Shop_UI_Vests": { (getArray(missionConfigFile >> "zero_CfgItemShops" >> zero_var_store >> "Vesten")); }; case localize "STR_Shop_UI_Backpack": { (getArray(missionConfigFile >> "zero_CfgItemShops" >> zero_var_store >> "Ruck")); }; case localize "STR_Shop_Weapon": { (getArray(missionConfigFile >> "zero_CfgItemShops" >> zero_var_store >> "Waffen")); }; case localize "STR_Shop_item": { (getArray(missionConfigFile >> "zero_CfgItemShops" >> zero_var_store >> "ITems"));
}; case localize "STR_Shop_Dive": { (getArray(missionConfigFile >> "zero_CfgItemShops" >> zero_var_store >> "Tauchershop")); }; case localize "STR_Shop_kart": { (getArray(missionConfigFile >> "zero_CfgItemShops" >> zero_var_store >> "Kartshop")); }; case localize "STR_Shop_god": { (getArray(missionConfigFile >> "zero_CfgItemShops" >> zero_var_store >> "GodShop")); }; }; if(_clothes isEqualTo []) exitWith {}; { if(!((_x select 3) isEqualTo [])) then { _lev = ((_x select 3) select 1); _license = (call compile ((_x select 3) select 0)); _frei = switch (typeName _lev) do { case "SCALAR" : {call _license >= _lev}; case "ARRAY" : {call _license in _lev}; default {true}; }; } else { _frei = true; }; if (_frei) then { private _details = [_x select 0] call zero_fnc_fetchCfgDetails; if ((_x select 0) isKindOf "man") then { private _uniform = [(_details select 16)] call zero_fnc_fetchCfgDetails; if((_x select 1) isEqualTo "nil") then { _list lbAdd format["%1",(_uniform select 1)]; } else { if (typeName (_x select 1) isEqualTo "ARRAY") then { _list lbAdd format["%1",(_x select 1) select (_lev find (call _license))]; } else { if (((_x select 1) find "STR_") != -1) then { _list lbAdd format["%1",localize (_x select 1)]; }else { _list lbAdd format["%1",(_x select 1)]; }; }; }; _list lbSetValue [(lbSize _list)-1,_x select 2]; _pic = _uniform select 2; _list lbSetData [(lbSize _list)-1,_x select 0]; _list lbSetPicture [(lbSize _list)-1,_pic]; } else { if((_x select 1) isEqualTo "nil") then { _list lbAdd format["%1",(getText(configFile >> (_details select 6) >> (_x select 0) >> "DisplayName"))]; } else { if (typeName (_x select 1) isEqualTo "ARRAY") then { _list lbAdd format["%1",(_x select 1) select (_lev find _license)]; } else { if (((_x select 1) find "STR_") != -1) then { _list lbAdd format["%1",localize (_x select 1)]; }else { _list lbAdd format["%1",(_x select 1)]; }; }; }; _pic = _details select 2; _list lbSetData [(lbSize _list)-1,_x select 0]; _list lbSetValue [(lbSize _list)-1,_x select 2]; _list lbSetPicture [(lbSize _list)-1,_pic]; }; }; } forEach _clothes; [] call zero_fnc_shopchange;
