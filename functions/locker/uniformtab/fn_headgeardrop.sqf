if (!hasInterface) exitWith {}; private ["_targetControl","_sourceControl","_data","_newHeadgear","_oldHeadgear"]; disableSerialization; _targetControl = param[0,controlNull,[controlNull]]; _sourceControl = param[3,0,[0]]; _data = param[4,[],[[]]]; _data = _data select 0; _newHeadgear = toLower(_data select 2); _oldHeadgear = toLower(_targetControl lbData 0); if(_newHeadgear isEqualTo "") exitWith {}; if(ctrlIDC _targetControl == 1500 && _sourceControl != 1501 || ctrlIDC _targetControl == 1501 && _sourceControl != 1500) exitWith {"Das passt hier nicht" call zero_fnc_msg;}; if(_sourceControl isEqualTo 1500) then { lbClear _targetControl; _targetControl lbAdd format ["   %1",getText (configFile >> "CfgWeapons" >> _newHeadgear >> "displayName")]; _targetControl lbSetTooltip [lbSize(_targetControl) - 1, getText (configFile >> "CfgWeapons" >> _newHeadgear >> "displayName")];
_targetControl lbSetPicture [lbSize(_targetControl) - 1, getText (configFile >> "CfgWeapons" >> _newHeadgear >> "picture")]; _targetControl lbSetValue [lbSize(_targetControl) - 1, 1]; _targetControl lbSetData [lbSize(_targetControl) - 1, _newHeadgear]; [toLower(_newHeadgear),-1] call zero_fnc_addItemToLocker; if(!(_oldHeadgear isEqualTo "")) then { [toLower(_oldHeadgear),1] call zero_fnc_addItemToLocker; }; if(_newHeadgear != (headgear player)) then { player addHeadgear _newHeadgear; }; }else{ _sourceControl = ((findDisplay 1000) displayCtrl _sourceControl); lbClear _sourceControl; _sourceControl lbAdd ""; _sourceControl lbSetPicture [lbSize(_sourceControl) - 1, "\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_helmet_gs.paa"]; [toLower(_newHeadgear),1] call zero_fnc_addItemToLocker; removeHeadgear player; }; [] call zero_fnc_updateUniformTab; _targetControl lbSetCurSel -1;
