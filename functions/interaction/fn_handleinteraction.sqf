zero_var_interactionTarget = cursorObject; private _interaction = zero_var_interactionTarget getVariable["zero_var_interaction",""]; if (_interaction isEqualTo "") exitWith {}; private _arr = []; private _exit = false; if(isClass (missionConfigFile >> "zero_CfgInteractions" >> "Groups" >> _interaction)) then { private _actions = getArray(missionConfigFile >> "zero_CfgInteractions" >> "Groups" >> _interaction >> "actions"); { _action = [_x] call zero_fnc_checkInteraction; if (!isNil "_action") then { _arr pushBack _action; }; }forEach _actions; }else{ if (isClass (missionConfigFile >> "zero_CfgInteractions" >> "Actions" >> _interaction)) then { private _action = [_interaction] call zero_fnc_checkInteraction; if (isNil "_action") exitWith {_exit = true;}; _arr pushBack _action; }else{ _exit = true; }; }; if (_arr isEqualTo [] || _exit || dialog) exitWith {}; if(!dialog) then { createDialog "zero_var_pInteraction_Menu"; }; disableSerialization; private _display = findDisplay 37400; private _btn1 = _display displayCtrl 37450;
private _btn2 = _display displayCtrl 37451; private _btn3 = _display displayCtrl 37452; private _btn4 = _display displayCtrl 37453; private _btn5 = _display displayCtrl 37454; private _btn6 = _display displayCtrl 37455; private _btn7 = _display displayCtrl 37456; private _btn8 = _display displayCtrl 37457; private _btn9 = _display displayCtrl 37458; private _btn10 = _display displayCtrl 37459; private _btn11 = _display displayCtrl 37460; private _btn12 = _display displayCtrl 37461; private _btn13 = _display displayCtrl 37462; _btn1 ctrlShow false; _btn2 ctrlShow false; _btn3 ctrlShow false; _btn4 ctrlShow false; _btn5 ctrlShow false; _btn6 ctrlShow false; _btn7 ctrlShow false; _btn8 ctrlShow false; _btn9 ctrlShow false; _btn10 ctrlShow false; _btn11 ctrlShow false; _btn12 ctrlShow false; _btn13 ctrlShow false; private _count = 1; { _btn = call compile(format["_btn%1",_count]); _btn ctrlSetText (_x select 1); _btn buttonSetAction format["closeDialog 0; %1", _x select 0]; _btn ctrlShow true; _count = _count + 1; }forEach _arr;
