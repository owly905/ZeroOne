if (!hasInterface) exitWith {}; private ["_targetControl","_sourceControl","_data","_newHandgunWeapon","_oldHandgunWeapon","_itemSilencer","_itemOptic","_itemPointer","_itemBipod","_defaultPic"]; disableSerialization; _targetControl = param[0,controlNull,[controlNull]]; _sourceControl = param[3,0,[0]]; _data = param[4,[],[[]]]; _data = _data select 0; _newHandgunWeapon = toLower(_data select 2); if(_newHandgunWeapon isEqualTo "") exitWith {}; _oldHandgunWeapon = toLower(_targetControl lbData 0); if(ctrlIDC _targetControl isEqualTo _sourceControl) exitWith {}; if(ctrlIDC _targetControl == 1613 && (((getNumber(configFile >> "CfgWeapons" >> _newHandgunWeapon >> "ItemInfo" >> "type")) in [101,201,301,302]) || (isClass(configFile >> "CfgMagazines" >> _newHandgunWeapon)))) exitWith {"Das passt hier nicht" call zero_fnc_msg;}; if(ctrlIDC _targetControl == 1612 && (!(_sourceControl in [1613,1614,1615,1616,1617]))) exitWith {"Das passt hier nicht" call zero_fnc_msg;}; if(!(_sourceControl in [1612,1613,1614,1615,1616,1617])) exitWith {"Das passt hier nicht" call zero_fnc_msg;}; _itemSilencer = (findDisplay 1000) displayCtrl 16014; _itemOptic = (findDisplay 1000) displayCtrl 16015; _itemPointer = (findDisplay 1000) displayCtrl 1616; _itemBipod = (findDisplay 1000) displayCtrl 1617; if(_sourceControl isEqualTo 1612) then { lbClear _targetControl; _targetControl lbAdd format ["   %1",getText (configFile >> "CfgWeapons" >> _newHandgunWeapon >> "displayName")]; _targetControl lbSetTooltip [lbSize(_targetControl) - 1, getText (configFile >> "CfgWeapons" >> _newHandgunWeapon >> "displayName")]; _targetControl lbSetPicture [lbSize(_targetControl) - 1, getText (configFile >> "CfgWeapons" >> _newHandgunWeapon >> "picture")]; _targetControl lbSetValue [lbSize(_targetControl) - 1, 1]; _targetControl lbSetData [lbSize(_targetControl) - 1, _newHandgunWeapon]; [toLower(_newHandgunWeapon),-1] call zero_fnc_addItemToLocker; if(!(_oldHandgunWeapon isEqualTo "")) then { [toLower(_oldHandgunWeapon),1] call zero_fnc_addItemToLocker; }; if((handgunWeapon player) != _newHandgunWeapon) then { player addWeapon _newHandgunWeapon; }; removeAllHandgunItems player; if((_itemSilencer lbData 0) != "") then {player addHandgunItem (_itemSilencer lbData 0)}; if((_itemOptic lbData 0) != "") then {player addHandgunItem (_itemOptic lbData 0)};
if((_itemPointer lbData 0) != "") then {player addHandgunItem (_itemPointer lbData 0)}; if((_itemBipod lbData 0) != "") then {player addHandgunItem (_itemBipod lbData 0)}; }else{ _sourceControl = ((findDisplay 1000) displayCtrl _sourceControl); lbClear _sourceControl; if((getNumber(configFile >> "CfgWeapons" >> _newHandgunWeapon >> "ItemInfo" >> "type")) in [101,201,301,302]) then { _defaultPic = switch (getNumber(configFile >> "CfgWeapons" >> _newHandgunWeapon >> "ItemInfo" >> "type")) do { case 101:{"\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_muzzle_gs.paa"}; case 201:{"\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_top_gs.paa"}; case 301:{"\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_side_gs.paa"}; case 302:{"\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_bipod_gs.paa"}; default{""}; }; _sourceControl lbAdd ""; _sourceControl lbSetPicture [lbSize(_sourceControl) - 1,_defaultPic]; [toLower(_newHandgunWeapon), 1] call zero_fnc_addItemToLocker; player removeHandgunItem _newHandgunWeapon; }else{ if((_itemSilencer lbData 0) != "") then { [toLower((_itemSilencer lbData 0)),1] call zero_fnc_addItemToLocker; lbClear _itemSilencer; _itemSilencer lbAdd ""; _itemSilencer lbSetPicture [lbSize(_itemSilencer) - 1,"\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_muzzle_gs.paa"]; }; if((_itemOptic lbData 0) != "") then { [toLower((_itemOptic lbData 0)),1] call zero_fnc_addItemToLocker; lbClear _itemOptic; _itemOptic lbAdd ""; _itemOptic lbSetPicture [lbSize(_itemOptic) - 1,"\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_side_gs.paa"]; }; if((_itemPointer lbData 0) != "") then { [toLower((_itemPointer lbData 0)),1] call zero_fnc_addItemToLocker; lbClear _itemPointer; _itemPointer lbAdd ""; _itemPointer lbSetPicture [lbSize(_itemPointer) - 1,"\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_top_gs.paa"]; }; if((_itemBipod lbData 0) != "") then { [toLower((_itemBipod lbData 0)),1] call zero_fnc_addItemToLocker; lbClear _itemBipod; _itemBipod lbAdd ""; _itemBipod lbSetPicture [lbSize(_itemBipod) - 1,"\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_bipod_gs.paa"]; }; _sourceControl lbAdd ""; _sourceControl lbSetPicture [lbSize(_sourceControl) - 1, "\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_hgun_gs.paa"]; [toLower(_newHandgunWeapon), 1] call zero_fnc_addItemToLocker; if(!((handgunMagazine player) isEqualTo [])) then {[toLower(((handgunMagazine player) select 0)), 1] call zero_fnc_addItemToLocker;}; player removeWeapon _newHandgunWeapon; }; }; [] call zero_fnc_updateWeaponTab; _targetControl lbSetCurSel -1;
