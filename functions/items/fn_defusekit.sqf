if (!hasInterface) exitWith {}; private["_vault","_ui","_title","_progressBar","_cP","_titleText"]; _vault = param[0,objNull,[objNull]]; if(isNull _vault) exitWith {}; if(!(fed_bank getVariable["zero_var_chargeplaced",false])) exitWith {(localize "STR_ISTR_Defuse_Nothing") call zero_fnc_msg;}; if((player distance fed_bank) > 2) exitWith {"Du musst näher an den Tresor!" call zero_fnc_msg;}; zero_var_action_inUse = true; disableSerialization; _title = localize "STR_ISTR_Defuse_Process"; 5 cutRsc ["zero_var_progress","PLAIN"]; _ui = uiNamespace getVariable "zero_var_progress"; _progressBar = _ui displayCtrl 38201; _titleText = _ui displayCtrl 38202; _titleText ctrlSetText format["%2 (1%1)...","%",_title]; _progressBar progressSetPosition 0.01; _cP = 0.01; while {true} do { if(animationState player != "AinvPknlMstpSnonWnonDnon_medic_1") then { player playActionNow "stop"; player action ["SwitchWeapon", player, player, 100];
player playMove "AinvPknlMstpSnonWnonDnon_medic_1"; }; if(isNull _ui) then { 5 cutRsc ["zero_var_progress","PLAIN"]; _ui = uiNamespace getVariable "zero_var_progress"; _progressBar = _ui displayCtrl 38201; _titleText = _ui displayCtrl 38202; }; _cP = _cP + .0035; _progressBar progressSetPosition _cP; _titleText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%",_title]; if(_cP >= 1 || !alive player) exitWith {}; if(zero_var_interrupted) exitWith {}; uiSleep 0.55; }; zero_var_action_inUse = false; 5 cutText ["","PLAIN"]; player playActionNow "stop"; if(!alive player) exitWith {zero_var_action_inUse = false;}; if(zero_var_interrupted) exitWith {zero_var_interrupted = false; titleText[localize "STR_NOTF_ActionCancel","PLAIN"]; zero_var_action_inUse = false;}; zero_var_action_inUse = false; fed_bank setVariable["zero_var_chargeplaced",false,true]; [[2,localize "STR_ISTR_Defuse_Success"],"zero_fnc_broadcast",west] call zero_fnc_sendPacket;