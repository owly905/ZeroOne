if (!hasInterface) exitWith {}; private["_unit"]; _unit = param[0,objNull,[objNull]]; if(isNull _unit) exitWith {}; if(!(_unit getVariable ["zero_var_escorting",false])) exitWith {};
if(side _unit isEqualTo independent) exitWith {}; detach _unit; _unit setVariable["zero_var_escorting",false,true]; zero_var_escort = nil; zero_var_action_inUse = false;
