class zero_var_DeathScreen { idd = 7300; name = "zero_var_DeathScreen"; movingEnabled = 0; enableSimulation = 1; class controlsBackground { }; class Controls { class MedicsOnline : zero_var_RscText { idc = 7304; colorBackground[] = {0,0,0,0}; text = ""; x = 0.00190622 * safeZoneW + safeZoneX; y = 0.0776 * safeZoneH + safeZoneY; w = 0.8; h = (1 / 25); }; class MedicDistance : zero_var_RscText { idc = 7306; colorBackground[] = {0,0,0,0}; text = ""; x = 0.00190622 * safezoneW + safezoneX; y = 0.040 * safezoneH + safezoneY; w = 0.8; h = (1 / 25); }; class RespawnBtn : zero_var_RscButtonMenu { idc = 7302; x = 0.9 * safeZoneW + safeZoneX; y = 0.00500001 * safeZoneH + safeZoneY; w = (9 / 40); h = (1 / 25); text = "Respawn"; onButtonClick = "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 30}) exitWith {titleText ['Du kannst nur alle 30 Sekunden auf Respawn klicken','PLAIN'];};  zero_var_allowedToRefresh = serverTime; [] call zero_fnc_respawnButton"; colorBackground[] = {"(missionNamespace getVariable ['ZO_GUI_BCG_RGB_R',0.706])", "(missionNamespace getVariable ['ZO_GUI_BCG_RGB_G',0.075])", "(missionNamespace getVariable ['ZO_GUI_BCG_RGB_B',0.216])", "(missionNamespace getVariable ['ZO_GUI_BCG_RGB_A',1])"}; class Attributes { align = "center"; }; }; class MedicBtn : zero_var_RscButtonMenu { idc = 7303; x = 0.9 * safeZoneW + safeZoneX; y = 0.0292 * safeZoneH + safeZoneY;
w = (9 / 40); h = (1 / 25); onButtonClick = "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 0.1}) exitWith {};zero_var_allowedToRefresh = serverTime;[] call zero_fnc_requestMedic;"; text = "$STR_Medic_Send"; colorBackground[] = {"(missionNamespace getVariable ['ZO_GUI_BCG_RGB_R',0.706])", "(missionNamespace getVariable ['ZO_GUI_BCG_RGB_G',0.075])", "(missionNamespace getVariable ['ZO_GUI_BCG_RGB_B',0.216])", "(missionNamespace getVariable ['ZO_GUI_BCG_RGB_A',1])"}; class Attributes { align = "center"; }; }; class adrenalinButton : zero_var_RscButtonMenu { idc = 7305; x = 0.9 * safeZoneW + safeZoneX - (9.5 / 40); y = 0.00500001 * safeZoneH + safeZoneY; w = (9 / 40); h = (1 / 25); text = "Adrenalin-Spritze"; onButtonClick = "if(!isNil 'zero_var_allowedToRefresh' && {serverTime - zero_var_allowedToRefresh < 30}) exitWith {titleText ['Du kannst nur alle 30 Sekunden eine Adrenalin-Spritze verwenden.','PLAIN'];};  zero_var_allowedToRefresh = serverTime;[] spawn zero_fnc_adrenalin;"; colorBackground[] = {"(missionNamespace getVariable ['ZO_GUI_BCG_RGB_R',0.706])", "(missionNamespace getVariable ['ZO_GUI_BCG_RGB_G',0.075])", "(missionNamespace getVariable ['ZO_GUI_BCG_RGB_B',0.216])", "(missionNamespace getVariable ['ZO_GUI_BCG_RGB_A',1])"}; class Attributes { align = "center"; }; }; class respawnTime : zero_var_RscText { idc = 7301; colorBackground[] = {0,0,0,0}; text = ""; x = 0.422656 * safeZoneW + safeZoneX; y = 0.918 * safeZoneH + safeZoneY; w = 0.8; h = (1 / 25); }; }; };