if (!hasInterface) exitWith {}; private ["_list","_index","_newItem","_playerItems","_added","_itm","_assignedItems","_lockerItemList","_playerItemList","_entity","_count","_cfg"]; disableSerialization; _list = param[0,controlNull,[controlNull]]; _index = lbCurSel _list; _newItem = _list lbData _index; if(_newItem isEqualTo "") exitWith {}; if(isClass (configFile >> "CfgVehicles" >> _newItem)) exitWith {"Rucksäcke kannst du nicht hinzufügen" call zero_fnc_msg;}; _playerItems = (findDisplay 1000) getVariable "zero_var_playerItems"; if((ctrlIDC _list) isEqualTo 1700) then { if(!(player canAdd _newItem)) exitWith {"So viele Items kannst du nicht tragen" call zero_fnc_msg;}; _added = false; { _index = [toLower(_newItem),_x] call zero_fnc_findIndex; if(!(_index isEqualTo -1)) exitWith { _itm = _x select _index; if((_itm select 1) < 1) exitWith {"So viele Items hast du nicht" call zero_fnc_msg;}; if((_itm select 1) isEqualTo 1) then { _x deleteAt _index; }else{ _x set[_index,[toLower(_itm select 0), (_itm select 1) - 1]]; }; _added = true; }; } forEach zero_var_locker; if(!_added) exitWith {}; _index = [toLower(_newItem),_playerItems] call zero_fnc_findIndex; if(_index isEqualTo -1) then { _playerItems pushBack [toLower(_newItem),1]; }else{ _itm = _playerItems select _index; _playerItems set[_index,[toLower(_itm select 0), (_itm select 1) + 1]]; }; if (isClass (configFile >> "CfgWeapons" >> _newItem) && {getNumber(configFile >> "CfgWeapons" >> _newItem >> "type") == 1}) then { [format ["LOCKER TAKE: %1 (%2, %3, Position: %5) hat %4 herausgenommen",player getVariable["zero_var_realname",name player], getPlayerUID player, playerSide,getText (configFile >> "CfgWeapons" >> _newItem >> "displayName"), getPos player]] call zero_fnc_zoLog; }; player addItem _newItem; }else{ _index = [toLower(_newItem),_playerItems] call zero_fnc_findIndex; if(_index isEqualTo -1) exitWith {}; _itm = _playerItems select _index; if((_itm select 1) < 1) exitWith {"So viele Items hast du nicht" call zero_fnc_msg;}; if((_itm select 1) isEqualTo 1) then { _playerItems deleteAt _index; }else{ _playerItems set[_index,[toLower(_itm select 0), (_itm select 1) - 1]]; }; if([_newItem] call zero_fnc_addItemToLocker) then { _assignedItems = []; { _assignedItems pushBack toLower(_x); } forEach (assignedItems player); if(_newItem in _assignedItems) then {player unassignItem _newItem;
}; player removeItem _newItem; }; }; (findDisplay 1000) setVariable["zero_var_playerItems",_playerItems]; _lockerItemList = (findDisplay 1000) displayCtrl 1700; _playerItemList = (findDisplay 1000) displayCtrl 1701; lbClear _lockerItemList; lbClear _playerItemList; { { _entity = toLower(_x select 0); if (_entity != "") then { _count = (_x select 1); _cfg = switch (true) do { case (isClass (configFile >> "CfgWeapons" >> _entity)):{"CfgWeapons"}; case (isClass (configFile >> "CfgVehicles" >> _entity)):{"CfgVehicles"}; case (isClass (configFile >> "CfgGlasses" >> _entity)):{"CfgGlasses"}; case (isClass (configFile >> "CfgMagazines" >> _entity)):{"CfgMagazines"}; }; _lockerItemList lbAdd format ["%2 (%1)", _count, getText (configFile >> _cfg >> _entity >> "displayName")]; _lockerItemList lbSetTooltip [lbSize(_lockerItemList) - 1, format ["%2 (%1)", _count, getText (configFile >> _cfg >> _entity >> "displayName")]]; _lockerItemList lbSetPicture [lbSize(_lockerItemList) - 1, getText (configFile >> _cfg >> _entity >> "picture")]; _lockerItemList lbSetValue [lbSize(_lockerItemList) - 1, _count]; _lockerItemList lbSetData [lbSize(_lockerItemList) - 1, _entity]; }; } forEach _x; } forEach zero_var_locker; { _entity = toLower(_x select 0); if (_entity != "") then { _count = (_x select 1); _cfg = switch (true) do { case (isClass (configFile >> "CfgWeapons" >> _entity)):{"CfgWeapons"}; case (isClass (configFile >> "CfgVehicles" >> _entity)):{"CfgVehicles"}; case (isClass (configFile >> "CfgGlasses" >> _entity)):{"CfgGlasses"}; case (isClass (configFile >> "CfgMagazines" >> _entity)):{"CfgMagazines"}; }; _playerItemList lbAdd format ["%2 (%1)", _count, getText (configFile >> _cfg >> _entity >> "displayName")]; _playerItemList lbSetTooltip [lbSize(_playerItemList) - 1, format ["%2 (%1)", _count, getText (configFile >> _cfg >> _entity >> "displayName")]]; _playerItemList lbSetPicture [lbSize(_playerItemList) - 1, getText (configFile >> _cfg >> _entity >> "picture")]; _playerItemList lbSetValue [lbSize(_playerItemList) - 1, _count]; _playerItemList lbSetData [lbSize(_playerItemList) - 1, _entity]; }; } forEach _playerItems; lbSort _lockerItemList; lbSort _playerItemList; if((lbSize(_lockerItemList) - 1) isEqualTo -1) then {_lockerItemList lbAdd "Keine Items verfügbar";}; if((lbSize(_playerItemList) - 1) isEqualTo -1) then {_playerItemList lbAdd "Keine Items verfügbar";}; _lockerItemList lbSetCurSel -1; _playerItemList lbSetCurSel -1;