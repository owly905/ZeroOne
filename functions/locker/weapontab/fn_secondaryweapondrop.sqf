if (!hasInterface) exitWith {}; private ["_targetControl","_sourceControl","_data","_newSecondaryWeapon","_oldSecondaryWeapon","_itemSilencer","_itemOptic","_itemPointer","_itemBipod","_defaultPic"]; disableSerialization; _targetControl = param[0,controlNull,[controlNull]]; _sourceControl = param[3,0,[0]]; _data = param[4,[],[[]]]; _data = _data select 0; _newSecondaryWeapon = toLower(_data select 2); if(_newSecondaryWeapon isEqualTo "") exitWith {}; _oldSecondaryWeapon = toLower(_targetControl lbData 0); if(ctrlIDC _targetControl isEqualTo _sourceControl) exitWith {}; if(ctrlIDC _targetControl == 1607 && (((getNumber(configFile >> "CfgWeapons" >> _newSecondaryWeapon >> "ItemInfo" >> "type")) in [101,201,301,302]) || (isClass(configFile >> "CfgMagazines" >> _newSecondaryWeapon)))) exitWith {"Das passt hier nicht" call zero_fnc_msg;}; if(ctrlIDC _targetControl == 1606 && (!(_sourceControl in [1607,1608,1609,1610,1611]))) exitWith {"Das passt hier nicht" call zero_fnc_msg;}; if(!(_sourceControl in [1606,1607,1608,1609,1610,1611])) exitWith {"Das passt hier nicht" call zero_fnc_msg;}; _itemSilencer = (findDisplay 1000) displayCtrl 1608; _itemOptic = (findDisplay 1000) displayCtrl 1609; _itemPointer = (findDisplay 1000) displayCtrl 1610; _itemBipod = (findDisplay 1000) displayCtrl 1611; if(_sourceControl isEqualTo 1606) then { lbClear _targetControl; _targetControl lbAdd format ["   %1",getText (configFile >> "CfgWeapons" >> _newSecondaryWeapon >> "displayName")]; _targetControl lbSetTooltip [lbSize(_targetControl) - 1, getText (configFile >> "CfgWeapons" >> _newSecondaryWeapon >> "displayName")]; _targetControl lbSetPicture [lbSize(_targetControl) - 1, getText (configFile >> "CfgWeapons" >> _newSecondaryWeapon >> "picture")]; _targetControl lbSetValue [lbSize(_targetControl) - 1, 1]; _targetControl lbSetData [lbSize(_targetControl) - 1, _newSecondaryWeapon]; [toLower(_newSecondaryWeapon),-1] call zero_fnc_addItemToLocker; if(!(_oldSecondaryWeapon isEqualTo "")) then { [toLower(_oldSecondaryWeapon),1] call zero_fnc_addItemToLocker; }; if((secondaryWeapon player) != _newSecondaryWeapon) then { player addWeapon _newSecondaryWeapon; }; if((_itemSilencer lbData 0) != "") then {player addSecondaryWeaponItem (_itemSilencer lbData 0)}else{player removeSecondaryWeaponItem ((secondaryWeaponItems player) select 0)}; if((_itemOptic lbData 0) != "") then {player addSecondaryWeaponItem (_itemOptic lbData 0)}else{player removeSecondaryWeaponItem ((secondaryWeaponItems player) select 1)}; if((_itemPointer lbData 0) != "") then {player addSecondaryWeaponItem (_itemPointer lbData 0)}else{player removeSecondaryWeaponItem ((secondaryWeaponItems player) select 2)};
if((_itemBipod lbData 0) != "") then {player addSecondaryWeaponItem (_itemBipod lbData 0)}else{player removeSecondaryWeaponItem ((secondaryWeaponItems player) select 3)}; }else{ _sourceControl = ((findDisplay 1000) displayCtrl _sourceControl); lbClear _sourceControl; if((getNumber(configFile >> "CfgWeapons" >> _newSecondaryWeapon >> "ItemInfo" >> "type")) in [101,201,301,302]) then { _defaultPic = switch (getNumber(configFile >> "CfgWeapons" >> _newSecondaryWeapon >> "ItemInfo" >> "type")) do { case 101:{"\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_muzzle_gs.paa"}; case 201:{"\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_top_gs.paa"}; case 301:{"\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_side_gs.paa"}; case 302:{"\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_bipod_gs.paa"}; default{""}; }; _sourceControl lbAdd ""; _sourceControl lbSetPicture [lbSize(_sourceControl) - 1,_defaultPic]; [toLower(_newSecondaryWeapon), 1] call zero_fnc_addItemToLocker; player removeSecondaryWeaponItem _newSecondaryWeapon; }else{ if((_itemSilencer lbData 0) != "") then { [toLower((_itemSilencer lbData 0)), 1] call zero_fnc_addItemToLocker; lbClear _itemSilencer; _itemSilencer lbAdd ""; _itemSilencer lbSetPicture [lbSize(_itemSilencer) - 1,"\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_muzzle_gs.paa"]; }; if((_itemOptic lbData 0) != "") then { [toLower((_itemOptic lbData 0)), 1] call zero_fnc_addItemToLocker; lbClear _itemOptic; _itemOptic lbAdd ""; _itemOptic lbSetPicture [lbSize(_itemOptic) - 1,"\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_side_gs.paa"]; }; if((_itemPointer lbData 0) != "") then { [toLower((_itemPointer lbData 0)), 1] call zero_fnc_addItemToLocker; lbClear _itemPointer; _itemPointer lbAdd ""; _itemPointer lbSetPicture [lbSize(_itemPointer) - 1,"\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_top_gs.paa"]; }; if((_itemBipod lbData 0) != "") then { [toLower((_itemBipod lbData 0)), 1] call zero_fnc_addItemToLocker; lbClear _itemBipod; _itemBipod lbAdd ""; _itemBipod lbSetPicture [lbSize(_itemBipod) - 1,"\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_bipod_gs.paa"]; }; _sourceControl lbAdd ""; _sourceControl lbSetPicture [lbSize(_sourceControl) - 1,"\A3\Ui_f\data\GUI\Rsc\RscDisplayGear\ui_gear_secondary_gs.paa"]; [toLower(_newSecondaryWeapon),1] call zero_fnc_addItemToLocker; if(!((secondaryWeaponMagazine player) isEqualTo [])) then {[toLower(((secondaryWeaponMagazine player) select 0)), 1] call zero_fnc_addItemToLocker;}; player removeWeapon _newSecondaryWeapon; }; }; [] call zero_fnc_updateWeaponTab; _targetControl lbSetCurSel -1;