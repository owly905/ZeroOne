if (!hasInterface) exitWith {}; private ["_targetControl","_sourceControl","_data","_newBackpack","_oldBackpack","_backpackItems","_entity","_backpacks","_backpacksCount"]; disableSerialization; _targetControl = param[0,controlNull,[controlNull]]; _sourceControl = param[3,0,[0]]; _data = param[4,[],[[]]]; _data = _data select 0; _newBackpack = toLower(_data select 2); _oldBackpack = toLower(_targetControl lbData 0); if(_newBackpack isEqualTo "") exitWith {}; if(ctrlIDC _targetControl == 1508 && _sourceControl != 1509 || ctrlIDC _targetControl == 1509 && _sourceControl != 1508) exitWith {"Das passt hier nicht" call zero_fnc_msg;}; _backpackItems = (backpackItems player); if(!isNull (backpackContainer player)) then { _backpacks = (getBackpackCargo(backpackContainer player)) select 0; _backpacksCount = (getBackpackCargo(backpackContainer player)) select 1; { for "_i" from 1 to (_backpacksCount select _forEachIndex) do { _backpackItems pushBack _x; }; } forEach _backpacks; }; if(_sourceControl isEqualTo 1508) then { lbClear _targetControl; _targetControl lbAdd format ["   %1",getText (configFile >> "CfgVehicles" >> _newBackpack >> "displayName")]; _targetControl lbSetTooltip [lbSize(_targetControl) - 1, getText (configFile >> "CfgVehicles" >> _newBackpack >> "displayName")]; _targetControl lbSetPicture [lbSize(_targetControl) - 1, getText (configFile >> "CfgVehicles" >> _newBackpack >> "picture")];
_targetControl lbSetValue [lbSize(_targetControl) - 1, 1]; _targetControl lbSetData [lbSize(_targetControl) - 1, _newBackpack]; [toLower(_newBackpack),-1] call zero_fnc_addItemToLocker; if(!(_oldBackpack isEqualTo "")) then { [toLower(_oldBackpack),1] call zero_fnc_addItemToLocker; }; if(_newBackpack != (backpack player)) then { removeBackpack player; player addBackpack _newBackpack; clearAllItemsFromBackpack player; if(!(_backpackItems isEqualTo [])) then { { _entity = if(typeName _x == "ARRAY") then {toLower(_x select 0)}else{toLower(_x)}; if(_entity != "") then { if(player canAddItemToBackpack _entity) then { player addItemToBackpack _entity; }else{ [toLower(_entity),1] call zero_fnc_addItemToLocker; }; }; } forEach _backpackItems; }; }; }else{ _sourceControl = ((findDisplay 1000) displayCtrl _sourceControl); lbClear _sourceControl; _sourceControl lbAdd ""; _sourceControl lbSetPicture [lbSize(_sourceControl) - 1, "\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_backpack_gs.paa"]; [toLower(_newBackpack),1] call zero_fnc_addItemToLocker; removeBackpack player; if(!(_backpackItems isEqualTo [])) then { { _entity = if(typeName _x == "ARRAY") then {toLower(_x select 0)}else{toLower(_x)}; if(_entity != "") then { [toLower(_entity),1] call zero_fnc_addItemToLocker; }; } forEach _backpackItems; }; }; [] call zero_fnc_updateUniformTab; _targetControl lbSetCurSel -1;
