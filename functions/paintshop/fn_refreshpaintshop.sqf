zero_var_allVehicles = param [0, [], [[]]]; lbClear 4564354; lbClear 4564350; lbSetcurSel [4564354, -1]; lbSetcurSel [4564356, -1]; lbSetcurSel [4564350, -1]; ctrlEnable[4564354,false]; _donatorSkins = getArray(missionConfigFile >> "zero_VehicleShops" >> "donatorSkins"); _id = ((group player) getVariable ["zero_var_gang",[]]) select 0; _check = { _return = false; _colorArray = if(zero_var_gangpaintshop) then { getArray(missionConfigFile >> "zero_CustomSkins" >> _id >> _this); } else { getArray( missionConfigFile >> "zero_CfgVehicles" >> _this >> "textures"); }; _subindex = 0; { _color = _x select 0; _side = _x select 1; _skins = _x select 2; if (!(_color isEqualTo "X-MAS") && {!(_color isEqualTo "Halloween")} && {_side in ["civ","reb"]}) then { if (_color in _donatorSkins) then { if (zero_var_donator > 0) then { _subindex = _subindex + 1;
}; } else { _subindex = _subindex + 1; }; }; if(_subindex isEqualTo 1) exitwith {_return = true}; } forEach _colorArray; _return }; _index = 0; { if((_x select 2) call _check) then { _vehInfo = [_x select 2] call zero_fnc_fetchVehInfo; lbAdd [4564350, _vehInfo select 3]; _tmp = str [_x select 0, _x select 2, _x select 8, _x select 9]; lbSetData [4564350, _index, _tmp]; lbSetPicture [4564350, _index, _vehInfo select 2]; lbSetValue [4564350, _index, _x select 0]; _index = _index + 1; }; } forEach zero_var_allVehicles; disableUserinput false; if(_index isEquaLTo 0) exitWith { lbAdd[4564350, "Keine Fahrzeuge verfügbar..."]; }; lbSort 4564350;