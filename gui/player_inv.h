class zero_var_playerSettings { idd = 2001; movingEnable = 1; enableSimulation = 1; class controlsBackground { class Background: zero_var_RscPicture { idc = -1; text = "Resources\Textures\Icons\player_inv.jpg"; x = 0.215941 * safeZoneW + safeZoneX; y = 0.113221 * safeZoneH + safeZoneY; w = 0.566481 * safeZoneW; h = 0.739284 * safeZoneH; }; class moneyStatusInfo : zero_var_RscStructuredText { idc = 2015; sizeEx = 0.7; text = ""; x = 0.28538 * safeZoneW + safeZoneX; y = 0.25999 * safeZoneH + safeZoneY; w = 0.15967 * safeZoneW; h = 0.130818 * safeZoneH; }; class PlayersName : zero_var_RscText { idc = 2009; style = 1; text = ""; sizeEx = 0.040; x = 0.645975 * safeZoneW + safeZoneX; y = 0.11794 * safeZoneH + safeZoneY; w = 0.113398 * safeZoneW; h = 0.0440162 * safeZoneH; }; }; class controls { class Button_anfhilfe: zero_var_RscButtonMenu { idc = 2401; x = 0.441474 * safeZoneW + safeZoneX; y = 0.197962 * safeZoneH + safeZoneY; w = 0.0846389 * safeZoneW; h = 0.0279892 * safeZoneH; onButtonClick = "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;closeDialog 0; [] spawn zero_fnc_bambie;"; colorBackground[] = {-1,-1,-1,-1}; colorBackgroundFocused[] = {0.863,0.078,0.235,0.3}; colorBackground2[] = {0.192,0.549,0.906,0.3}; color[] = {1,1,1,1}; colorFocused[] = {0,0,0,1}; color2[] = {0,0,0,1}; colorText[] = {1,1,1,1}; colorDisabled[] = {0,0,0,0.4}; }; class button_hauptmenu: zero_var_RscButtonMenu { idc = 2403; x = 0.332852 * safeZoneW + safeZoneX; y = 0.197954 * safeZoneH + safeZoneY; w = 0.088832 * safeZoneW; h = 0.0270133 * safeZoneH; onButtonClick = ""; colorBackground[] = {-1,-1,-1,-1}; colorBackgroundFocused[] = {0.863,0.078,0.235,0.3}; colorBackground2[] = {0.192,0.549,0.906,0.3}; color[] = {1,1,1,1}; colorFocused[] = {0,0,0,1}; color2[] = {0,0,0,1}; colorText[] = {1,1,1,1}; colorDisabled[] = {0,0,0,0.4}; }; class button_ausweis: zero_var_RscButtonMenu { idc = 2480; x = 0.545393 * safeZoneW + safeZoneX; y = 0.197941 * safeZoneH + safeZoneY; w = 0.0851622 * safeZoneW; h = 0.0280099 * safeZoneH; onButtonClick = "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;closeDialog 0; [] spawn zero_fnc_ausweise"; colorBackground[] = {-1,-1,-1,-1}; colorBackgroundFocused[] = {0.863,0.078,0.235,0.3}; colorBackground2[] = {0.192,0.549,0.906,0.3}; color[] = {1,1,1,1}; colorFocused[] = {0,0,0,1}; color2[] = {0,0,0,1}; colorText[] = {1,1,1,1}; colorDisabled[] = {0,0,0,0.4}; }; class itemList : zero_var_RscListBox { idc = 2005; sizeEx = 0.04; x = 0.477803 * safeZoneW + safeZoneX; y = 0.296093 * safeZoneH + safeZoneY; w = 0.154683 * safeZoneW; h = 0.31392 * safeZoneH; colorBackground[] = {0.063,0.071,0.098,0.7}; }; class Licenses_Menu : zero_var_RscControlsGroup { idc = -1; x = 0.680406 * safeZoneW + safeZoneX; y = 0.753 * safeZoneH + safeZoneY; w = 0.0979349 * safeZoneW; h = 0.099 * safeZoneH; class Controls { class zero_var_Licenses : zero_var_RscStructuredText { idc = 2014; sizeEx = 0.030; text = ""; x = 0; y = 0; w = 0.23; h = 0.95; }; }; }; class moneyEdit : zero_var_RscEdit { idc = 2018; text = "1"; x = 0.235166 * safeZoneW + safeZoneX; y = 0.627006 * safeZoneH + safeZoneY; w = 0.207367 * safeZoneW; h = 0.0380078 * safeZoneH; colorBackground[] = {0.063,0.071,0.098,1}; colorActive[] = {0,0,0,0}; tooltip = "Geldbetrag oder Menge der Items eintragen"; }; class NearPlayers : zero_var_RscCombo { idc = 2022; x = 0.234843 * safeZoneW + safeZoneX; y = 0.573092 * safeZoneH + safeZoneY; w = 0.206855 * safeZoneW; h = 0.0379234 * safeZoneH; colorBackground[] = {0.063,0.071,0.098,0.3}; colorActive[] = {0.863,0.078,0.235,1}; }; class moneyDrop : zero_var_RscButtonMenu { idc = 2001; onButtonClick = "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;if ((count (ctrlText ((findDisplay 2001) displayCtrl 2018))) > 555) exitWith {'Die Nachricht ist zu lang! Die Nachricht darf maximal 555 Zeichen beinhalten.' call zero_fnc_msg;};[] call zero_fnc_giveMoney"; sizeEx = 0.025; x = 0.23664 * safeZoneW + safeZoneX; y = 0.682039 * safeZoneH + safeZoneY; w = 0.0770211 * safeZoneW; h = 0.0309665 * safeZoneH; colorBackground[] = {-1,-1,-1,0}; color[] = {1,1,1,0}; colorFocused[] = {0,0,0,0}; colorDisabled[] = {0,0,0,0}; color2[] = {0,0,0,0}; colorText[] = {1,1,1,1}; colorBackgroundFocused[] = {-1,-1,-1,0}; colorBackground2[] = {-1,-1,-1,0}; }; class refreshPalyer : zero_var_RscButtonMenu { idc = -1; onButtonClick = "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;[] call zero_fnc_p_UpdatePlayer;"; x = 0.235782 * safeZoneW + safeZoneX; y = 0.426493 * safeZoneH + safeZoneY; w = 0.204616 * safeZoneW; h = 0.0450266 * safeZoneH; colorBackground[] = {-1,-1,-1,-1}; color[] = {1,1,1,0}; colorFocused[] = {0,0,0,0}; colorDisabled[] = {0,0,0,0}; color2[] = {0,0,0,0}; colorText[] = {1,1,1,1}; colorBackgroundFocused[] = {-1,-1,-1,0}; colorBackground2[] = {-1,-1,-1,0}; }; class itemEdit : zero_var_RscEdit { idc = 2010; text = "1"; x = 0.477595 * safeZoneW + safeZoneX; y = 0.626996 * safeZoneH + safeZoneY; w = 0.155856 * safeZoneW; h = 0.0380036 * safeZoneH; colorBackground[] = {0.063,0.071,0.098,1}; colorActive[] = {0,0,0,0}; tooltip = "Gebe die Anzahl der Items ein"; }; class DropButton : zero_var_RscButtonMenu { idc = 2002; onButtonClick = "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;if ((count (ctrlText ((findDisplay 2001) displayCtrl 2010))) > 555) exitWith {'Die Nachricht ist zu lang! Die Nachricht darf maximal 555 Zeichen beinhalten.' call zero_fnc_msg;};[] spawn zero_fnc_giveItem;"; x = 0.365636 * safeZoneW + safeZoneX; y = 0.68207 * safeZoneH + safeZoneY; w = 0.0770211 * safeZoneW; h = 0.0309666 * safeZoneH; colorBackground[] = {-1,-1,-1,0}; color[] = {1,1,1,0}; colorFocused[] = {0,0,0,0}; colorDisabled[] = {0,0,0,0}; color2[] = {0,0,0,0}; colorText[] = {1,1,1,1}; colorBackgroundFocused[] = {-1,-1,-1,0}; colorBackground2[] = {-1,-1,-1,0}; }; class UseButton : zero_var_RscButtonMenu { onButtonClick = "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;[] call zero_fnc_useItem;"; x = 0.479677 * safeZoneW + safeZoneX; y = 0.683029 * safeZoneH + safeZoneY; w = 0.0644646 * safeZoneW; h = 0.0299801 * safeZoneH; colorBackground[] = {-1,-1,-1,-1}; colorBackgroundFocused[] = {0.863,0.078,0.235,0.2}; colorBackground2[] = {0.75,0.75,0.75,0.2}; color[] = {1,1,1,1}; colorFocused[] = {0,0,0,1}; color2[] = {0,0,0,1}; colorText[] = {1,1,1,1}; colorDisabled[] = {0,0,0,0.4}; }; class RemoveButton : zero_var_RscButtonMenu { onButtonClick = "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;[] call zero_fnc_removeItem;"; x = 0.566101 * safeZoneW + safeZoneX; y = 0.683074 * safeZoneH + safeZoneY; w = 0.0644644 * safeZoneW; h = 0.0299802 * safeZoneH; colorBackground[] = {-1,-1,-1,-1}; colorBackgroundFocused[] = {0.863,0.078,0.235,0.2}; colorBackground2[] = {0.75,0.75,0.75,0.2}; color[] = {1,1,1,1}; colorFocused[] = {0,0,0,1}; color2[] = {0,0,0,1}; colorText[] = {1,1,1,1}; colorDisabled[] = {0,0,0,0.4}; }; class ButtonClose : zero_var_RscButtonMenu { idc = -1; onButtonClick = "closeDialog 0;"; x = 0.763223 * safeZoneW + safeZoneX; y = 0.129926 * safeZoneH + safeZoneY; w = 0.00933829 * safeZoneW; h = 0.0190177 * safeZoneH; colorBackground[] = {-1,-1,-1,0}; colorBackgroundFocused[] = {0.863,0.078,0.235,0}; colorBackground2[] = {0.75,0.75,0.75,0}; color[] = {1,1,1,0}; colorFocused[] = {0,0,0,0}; color2[] = {0,0,0,0}; colorText[] = {1,1,1,0}; colorDisabled[] = {0,0,0,0}; }; class ButtonAdminMenu : zero_var_RscButtonMenu { idc = 2021; text = "$STR_PM_AdminMenu"; onButtonClick = "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;closeDialog 0; createDialog ""zero_var_admin_magic"";"; x = 0.654702 * safeZoneW + safeZoneX; y = 0.709077 * safeZoneH + safeZoneY; w = 0.118605 * safeZoneW; h = 0.0220081 * safeZoneH; colorBackground[] = {-1,-1,-1,-1}; colorBackgroundFocused[] = {0.863,0.078,0.235,0.3}; colorBackground2[] = {0.192,0.549,0.906,0.3};
color[] = {1,1,1,1}; colorFocused[] = {0,0,0,1}; color2[] = {0,0,0,1}; colorText[] = {1,1,1,1}; colorDisabled[] = {0,0,0,0.4}; class Attributes { align = "center"; }; }; class ButtonDispatchCenter : zero_var_RscButtonMenu { idc = 2112; text = "$STR_PM_DispatchCenter"; onButtonClick = "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;if(""ItemGPS"" in assignedItems player || ""B_UavTerminal"" in assignedItems player) then {closeDialog 0; createDialog ""zero_var_dispatch_center"";} else {(localize ""STR_no_item_radio"") call zero_fnc_msg;};"; x = 0.649499 * safeZoneW + safeZoneX; y = 0.488996 * safeZoneH + safeZoneY; w = 0.128879 * safeZoneW; h = 0.0330121 * safeZoneH; colorBackground[] = {-1,-1,-1,-1}; colorBackgroundFocused[] = {0.863,0.078,0.235,0.3}; colorBackground2[] = {0.192,0.549,0.906,0.3}; color[] = {1,1,1,1}; colorFocused[] = {0,0,0,1}; color2[] = {0,0,0,1}; colorText[] = {1,1,1,1}; colorDisabled[] = {0,0,0,0.4}; class Attributes { align = "center"; }; }; class WantedMenuList : zero_var_RscButtonMenu { idc = 2012; text = "Wanted List"; onButtonClick = "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;closeDialog 0; call zero_fnc_wantedMenu"; x = 0.649499 * safeZoneW + safeZoneX; y = 0.558029 * safeZoneH + safeZoneY; w = 0.128879 * safeZoneW; h = 0.0330121 * safeZoneH; colorBackground[] = {-1,-1,-1,-1}; colorBackgroundFocused[] = {0.863,0.078,0.235,0.3}; colorBackground2[] = {0.192,0.549,0.906,0.3}; color[] = {1,1,1,1}; colorFocused[] = {0,0,0,1}; color2[] = {0,0,0,1}; colorText[] = {1,1,1,1}; colorDisabled[] = {0,0,0,0.4}; class Attributes { align = "center"; }; }; class ButtonWantedAdd : zero_var_RscButtonMenu { idc = 9800; text = "Wanted +"; onButtonClick = "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;closeDialog 0; createDialog ""zero_var_wantedadd"";"; x = 0.649499 * safeZoneW + safeZoneX; y = 0.523008 * safeZoneH + safeZoneY; w = 0.128879 * safeZoneW; h = 0.0330121 * safeZoneH; colorBackground[] = {-1,-1,-1,-1}; colorBackgroundFocused[] = {0.863,0.078,0.235,0.3}; colorBackground2[] = {0.192,0.549,0.906,0.3}; color[] = {1,1,1,1}; colorFocused[] = {0,0,0,1}; color2[] = {0,0,0,1}; colorText[] = {1,1,1,1}; colorDisabled[] = {0,0,0,0.4}; class Attributes { align = "center"; }; }; class ButtonDesertedVehicle : zero_var_RscButtonMenu { idc = 2016; text = "Verlassene Fzg"; tooltip = "Zeigt verlassene Fahrzeuge auf der Karte"; onButtonClick = "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;[] spawn zero_fnc_showDesertedVehicles"; x = 0.649499 * safeZoneW + safeZoneX; y = 0.558029 * safeZoneH + safeZoneY; w = 0.128879 * safeZoneW; h = 0.0330121 * safeZoneH; colorBackground[] = {-1,-1,-1,-1}; colorBackgroundFocused[] = {0.863,0.078,0.235,0.3}; colorBackground2[] = {0.192,0.549,0.906,0.3}; color[] = {1,1,1,1}; colorFocused[] = {0,0,0,1}; color2[] = {0,0,0,1}; colorText[] = {1,1,1,1}; colorDisabled[] = {0,0,0,0.4}; class Attributes { align = "center"; }; }; class ButtonStreifenSys : zero_var_RscButtonMenu { idc = 2017; text = "Streifensystem"; onButtonClick = "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;[] spawn zero_fnc_streifensystem"; x = 0.649889 * safeZoneW + safeZoneX; y = 0.59344 * safeZoneH + safeZoneY; w = 0.128879 * safeZoneW; h = 0.0330121 * safeZoneH; colorBackground[] = {-1,-1,-1,-1}; colorBackgroundFocused[] = {0.863,0.078,0.235,0.3}; colorBackground2[] = {0.192,0.549,0.906,0.3}; color[] = {1,1,1,1}; colorFocused[] = {0,0,0,1}; color2[] = {0,0,0,1}; colorText[] = {1,1,1,1}; colorDisabled[] = {0,0,0,0.4}; class Attributes { align = "center"; }; }; class ButtonSettings : zero_var_RscButtonMenu { idc = -1; onButtonClick = "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;closeDialog 0; [] call zero_fnc_settingsMenu;"; x = 0.649042 * safeZoneW + safeZoneX; y = 0.274904 * safeZoneH + safeZoneY; w = 0.131184 * safeZoneW; h = 0.0450036 * safeZoneH; colorBackground[] = {-1,-1,-1,-1}; colorBackgroundFocused[] = {0.863,0.078,0.235,0.3}; colorBackground2[] = {0.192,0.549,0.906,0.3}; color[] = {1,1,1,1}; colorFocused[] = {0,0,0,1}; color2[] = {0,0,0,1}; colorText[] = {1,1,1,1}; colorDisabled[] = {0,0,0,0.4}; }; class ButtonMyGang : zero_var_RscButtonMenu { idc = 2011; onButtonClick = "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;if(player getVariable [""zero_var_restrained"", false]) exitWith {(localize 'STR_General_Zipties_Error') call zero_fnc_msg;}; if(((group player) getVariable ['zero_var_gang',[]]) isEqualTo []) then {[] spawn zero_fnc_gang} else {[] spawn zero_fnc_gangAdministration}"; x = 0.649042 * safeZoneW + safeZoneX; y = 0.327467 * safeZoneH + safeZoneY; w = 0.131184 * safeZoneW; h = 0.0450036 * safeZoneH; colorBackground[] = {-1,-1,-1,-1}; colorBackgroundFocused[] = {0.863,0.078,0.235,0.3}; colorBackground2[] = {0.192,0.549,0.906,0.3}; color[] = {1,1,1,1}; colorFocused[] = {0,0,0,1}; color2[] = {0,0,0,1}; colorText[] = {1,1,1,1}; colorDisabled[] = {0,0,0,0.4}; }; class ButtonKeys : zero_var_RscButtonMenu { idc = 2013; onButtonClick = "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;closeDialog 0; createDialog ""zero_var_key_management"";"; x = 0.649042 * safeZoneW + safeZoneX; y = 0.221349 * safeZoneH + safeZoneY; w = 0.131184 * safeZoneW; h = 0.0450036 * safeZoneH; colorBackground[] = {-1,-1,-1,-1}; colorBackgroundFocused[] = {0.863,0.078,0.235,0.3}; colorBackground2[] = {0.192,0.549,0.906,0.3}; color[] = {1,1,1,1}; colorFocused[] = {0,0,0,1}; color2[] = {0,0,0,1}; colorText[] = {1,1,1,1}; colorDisabled[] = {0,0,0,0.4}; }; class ButtonCell : zero_var_RscButtonMenu { idc = 20010; onButtonClick = "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;if(""ItemGPS"" in assignedItems player || ""B_UavTerminal"" in assignedItems player) then { if(!(player getVariable [""zero_var_surrender"", false]) && !(player getVariable [""zero_var_restrained"", false])) then { closeDialog 0; createDialog ""zero_var_cell_phone_write"";} else {(localize ""STR_Curr_Surrender"") call zero_fnc_msg;} } else {(localize ""STR_no_item_radio"") call zero_fnc_msg;};"; x = 0.649042 * safeZoneW + safeZoneX; y = 0.168788 * safeZoneH + safeZoneY; w = 0.131184 * safeZoneW; h = 0.0450036 * safeZoneH; colorBackground[] = {-1,-1,-1,-1}; colorBackgroundFocused[] = {0.863,0.078,0.235,0.3}; colorBackground2[] = {0.192,0.549,0.906,0.3}; color[] = {1,1,1,1}; colorFocused[] = {0,0,0,1}; color2[] = {0,0,0,1}; colorText[] = {1,1,1,1}; colorDisabled[] = {0,0,0,0.4}; }; class ButtonSyncData : zero_var_RscButtonMenu { idc = -1; onButtonClick = "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;[] call zero_fnc_syncData;"; x = 0.657152 * safeZoneW + safeZoneX; y = 0.639023 * safeZoneH + safeZoneY; w = 0.115843 * safeZoneW; h = 0.0529885 * safeZoneH; colorBackground[] = {-1,-1,-1,-1}; colorBackgroundFocused[] = {0.863,0.078,0.235,0.2}; colorBackground2[] = {0.75,0.75,0.75,0.2}; color[] = {1,1,1,1}; colorFocused[] = {0,0,0,1}; color2[] = {0,0,0,1}; colorText[] = {1,1,1,1}; colorDisabled[] = {0,0,0,0.4}; }; class button_playerinfo: zero_var_RscButtonMenu { idc = 2413; x = 0.649042 * safeZoneW + safeZoneX; y = 0.379038 * safeZoneH + safeZoneY; w = 0.131184 * safeZoneW; h = 0.0450036 * safeZoneH; onButtonClick = "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;closeDialog 0; [] call zero_fnc_skillMenu;"; colorBackground[] = {-1,-1,-1,-1}; colorBackgroundFocused[] = {0.863,0.078,0.235,0.3}; colorBackground2[] = {0.192,0.549,0.906,0.3}; color[] = {1,1,1,1}; colorFocused[] = {0,0,0,1}; color2[] = {0,0,0,1}; colorText[] = {1,1,1,1}; colorDisabled[] = {0,0,0,0.4}; }; class button_marktpreis: zero_var_RscButtonMenu { idc = 2414; x = 0.649114 * safeZoneW + safeZoneX; y = 0.432236 * safeZoneH + safeZoneY; w = 0.131184 * safeZoneW; h = 0.0450036 * safeZoneH; onButtonClick = "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;closeDialog 0; [] call zero_fnc_showMarketPrices;"; colorBackground[] = {-1,-1,-1,-1}; colorBackgroundFocused[] = {0.863,0.078,0.235,0.3}; colorBackground2[] = {0.192,0.549,0.906,0.3}; color[] = {1,1,1,1}; colorFocused[] = {0,0,0,1}; color2[] = {0,0,0,1}; colorText[] = {1,1,1,1}; colorDisabled[] = {0,0,0,0.4}; }; }; };