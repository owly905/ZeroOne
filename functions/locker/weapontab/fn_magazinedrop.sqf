if (!hasInterface) exitWith {}; private ["_targetControl","_sourceControl","_data","_newMagazine","_lockerMagazine","_playerMagazine","_index","_magazine","_entity","_newMagazineCountEdit","_magazineList","_magazinePlayer"]; disableSerialization; _targetControl = param[0,controlNull,[controlNull]]; _sourceControl = param[3,0,[0]]; _data = param[4,[],[[]]]; _data = _data select 0; _newMagazine = toLower(_data select 2); if(_newMagazine isEqualTo "") exitWith {}; if(ctrlIDC _targetControl == 1619 && (!(isClass(configFile >> "CfgMagazines" >> _newMagazine)))) exitWith {"Das passt hier nicht" call zero_fnc_msg;}; if(ctrlIDC _targetControl == 1618 && (_sourceControl != 1619)) exitWith {"Das passt hier nicht" call zero_fnc_msg;}; _lockerMagazine = (zero_var_locker select 3); _playerMagazine = (findDisplay 1000) getVariable "zero_var_playerMagazines"; if(_sourceControl isEqualTo 1618) then { _newMagazineCountEdit = parseNumber(ctrlText((findDisplay 1000) displayCtrl 1620)); if(_newMagazineCountEdit isEqualTo 0) exitWith {}; _index = [toLower(_newMagazine),_lockerMagazine] call zero_fnc_findIndex; if(_index isEqualTo -1) exitWith {}; _magazine = _lockerMagazine select _index; if((_magazine select 1) < _newMagazineCountEdit) exitWith {"So viele Magazine hast du nicht" call zero_fnc_msg;}; if(!(player canAdd [_newMagazine,_newMagazineCountEdit])) exitWith {"So viele Magazine kannst du nicht tragen" call zero_fnc_msg;}; if((_magazine select 1) isEqualTo _newMagazineCountEdit) then { _lockerMagazine deleteAt _index; }else{ _lockerMagazine set[_index,[toLower(_magazine select 0), (_magazine select 1) - _newMagazineCountEdit]]; }; _index = [toLower(_newMagazine),_playerMagazine] call zero_fnc_findIndex; if((_index isEqualTo -1)) then { _playerMagazine pushBack [toLower(_newMagazine),_newMagazineCountEdit]; }else{ _magazine = _playerMagazine select _index; _playerMagazine set[_index,[toLower(_magazine select 0), (_magazine select 1) + _newMagazineCountEdit]]; }; player addMagazines[_newMagazine,_newMagazineCountEdit]; }else{ _newMagazineCountEdit = parseNumber(ctrlText((findDisplay 1000) displayCtrl 1621)); if(_newMagazineCountEdit isEqualTo 0) exitWith {}; _index = [toLower(_newMagazine),_playerMagazine] call zero_fnc_findIndex; if(_index isEqualTo -1) exitWith {}; _magazine = _playerMagazine select _index;
if((_magazine select 1) < _newMagazineCountEdit) exitWith {"So viele Magazine hast du nicht" call zero_fnc_msg;}; if((_magazine select 1) isEqualTo _newMagazineCountEdit) then { _playerMagazine deleteAt _index; player removeMagazines _newMagazine; }else{ _playerMagazine set[_index,[toLower(_magazine select 0), (_magazine select 1) - _newMagazineCountEdit]]; for "_i" from 1 to _newMagazineCountEdit step 1 do {player removeMagazine _newMagazine;}; }; [toLower(_newMagazine),_newMagazineCountEdit] call zero_fnc_addItemToLocker; }; zero_var_locker set[3,_lockerMagazine]; (findDisplay 1000) setVariable["zero_var_playerMagazines",_playerMagazine]; _magazineList = (findDisplay 1000) displayCtrl 1618; _magazinePlayer = (findDisplay 1000) displayCtrl 1619; lbClear _magazineList; lbClear _magazinePlayer; { _entity = toLower(_x select 0); if (_entity != "") then { if(isClass(configFile >> "CfgMagazines" >> _entity)) then { _magazineList lbAdd format ["%2 (%1)", (_x select 1), getText (configFile >> "CfgMagazines" >> _entity >> "displayName")]; _magazineList lbSetTooltip [lbSize(_magazineList) - 1, format ["%2 (%1)", (_x select 1), getText (configFile >> "CfgMagazines" >> _entity >> "displayName")]]; _magazineList lbSetPicture [lbSize(_magazineList) - 1, getText (configFile >> "CfgMagazines" >> _entity >> "picture")]; _magazineList lbSetValue [lbSize(_magazineList) - 1, (_x select 1)]; _magazineList lbSetData [lbSize(_magazineList) - 1, _entity]; }; }; } forEach _lockerMagazine; { _entity = _x select 0; if(isClass(configFile >> "CfgMagazines" >> _entity)) then { _magazinePlayer lbAdd format ["%2 (%1)", (_x select 1), getText (configFile >> "CfgMagazines" >> _entity >> "displayName")]; _magazinePlayer lbSetTooltip [lbSize(_magazinePlayer) - 1, format ["%2 (%1)", (_x select 1), getText (configFile >> "CfgMagazines" >> _entity >> "displayName")]]; _magazinePlayer lbSetPicture [lbSize(_magazinePlayer) - 1, getText (configFile >> "CfgMagazines" >> _entity >> "picture")]; _magazinePlayer lbSetValue [lbSize(_magazinePlayer) - 1, (_x select 1)]; _magazinePlayer lbSetData [lbSize(_magazinePlayer) - 1, _entity]; }; } forEach _playerMagazine; if((lbSize(_magazineList) - 1) isEqualTo -1) then {_magazineList lbAdd "Keine Magazine verfügbar";}; if((lbSize(_magazinePlayer) - 1) isEqualTo -1) then {_magazinePlayer lbAdd "Keine Magazine verfügbar";}; _magazineList lbSetCurSel -1; _magazinePlayer lbSetCurSel -1; lbSort _magazineList; lbSort _magazinePlayer;