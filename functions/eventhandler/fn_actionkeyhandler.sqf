if (!hasInterface) exitWith {}; private["_curTarget","_isWater","_fish","_turtle","_handle","_isVehicle","_animalTypes"]; _curTarget = cursorObject; if(zero_var_action_inUse) exitWith {}; if(zero_var_interrupted) exitWith {zero_var_interrupted = false;}; if(dialog) exitWith {}; if(!isNull (objectParent player)) exitWith {}; if(!isNil "zero_var_escort") then {_curTarget = zero_var_escort;}; zero_var_action_inUse = true; _isWater = surfaceIsWater (getPosASL player); if(isNull _curTarget) exitWith { if(_isWater) then { _fish = (nearestObjects[getPos player,["Fish_Base_F"],3]) select 0; if(!isNil "_fish") then { [_fish] call zero_fnc_catchFish; }; _turtle = (nearestObjects[getPos player,["Turtle_F"],3]) select 0; if(!isNil "_turtle") then { _handle = [_turtle] spawn zero_fnc_catchTurtle; waitUntil {scriptDone _handle}; }; zero_var_action_inUse = false; }; zero_var_action_inUse = false; }; if (isNull (objectParent player) && {!isNull _curTarget} && {player distance _curTarget < 3} && {!isNil {_curTarget getVariable "zero_var_interaction"}}) exitWith { [] call zero_fnc_handleInteraction; zero_var_action_inUse = false; }; if(_curTarget isKindOf "House_F" && {player distance _curTarget < 12} || ((nearestObject [[16019.5,16952.9,0],"Land_Dome_Big_F"]) == _curTarget || (nearestObject [[20889,19224,0],"Land_Research_HQ_F"]) == _curTarget)) exitWith { [_curTarget] call zero_fnc_houseMenu; zero_var_action_inUse = false; }; if(_curTarget isKindOf "Man" && {!alive _curTarget} && {playerSide isEqualTo independent}) exitWith { if(playerSide isEqualTo independent) then { [_curTarget] call zero_fnc_revivePlayer;
}; zero_var_action_inUse = false; }; if(isPlayer _curTarget && _curTarget isKindOf "Man") then { if( playerSide isEqualTo west && {!dialog} && {(player distance _curTarget) < 4}) exitWith { [_curTarget] call zero_fnc_copInteractionMenu; zero_var_action_inUse = false; }; if((playerSide isEqualTo civilian || playerSide isEqualTo east) && {(_curTarget getVariable["zero_var_restrained",false])} && {!dialog} && {(player distance _curTarget) < 4}) exitWith { [_curTarget] call zero_fnc_civInteractionMenu; zero_var_action_inUse = false; }; if(playerSide isEqualTo independent && {!dialog} && {(player distance _curTarget) < 4}) exitWith { [_curTarget] call zero_fnc_medInteractionMenu; zero_var_action_inUse = false; }; } else { _isVehicle = if((_curTarget isKindOf "landVehicle") || (_curTarget isKindOf "Ship") || (_curTarget isKindOf "Air")) then {true} else {false}; _animalTypes = ["Tuna_F","Turtle_F"]; if(_isVehicle) then { if(!dialog) then { if(player distance _curTarget < ((boundingBox _curTarget select 1) select 0) + 2) then { [_curTarget] call zero_fnc_vInteractionMenu; }; }; } else { if((typeOf _curTarget) in _animalTypes) then { if((typeOf _curTarget) == "Turtle_F" && {!alive _curTarget}) then { _handle = [_curTarget] spawn zero_fnc_catchTurtle; waitUntil {scriptDone _handle}; }else{ _handle = [_curTarget] spawn zero_fnc_catchFish; waitUntil {scriptDone _handle}; }; }; }; }; zero_var_action_inUse = false;