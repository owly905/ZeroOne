if (!hasInterface) exitWith {};
private["_display"];

if (isNull (findDisplay 20000)) then {
	if (!createDialog "zero_var_bambie") exitWith {
		"Ein  Fehler ist aufgetreten. Bitte versuche es erneut!" call zero_fnc_msg;
	};
};

waitUntil{!isNull (findDisplay 20000)};
disableSerialization;
_display = findDisplay 20000;
((_display) displayCtrl 20002) buttonSetAction "((findDisplay 20000) displayCtrl 20001) ctrlSetStructuredText (parseText localize ""STR_Global_regeln"");";
((_display) displayCtrl 20003) buttonSetAction "((findDisplay 20000) displayCtrl 20001) ctrlSetStructuredText (parseText localize ""STR_Global_steuerung"");";
((_display) displayCtrl 20004) buttonSetAction "((findDisplay 20000) displayCtrl 20001) ctrlSetStructuredText (parseText localize ""STR_Global_speichern"");";
((_display) displayCtrl 20005) buttonSetAction "((findDisplay 20000) displayCtrl 20001) ctrlSetStructuredText (parseText localize ""STR_Global_Lizenzen"");";
((_display) displayCtrl 20006) buttonSetAction "((findDisplay 20000) displayCtrl 20001) ctrlSetStructuredText (parseText localize ""STR_Global_geld"");";
((_display) displayCtrl 20007) buttonSetAction "((findDisplay 20000) displayCtrl 20001) ctrlSetStructuredText (parseText localize ""STR_Global_illegal"");";
((_display) displayCtrl 20008) buttonSetAction "((findDisplay 20000) displayCtrl 20001) ctrlSetStructuredText (parseText localize ""STR_Global_safezone"");";
((_display) displayCtrl 20009) buttonSetAction "((findDisplay 20000) displayCtrl 20001) ctrlSetStructuredText (parseText localize ""STR_Global_clan"");";
((_display) displayCtrl 20010) buttonSetAction "((findDisplay 20000) displayCtrl 20001) ctrlSetStructuredText (parseText localize ""STR_Global_haus"");";
((_display) displayCtrl 20011) buttonSetAction "((findDisplay 20000) displayCtrl 20001) ctrlSetStructuredText (parseText localize ""STR_Global_support"");";
((_display) displayCtrl 20012) buttonSetAction "((findDisplay 20000) displayCtrl 20001) ctrlSetStructuredText (parseText localize ""STR_Global_bewerben"");";
