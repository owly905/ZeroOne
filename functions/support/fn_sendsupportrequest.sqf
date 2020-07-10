if (!hasInterface) exitWith {};
private["_text"];
disableSerialization;

if(!isNil 'zero_var_allowedToSend' && {serverTime - zero_var_allowedToSend < 1200}) exitWith {
	"Du kannst nur alle 20min einen Code einlösen" call zero_fnc_msg;
};

zero_var_allowedToSend = serverTime;
_text = ctrlText ((findDisplay 3200) displayCtrl 3201);

if(_text isEqualTo "") exitWith {
	"Du hast keinen Code eingegeben!" call zero_fnc_msg;
};

[[_text,getPlayerUID player, clientOwner],'zero_fnc_getSupportMoney',zero_var_HC1_owner,false] call zero_fnc_sendPacket;
closeDialog 0;
