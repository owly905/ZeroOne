if (!hasInterface) exitWith {}; private["_return","_uniformItems","_backpackItems","_vestItems","_secondaryWeaponMagazine","_primaryWeaponMagazine","_handgunMagazine","_virtualItems","_uniformMagazines","_vestMagazines","_backpackMagazines","_pMag","_hMag","_uni","_ves","_bag","_handled","_sMag"]; _return = []; _return pushBack (uniform player); _return pushBack (vest player); _return pushBack (backpack player); _return pushBack (goggles player); _return pushBack (headgear player); _return pushBack (assignedItems player); if(playerSide isEqualTo independent) then { _return pushBack ""; if(handgunWeapon player == "hgun_Pistol_Signal_F") then { _return pushBack handgunWeapon player; } else { _return pushBack ""; }; } else { _return pushBack primaryWeapon player; _return pushBack handgunWeapon player; }; if (playerSide isEqualTo east || playerSide isEqualTo west) then { _return pushBack secondaryWeapon player; } else { _return pushBack ""; }; _secondaryWeaponMagazine = []; _uniformItems = []; _uniformMagazines = []; _backpackItems = []; _backpackMagazines = []; _vestItems = []; _vestMagazines = []; _primaryWeaponMagazine = []; _handgunMagazine = []; _virtualItems = []; _uni = []; _ves = []; _bag = []; if(uniform player != "") then { { if (_x in (magazines player)) then { _uniformMagazines pushBack _x; } else { _uniformItems pushBack _x; }; } forEach (uniformItems player); }; if(backpack player != "") then { { if (_x in (magazines player)) then { _backpackMagazines pushBack _x; } else { _backpackItems pushBack _x; }; } forEach (backpackItems player); }; if(vest player != "") then { { if (_x in (magazines player)) then { _vestMagazines pushBack _x; } else { _vestItems pushBack _x; }; } forEach (vestItems player); }; if(count (primaryWeaponMagazine player) > 0 && alive player) then { _pMag = ((primaryWeaponMagazine player) select 0); if(_pMag != "") then { _uni = player canAddItemToUniform _pMag; _ves = player canAddItemToVest _pMag; _bag = player canAddItemToBackpack _pMag; _handled = false; if(_ves) then { _vestMagazines pushBack _pMag; _handled = true; }; if(_uni && !_handled) then { _uniformMagazines pushBack _pMag; _handled = true; }; if(_bag && !_handled) then { _backpackMagazines pushBack _pMag; _handled = true; }; if(!_handled) then { _primaryWeaponMagazine pushBack _pMag; } }; }; if(count (handgunMagazine player) > 0 && alive player) then { _hMag = ((handgunMagazine player) select 0); if(_hMag != "") then { _uni = player canAddItemToUniform _hMag; _ves = player canAddItemToVest _hMag;
_bag = player canAddItemToBackpack _hMag; _handled = false; if(_ves) then { _vestMagazines pushBack _hMag; _handled = true; }; if(_uni && !_handled) then { _uniformMagazines pushBack _hMag; _handled = true; }; if(_bag && !_handled) then { _backpackMagazines pushBack _hMag; _handled = true; }; if(!_handled) then { _handgunMagazine pushBack _hMag; } }; }; if (playerSide isEqualTo east || playerSide isEqualTo west) then { if(count (secondaryWeaponMagazine player) > 0 && alive player) then { _sMag = ((secondaryWeaponMagazine player) select 0); if(_sMag != "") then { _uni = player canAddItemToUniform _sMag; _ves = player canAddItemToVest _sMag; _bag = player canAddItemToBackpack _sMag; _handled = false; if(_ves) then { _vestMagazines pushBack _sMag; _handled = true; }; if(_uni && !_handled) then { _uniformMagazines pushBack _sMag; _handled = true; }; if(_bag && !_handled) then { _backpackMagazines pushBack _sMag; _handled = true; }; if(!_handled) then { _secondaryWeaponMagazine pushBack _sMag; } }; }; }; if(count (primaryWeaponItems player) > 0) then { { if(_x != "") then { _primaryWeaponMagazine pushBack _x; }; } forEach (primaryWeaponItems player); }; if(count (handgunItems player) > 0) then { { if(_x != "") then { _handgunMagazine pushBack _x; }; } forEach (handgunItems player); }; if (playerSide isEqualTo east || playerSide isEqualTo west) then { if(count (secondaryWeaponItems player) > 0) then { { if(_x != "") then { _secondaryWeaponMagazine pushBack _x; }; } forEach (secondaryWeaponItems player); }; }; { if(!((configName _x) in (getArray(missionConfigFile >> "zero_CfgItems" >> "farmItemsDoNotSave")))) then { private _index = [(configName _x),zero_var_inventory] call zero_fnc_findIndex; if (_index != -1) then { _virtualItems pushBack (zero_var_inventory select _index); }; } } forEach ("true" configClasses (missionConfigFile >> "zero_CfgItems")); _return pushBack _secondaryWeaponMagazine; _return pushBack _uniformItems; _return pushBack _uniformMagazines; _return pushBack _backpackItems; _return pushBack _backpackMagazines; _return pushBack _vestItems; _return pushBack _vestMagazines; _return pushBack _primaryWeaponMagazine; _return pushBack _handgunMagazine; _return pushBack _virtualItems; zero_var_gear = _return; [format["SAVE GEAR: %1 (%2, %3) hat mit %4, %5, %6, %7, %8 , Uniform Inhalt: %8, Westen Inhalt: %9, Rucksack Inhalt: %10 gespeichert.", player getVariable["zero_var_realname",name player], getPlayerUID player, playerSide, zero_var_gear param[6,"",[""]], zero_var_gear param[7,"",[""]], zero_var_gear param[0,"",[""]], zero_var_gear param[1,"",[""]], zero_var_gear param[2,"",[""]]], uniformItems player, vestItems player, backpackItems player ] call zero_fnc_zoLog;