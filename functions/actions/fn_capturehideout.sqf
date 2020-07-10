if (!hasInterface) exitWith {}; private["_group","_hideout","_action","_cpRate","_cP","_progressBar","_title","_titleText","_ui","_gangName"]; if((group player) getVariable["zero_var_gang",[]] isEqualTo []) exitWith {titleText[localize "STR_GNOTF_CreateGang","PLAIN"];}; _hideout = (nearestObjects[getPosATL player,["Land_u_Barracks_V2_F","Land_i_Barracks_V2_F","Land_Barracks_01_camo_F"],25]) select 0; _group = _hideout getVariable ["zero_var_gangOwner",grpNull]; if(_group == (group player)) exitWith {titleText[localize "STR_GNOTF_Controlled","PLAIN"]}; if((_hideout getVariable ["zero_var_inCapture",0]) != 0 && {((_hideout getVariable ["zero_var_inCapture",0]) + 480) > serverTime}) exitWith {(localize "STR_GNOTF_Captured") call zero_fnc_msg;}; if(!isNull _group) then { _gangName = (_group getVariable "zero_var_gang") select 1; _action = [ format[localize "STR_GNOTF_AlreadyControlled",_gangName], localize "STR_GNOTF_CurrentCapture", localize "STR_Global_Yes", localize "STR_Global_No" ] call BIS_fnc_guiMessage; _cpRate = 0.0045; } else { _cpRate = 0.0075; }; if(!isNil "_action" && {!_action}) exitWith {titleText[localize "STR_GNOTF_CaptureCancel","PLAIN"];}; if(!isNil "_action" && {_action} && {player distance2D _hideout > 50}) exitWith {titleText[localize "STR_GNOTF_CaptureCancel","PLAIN"];}; zero_var_action_inUse = true; disableSerialization; _title = localize "STR_GNOTF_Capturing"; 5 cutRsc ["zero_var_progress","PLAIN"]; _ui = uiNamespace getVariable "zero_var_progress"; _progressBar = _ui displayCtrl 38201; _titleText = _ui displayCtrl 38202; _titleText ctrlSetText format["%2 (1%1)...","%",_title]; _progressBar progressSetPosition 0.01; _cP = 0.01; _hideout setVariable["zero_var_inCapture",serverTime,true]; while {true} do { if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then { player playActionNow "stop"; player action ["SwitchWeapon", player, player, 100]; player playMove "AinvPknlMstpSnonWnonDnon_medic_1";
}; if(isNull _ui) then { 5 cutRsc ["zero_var_progress","PLAIN"]; _ui = uiNamespace getVariable "zero_var_progress"; _progressBar = _ui displayCtrl 38201; _titleText = _ui displayCtrl 38202; }; _cP = _cP + _cpRate; _progressBar progressSetPosition _cP; _titleText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_title]; if(_cP >= 1 || zero_var_killed || zero_var_interrupted || zero_var_istazed || (!isNull (objectParent player))) exitWith {}; uiSleep 0.55; }; _hideout setVariable["zero_var_inCapture",nil,true]; zero_var_action_inUse = false; 5 cutText ["","PLAIN"]; player playActionNow "stop"; if(!alive player || zero_var_istazed || (player getVariable["zero_var_restrained",false]) || (!isNull (objectParent player))) exitWith {}; if(zero_var_interrupted) exitWith { zero_var_interrupted = false; titleText[localize "STR_GNOTF_CaptureCancel","PLAIN"]; }; titleText["Hideout wurde eingenommen.","PLAIN"]; [[[0,1],format[localize "STR_GNOTF_CaptureSuccess",player getVariable["zero_var_realname",name player],((group player) getVariable "zero_var_gang") select 1]],"zero_fnc_broadcast",(allPlayers - entities "HeadlessClient_F")] call zero_fnc_sendPacket; _hideout setVariable["zero_var_gangOwner",(group player),true]; switch (true) do { case (player distance (getMarkerPos "gang_area_1") < 30): {"gang_area_1" setMarkerText format ["Gang Hideout 1 (Cannabisextraktor) - %1", ((group player) getVariable "zero_var_gang") select 1]}; case (player distance (getMarkerPos "gang_area_2") < 30): {"gang_area_2" setMarkerText format ["G7 Waffenladen - %1", ((group player) getVariable "zero_var_gang") select 1]}; case (player distance (getMarkerPos "gang_area_3") < 30): {"gang_area_3" setMarkerText format ["Gang Hideout 3 (Heroinaufbereitung) - %1", ((group player) getVariable "zero_var_gang") select 1]}; case (player distance (getMarkerPos "gang_area_4") < 30): {"gang_area_4" setMarkerText format ["Gang Hideout 2 (Kokainextraktor) - %1", ((group player) getVariable "zero_var_gang") select 1]}; default {""}; };
