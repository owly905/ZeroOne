if (!hasInterface) exitWith {}; private["_cop","_oldGroup","_state","_groupGang","_handle","_ziptie"]; _cop = param[0,objNull,[objNull]]; _ziptie = param [1,false,[false]]; if(isNull _cop || (playerSide isEqualTo independent)) exitWith {}; if(side _cop in [east, civilian] && zero_var_is_arrested) exitWith {(localize "STR_Jail_Zipties_Error") call zero_fnc_msg;}; player setVariable["zero_var_restrained",true,true]; 0 spawn mav_gps_fnc_stopNavigationScripted; if(_ziptie) then { player setVariable ["zero_var_restrained_ziptie", true, true]; }; _groupGang = (group player) getVariable["zero_var_gang",[]]; [] spawn { while {true} do { waitUntil {uiSleep 5*60; !({_x != player && alive _x && (getPos player) distance _x < 450} count playableUnits > 0)}; if(!(player getVariable["zero_var_restrained",false])) exitWith {}; if(isNull (objectParent player)) exitWith { player setVariable["zero_var_restrained",false,true]; player setVariable["zero_var_escorting",false,true]; player setVariable["zero_var_transporting",false,true]; detach player; titleText[localize "STR_Cop_ExcessiveRestrain","PLAIN"]; [1] call zero_fnc_useBag; }; }; }; if((player getVariable["zero_var_surrender",false])) then { player setVariable["zero_var_surrender",false,true]; player switchMove "";}; titleText[format[localize "STR_Cop_Retrained",_cop getVariable["zero_var_realname",name _cop]],"PLAIN"]; player unassignItem "ItemGPS"; _oldGroup = (group player); [player] joinSilent grpNull; zero_var_restrained_lokalbank = true; while {player getVariable["zero_var_restrained",false]} do { if(isNull (objectParent player)) then { player playMove "AmovPercMstpSnonWnonDnon_Ease";
}; _state = vehicle player; waitUntil {animationState player != "AmovPercMstpSnonWnonDnon_Ease" && !(player getVariable["zero_var_onKnees",false]) && !(player getVariable["zero_var_sitting",false]) || !(player getVariable["zero_var_restrained",false]) || vehicle player != _state}; if(!alive player) exitWith { player setVariable ["zero_var_restrained",false,true]; if(player getVariable ["zero_var_restrained_ziptie", false]) then { player setVariable ["zero_var_restrained_ziptie", nil, true]; }; player setVariable ["zero_var_escorting",false,true]; player setVariable ["zero_var_transporting",false,true]; detach player; }; if(!isNull (objectParent player)) then{ if(driver (vehicle player) == player) then {player action["eject",vehicle player];}; }; }; _handle = _oldGroup spawn {[player] joinSilent _this}; waitUntil {scriptDone _handle}; if(alive player) then { player switchMove "AmovPercMstpSnonWnonDnon_EaseOut"; player setVariable ["zero_var_restrained",false,true]; if(player getVariable ["zero_var_restrained_ziptie", false]) then { player setVariable ["zero_var_restrained_ziptie", nil, true]; }; player setVariable ["zero_var_escorting",false,true]; player setVariable ["zero_var_transporting",false,true]; detach player; }; if (!(_groupGang isEqualTo []) && ((group player) getVariable["zero_var_gang",[]]) isEqualTo [] && (count(units (group player)) isEqualTo 1)) then { (group player) setVariable["zero_var_gang",_groupGang,true]; if(zero_gang_flag getVariable["zero_var_gangControl","-1"] == (_groupGang select 0)) then { zero_gang_flag setVariable["zero_var_gangControlGroup",(group player), true]; }; };
