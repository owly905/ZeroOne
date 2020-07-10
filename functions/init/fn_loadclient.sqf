if (!hasInterface) exitWith {};

private "_text";
private "_motd"; 
private "_vehicle"; 
private "_setValue"; 
private "_material"; 
private "_skin"; 
private "_lightright"; 
private "_lightleft";
private "_owner"; 
private "_color"; 
disableSerialization; 
0 spawn zero_fnc_anticheatInit; 

{ 
	if (!((profileNamespace getVariable [_x select 0,0]) isEqualType (_x select 1))) then { 
		[format ["ADMIN: %1 (%2, %3) Profilenamespace %4 Inhalt %5 Erwartet %6", player getVariable["zero_var_realname",name player], getPlayerUID player, 
			playerSide, _x select 0,(profileNamespace getVariable [_x select 0,0]),_x select 1]] 
			call zero_fnc_zoLog; profileNamespace setVariable [_x select 0,_x select 1];
	}; 
}forEach [["map_blufor_b",0.6],["map_independent_a",1],["map_unknown_b",0],["igui_grid_stance_x",1.46491],["igui_grid_vehicle_y",-0.389091],
		  ["igui_grid_radar_x",0.416],["igui_grid_bar_y",1.22909],["igui_grid_avcamera_w",0.318], ["igui_grid_avcamera_h",0.268],["igui_grid_comm_x",-0.590909],
		  ["igui_grid_gaugestability_x",0.6275],["igui_grid_mission_y",0.989091],["gui_grid_center_x",-0.1],["map_blufor_r",0],["map_independent_b",0],
		  ["map_unknown_r",0.7],["igui_grid_stance_y",-0.389091],["igui_grid_radar_y",-0.389091],["igui_grid_avcamera_x",1.24291],["igui_grid_comm_y",-0.209091],
		  ["igui_grid_gaugestability_y",0.941091],["gui_grid_center_y",-2.98023e-008],["igui_bcg_rgb_g",0.2],["map_independent_r",0],
		  ["igui_grid_avcamera_y",0.721091],["bis_welcomescreenshown",1],["igui_grid_gaugealt_x",0.1475],["gui_bcg_rgb_a",0.8],["igui_warning_rgb_a",1],
		  ["map_blufor_g",0.3],["map_civilian_a",1],["map_unknown_g",0.6],["igui_grid_notification_x",0.32],["igui_grid_gaugealt_y",0.941091],
		  ["igui_grid_gaugecompass_x",0.8675],["gui_bcg_rgb_b",0.21],["igui_text_rgb_a",1],["igui_warning_rgb_b",0],["igui_error_rgb_a",1],
		  ["map_independent_g",0.5],["map_civilian_b",0.5],["igui_grid_notification_y",-0.149091],["igui_grid_gaugecompass_y",0.941091],["gui_bcg_rgb_r",0.13],
		  ["igui_text_rgb_b",0.95],["igui_warning_rgb_r",0.8],["igui_error_rgb_b",0],["gui_titletext_rgb_a",1],["map_opfor_a",1],["map_civilian_r",0.4],
		  ["igui_grid_gps_w",0.3],["igui_grid_gps_h",0.4],["igui_grid_gaugehorizon_x",0.3875],["igui_text_rgb_r",0.95],["igui_error_rgb_r",0.8],
		  ["gui_titletext_rgb_b",1],["map_opfor_b",0],["igui_grid_gps_x",1.26091],["igui_grid_gaugehorizon_y",0.941091],["tempmissionsp_reloads_false",0],
		  ["gui_titletext_rgb_r",1],["map_opfor_r",0.5],["igui_grid_gps_y",0.589091],["igui_grid_hint_x",1.20091],["igui_grid_menu_x",-0.545909],
		  ["igui_grid_gaugespeed_x",-0.0925],["igui_grid_slingloadassistant_w",0.21],["igui_grid_slingloadassistant_h",0.38],["igui_grid_weapon_x",1.16191],
		  ["igui_grid_stamina_x",1.16191],["igui_grid_hint_y",-0.169091],["igui_grid_menu_y",-0.209091],["igui_grid_gaugespeed_y",0.941091],
		  ["igui_grid_slingloadassistant_x",1.35091],["gui_grid_w",1.2],["gui_grid_h",1],["gui_bcg_rgb_g",0.54],["igui_bcg_rgb_a",0.4],["igui_warning_rgb_g",0.5],
		  ["map_civilian_g",0],["igui_grid_weapon_y",-0.389091],["igui_grid_stamina_y",-0.247091],["igui_grid_chat_w",0.6],
		  ["igui_grid_chat_h",0.2],["igui_grid_slingloadassistant_y",0.629091],["gui_grid_x",-0.590909],["igui_bcg_rgb_b",0.2],
		  ["igui_text_rgb_g",0.95],["igui_error_rgb_g",0],["igui_grid_chat_x",-0.560909],["gui_grid_y",0.409091],["igui_bcg_rgb_r",0.2],
		  ["gui_titletext_rgb_g",1],["map_opfor_g",0],["igui_grid_chat_y",0.989091],["map_blufor_a",1],["map_unknown_a",1],["igui_grid_vehicle_x",-0.575909],
		  ["igui_grid_bar_x",-0.560909],["igui_grid_mission_x",0.960909],["gui_grid_center_w",1.2],["gui_grid_center_h",1]]; 
		  
{ 
	if (!((profileNamespace getVariable [_x select 0,false]) isEqualType (_x select 1))) then { 
		[format ["ADMIN: %1 (%2, %3) Profilenamespace %4 Inhalt %5 Erwartet %6", player getVariable["zero_var_realname",name player],
			getPlayerUID player, playerSide, _x select 0,(profileNamespace getVariable [_x select 0,0]),_x select 1]] call zero_fnc_zoLog;
		profileNamespace setVariable [_x select 0,_x select 1]; 
	};
}forEach [["display3den_navigationwidget",true],["display3den_panelright",true],["display3den_controlshint",true],["display3den_panelleft",true],
		  ["rscdisplaykeyspresetmsgbox_shown",true]]; 
	
{ 
	if (!((profileNamespace getVariable [_x select 0,[false,""""]]) isEqualType (_x select 1))) then { 
		[format ["ADMIN: %1 (%2, %3) Profilenamespace %4 Inhalt %5 Erwartet %6", player getVariable["zero_var_realname",name player], 
			getPlayerUID player, playerSide, _x select 0,(profileNamespace getVariable [_x select 0,0]),_x select 1]] call zero_fnc_zoLog; 
		profileNamespace setVariable [_x select 0,_x select 1]; 
	}; 
}forEach [["rscdebugconsole_watch4",[true,""""]],["rscdebugconsole_watch3",[true,""""]],["rscdebugconsole_watch2",[true,""""]],
		  ["rscdebugconsole_watch1",[true,""""]]]; 

("SplashNoise" call BIS_fnc_rscLayer) cutRsc ["SplashNoise","BLACK",0,true]; 
disableUserInput false; 
zero_var_playerSide = playerSide; 
waitUntil {!(isNull player) && (player == player)}; 
[[player],"zero_fnc_addExplosionEventhandler",(allPlayers - entities "HeadlessClient_F")] call zero_fnc_sendPacket; 
waitUntil {!(isNull (findDisplay 46))}; 
sleep 1.1; 
call zero_fnc_loadVariables; 
createDialog "zero_var_join"; 
waitUntil{!isNull (findDisplay 35020)}; 
_volume = musicVolume; 
playMusic 'LeadTrack01_F_EPA'; 
0 fadeMusic 0.5; 
(findDisplay 35020) displayAddEventHandler ["KeyDown", "if((_this select 1) isEqualTo 1) then {true};"]; 
disableUserInput true; 
private _box = (findDisplay 35020) displayCtrl 35023; 
private _btn = (findDisplay 35020) displayCtrl 35024; 
_btnready = (findDisplay 35020) displayCtrl 35025; 
private _restart = (findDisplay 35020) displayCtrl 35027; 
private _motdtitle = (findDisplay 35020) displayCtrl 35028; 
private _motdtext = (findDisplay 35020) displayCtrl 35029; 
private _motdbg = (findDisplay 35020) displayCtrl 35030; 
_playtime = (findDisplay 35020) displayCtrl 35048; 
_players = (findDisplay 35020) displayCtrl 35031; 
_nextrestart = (findDisplay 35020) displayCtrl 35032; 
_premiumlevel = (findDisplay 35020) displayCtrl 35049; 
_btn ctrlShow false; 
_motdtitle ctrlShow false; 
_motdtext ctrlShow false; 
_motdbg ctrlShow false; 
showChat false; 
_players ctrlSetStructuredText (parseText format ["<t font='PuristaBold' color='#e0e7ea'>%1 Spieler</t>", ((count allPlayers)-1)]); 
_txt = parseText "<t font='PuristaBold' color='#e0e7ea'>Berechne..."; _nextrestart ctrlSetStructuredText _txt; 
_playtime ctrlSetStructuredText _txt; 

0 spawn { 
	for "_i" from 1 to 5 do { 
		["Ladevorgang initialisiert ...",(_i/100)] spawn zero_fnc_setStatus; 
		uiSleep 0.1; 
	}; 
	zero_var_done = true; 
}; 

_restart ctrlSetStructuredText (parseText "<t size='1.2'>Restart Zeiten: 1:00 13:00 17:00 21:00</t>"); 
_restart ctrlCommit 0;
_premiumlevel ctrlSetStructuredText (parseText "<a href='https://www.zero-one.cc/digitsbase/' font='PuristaBold' color='#dc1430' align='center'>?</a>"); 
_box ctrlSetStructuredText (parseText "<t font='PuristaBold' color='#FFC600'>Es gibt zurzeit keine wichtigen Ankündigungen!<br/></t><t font='PuristaBold' color='#e0e7ea'>Bitte behalte diese Infobox bei jedem Verbinden auf den Server im Auge um keine Ankündigung zu verpassen!</t>"); 
waitUntil {!isNil "zero_var_hc1_owner" && {!isNil "zero_var_server_isReady"}}; 

if (!(zero_var_joinMsg isEqualTo "")) then { 
	((findDisplay 35020) displayCtrl 35023) ctrlSetStructuredText (parseText zero_var_joinMsg); 
}; 

_posText = ctrlPosition _box; 
_box ctrlSetPosition [_posText select 0, (_posText select 1), _posText select 2, ((ctrlTextHeight _box) + 0.1)]; 
_box ctrlCommit 0; 
waitUntil{!isNil "zero_var_done"}; 
zero_var_done = nil; 

0 spawn { 
	disableSerialization; 
	for "_i" from 6 to 30 do { 
		["Setze den Clienten auf ...",(_i/100)] call zero_fnc_setStatus; 
		uiSleep 0.1; 
	}; 
	zero_var_done = true; 
}; 

0 spawn zero_fnc_purgeClient; 
hint ""; 
disableUserInput false; 
0 fadeSound 0; 
0 fadeSpeech 0; 
enableRadio false; 
enableSentences false; 
setViewDistance 1000; 
setTerrainGrid 50;

removeBackpack player; 
removeAllWeapons player; 
removeUniform player; 
removeVest player; 
removeGoggles player; 
removeHeadgear player; 
setObjectViewDistance [800,50]; 
player disableConversation true; 
player addRating 9999999999999999; 
showHUD [true,true,true,true,true,false,true,true]; 
["",0,0,1,0.1,0,1000] spawn BIS_fnc_dynamicText; 
player switchCamera "EXTERNAL"; 
player setVariable["zero_var_restrained",false,true]; 
player setVariable["zero_var_escorting",false,true]; 
player setVariable["zero_var_transporting",false,true]; 
player setVariable["zero_var_realname",profileName,true]; 
call zero_fnc_loadMarker; 
call zero_fnc_loadMapRemoveObjects; 
call zero_fnc_loadMap; 

if (!isNil "zero_var_exploitationtime") then { 
	[zero_var_exploitationtime] call zero_fnc_exploitationtime; 
}; 

waitUntil{!isNil "zero_var_done"}; 
zero_var_done = nil; 

0 spawn { 
	for "_i" from 30 to 40 do { 
		["Lade Menüs ...",(_i/100)] call zero_fnc_setStatus; uiSleep 0.1; 
	}; 
	zero_var_done = true; 
}; 

call zero_fnc_setupActions; 
call zero_fnc_loadSkillsystem; 
0 spawn zero_fnc_settingsInit; 
player addEventHandler["Killed", {_this spawn zero_fnc_onPlayerKilled}]; 
player addEventHandler["HandleDamage",{_this call zero_fnc_handleDamage;}]; 
player addEventHandler["Respawn", {_this call zero_fnc_onPlayerRespawn}]; 
player addEventHandler["Take",{_this spawn zero_fnc_onTakeItem}]; 
player addEventHandler["Fired",{_this call zero_fnc_onFired}];
player addEventHandler["InventoryClosed", {_this call zero_fnc_inventoryClosed}]; 
player addEventHandler["InventoryOpened", {_this call zero_fnc_inventoryOpened}]; 
player addEventHandler["Put", {_this call zero_fnc_onPutItem}]; 
player addEventHandler ["GetOutMan",{ 
	if (zero_var_holstered) then { 
		player action ["SwitchWeapon", player, player, 100]; 
		player switchMove "AcrgPknlMstpSnonWnonDnon_AmovPercMstpSnonWnonDnon_getOutLow"; 
	}; 
}]; 
player addEventHandler ["GetInMan",{ 
	if (zero_var_holstered) then { 
		player action ["SwitchWeapon", player, player, 100]; 
	}; 
}]; 

addMissionEventHandler ["Ended",{
	if(toLower _this == toLower "ENDDEFAULT") then { 
		[format ["ADMIN: %1 (%2, %3) hat den Befehl SHIFT'-'ENDMISSION benutzt.", player getVariable["realname", name player], 
			getPlayerUID player, playerSide]] call zero_fnc_zoLog;
	}; 
	if(!isNil "zero_var_end") exitWith {}; 
	[true] call zero_fnc_updateRequest; 
	[[player],"zero_fnc_cleanupRequest",zero_var_HC1_owner,false] call zero_fnc_sendPacket; 
}]; 

"mav_taxi_v_callQueue" addPublicVariableEventHandler { 
	params ["_var", "_newValue"]; 
	if (count _newValue > (missionNamespace getVariable ["mav_taxi_v_callAmount", 0])) then { 
		if (mav_taxi_v_isOnDuty) then { 
			[["msgTaxiNewCallCreated"] call mav_taxi_fnc_getLocalization, false, "maverick\taxis\data\images\information-symbol.paa"] 
				spawn mav_taxi_fnc_showLargeNotification; 
		}; 
	}; 
	missionNamespace setVariable ["mav_taxi_v_callAmount", count _newValue]; 
}; 

waitUntil{!isNil "zero_var_done"}; 
zero_var_done = nil; 

0 spawn {
	disableSerialization; 
	for "_i" from 40 to 60 do { 
		["Fordere Spielerdaten an ...",(_i/100)] call zero_fnc_setStatus; 
		uiSleep 0.1; 
	}; 
	zero_var_done = true; 
}; 

[1, 0] call zero_fnc_Z0Check; 
switch (playerSide) do { 
	case west: { 
		[0, 120000] call zero_fnc_Z0Check; 
	}; 
	case independent: { 
		[0, 120000] call zero_fnc_Z0Check; 
	}; 
	default { 
		[0, 120000] call zero_fnc_Z0Check; 
	}; 
}; 

call zero_fnc_dataQuery; 
waitUntil{zero_var_session_completed}; 
waitUntil{!isNil "zero_var_done"}; 
zero_var_done = nil; 
_premiumlevel ctrlSetStructuredText (parseText format ["<a href='https://www.zero-one.cc/digitsbase/' font='PuristaBold' color='#dc1430' align='center'>%1</a>",
	zero_var_donator]); 
private _nextrestart2 = 0 call zero_fnc_timeuntilrestart; 
_nextrestart ctrlSetStructuredText (parseText format ["<t font='PuristaBold' color='#e0e7ea'>%1 Stunden</t>",[_nextrestart2,"HH:MM"] call BIS_fnc_secondsToString]); 
_playtime ctrlSetStructuredText (parseText format ["<t font='PuristaBold' color='#e0e7ea'>%1 Stunden</t></a>",([zero_var_totalonlineTime*60,"HH:MM"] 
	call BIS_fnc_secondsToString)]); 

0 spawn { 
	for "_i" from 60 to 70 do { 
		["Lege Spielerseite fest ...",(_i/100)] 
		call zero_fnc_setStatus; 
		uiSleep 0.1; 
	}; 
	zero_var_done = true; 
}; 

_exit = ""; 
switch (playerSide) do { 
	case west: { 
		if((call(zero_var_copLevel) < 1)) exitWith { 
			_exit = "NotWhitelisted"; 
			zero_var_paycheck = 0; 
		}; 
		player setVariable["zero_var_rank",(call(zero_var_copLevel)),true]; 
		zero_var_paycheck = switch (call(zero_var_copLevel)) do { 
								case 1 : {50000}; 
								case 2 : {75000}; 
								case 3 : {100000}; 
								case 4 : {125000}; 
								case 5 : {150000}; 
								case 6 : {200000}; 
								case 7 : {225000}; 
								case 8 : {250000}; 
								case 9 : {300000}; 
							}; 
	}; 
	case independent: { 
		if((call(zero_var_medicLevel)) < 1) exitWith { 
			_exit = "NotWhitelisted"; 
			zero_var_paycheck = 0; 
		}; 
		player setVariable["zero_var_rank",(call(zero_var_medicLevel)),true]; 
		zero_var_paycheck = switch (call(zero_var_medicLevel)) do { 
								case 1 : {40000}; 
								case 2 : {60000}; 
								case 3 : {75000}; 
								case 4 : {100000}; 
								case 5 : {130000}; 
								case 6 : {175000}; 
								case 7 : {200000}; 
							}; 
	}; 
	case civilian: { 
		civ_spawn_1 = nearestObjects[getMarkerPos "civ_spawn_1", ["Land_d_Shop_01_V1_F","Land_u_Shop_02_V1_F","Land_u_Shop_01_V1_F",
			"Land_i_Shop_01_V2_F","Land_i_Shop_02_V2_F","Land_i_Shop_02_V3_F","Land_i_Shop_02_V3_F"],300]; 
		civ_spawn_7 = nearestObjects[getMarkerPos "civ_spawn_7", ["Land_d_Shop_01_V1_F","Land_u_Shop_02_V1_F","Land_u_Shop_01_V1_F",
			"Land_i_Shop_01_V2_F","Land_i_Shop_02_V2_F","Land_i_Shop_01_V3_F","Land_i_Shop_02_V3_F","Land_i_Shop_01_V3_F","Land_i_Shop_02_V3_F"],250]; 
		civ_spawn_2 = nearestObjects[getMarkerPos "civ_spawn_2", ["Land_d_Shop_01_V1_F","Land_u_Shop_02_V1_F","Land_u_Shop_01_V1_F",
			"Land_i_Shop_01_V2_F","Land_i_Shop_02_V2_F","Land_i_Shop_01_V3_F","Land_i_Shop_02_V3_F","Land_i_Shop_01_V3_F","Land_i_Shop_02_V3_F"],250]; 
		civ_spawn_3 = nearestObjects[getMarkerPos "civ_spawn_3", ["Land_d_Shop_01_V1_F","Land_u_Shop_02_V1_F","Land_u_Shop_01_V1_F",
			"Land_i_Shop_01_V2_F","Land_i_Shop_02_V2_F","Land_i_Shop_01_V3_F","Land_i_Shop_02_V3_F","Land_i_Shop_01_V3_F","Land_i_Shop_02_V3_F"],250]; 
		civ_spawn_4 = nearestObjects[getMarkerPos "civ_spawn_4", ["Land_d_Shop_01_V1_F","Land_u_Shop_02_V1_F","Land_u_Shop_01_V1_F",
			"Land_i_Shop_01_V2_F","Land_i_Shop_02_V2_F","Land_i_Shop_01_V3_F","Land_i_Shop_02_V3_F","Land_i_Shop_01_V3_F","Land_i_Shop_02_V3_F"],250]; 
		civ_spawn_8 = nearestObjects[getMarkerPos "civ_spawn_8", ["Land_d_Shop_01_V1_F","Land_u_Shop_02_V1_F","Land_u_Shop_01_V1_F",
			"Land_i_Shop_01_V2_F","Land_i_Shop_02_V2_F","Land_i_Shop_01_V3_F","Land_i_Shop_02_V3_F","Land_i_Shop_01_V3_F","Land_i_Shop_02_V3_F"],250]; 
		zero_var_paycheck = 4400; 
	}; 
	case east: { 
		if(!zero_var_license_civ_rebel) exitWith { 
			_exit = "NoRebel"; 
			zero_var_paycheck = 0; 
		}; 
		zero_var_paycheck = 4400; 
	}; 
}; 

if (!(_exit isEqualTo "")) exitWith { 
	closeDialog 0; 
	[_exit] call bis_fnc_endMission; 
}; 

waitUntil{!isNil "zero_var_done"}; 
zero_var_done = nil;

0 spawn { 
	for "_i" from 70 to 80 do { 
		["Lege Configuration fest ...",(_i/100)] call zero_fnc_setStatus; 
		uiSleep 0.1; }; zero_var_done = true; 
}; 

_profil = switch (zero_var_playerSide) do { 
			case west : {
				"Zero_One_Ausweis_COP_"+worldName
			}; 
			case east : {
				"Zero_One_Ausweis_REB_"+worldName
			}; 
			case independent : {
			"Zero_One_Ausweis_MED_"+worldName
			}; 
			default {
			"Zero_One_Ausweis_CIV_"+worldName
			}; 
		  }; 
	
zero_var_pass = profileNamespace getVariable [_profil,""]; 

if ((zero_var_pass isEqualTo "") || (!((count zero_var_pass) isEqualTo 14))) then { 
	[[player,getPlayerUID player,zero_var_playerSide,clientOwner],"zero_fnc_nokpass",zero_var_HC1_owner,false] call zero_fnc_sendPacket; 
}; 

if(playerSide in [civilian,east]) then { 
	zero_var_vShop_rentalOnly = ["B_APC_Wheeled_01_cannon_F","B_MRAP_01_F","I_MRAP_03_F","I_APC_Wheeled_03_cannon_F"]; 
} else { 
	zero_var_vShop_rentalOnly = [""]; 
}; 

zero_var_vShop_rentalOnly = compileFinal (str(zero_var_vShop_rentalOnly)); 
zero_var_paycheck = compileFinal (str(zero_var_paycheck)); 
waitUntil{!isNil "zero_var_done"}; 
zero_var_done = nil; 

0 spawn {
	for "_i" from 80 to 90 do { 
		["Lege Texturen fest ...",(_i/100)] call zero_fnc_setStatus; 
		uiSleep 0.1; 
	}; 
	zero_var_done = true; 
}; 

call zero_fnc_setUniformTexture; 
waitUntil{!isNil "zero_var_done"}; 
zero_var_done = nil; 

0 spawn { 
	for "_i" from 90 to 95 do { 
		["Lade andere Spieler ...",(_i/100)] call zero_fnc_setStatus; 
		uiSleep 0.1; 
	}; 
	zero_var_done = true; 
}; 

{
	zero_var_localplayerlist pushBackUnique _x;
} forEach playableUnits; 

waitUntil{!isNil "zero_var_done"}; 
zero_var_done = nil; 

0 spawn { 
	for "_i" from 95 to 99 do { 
		["Fast Fertig ...",(_i/100)] call zero_fnc_setStatus; 
		uiSleep 0.1; 
	}; 
	zero_var_done = true; 
}; 

waitUntil{!isNil "zero_var_done"}; 
["Fertig ...",1] call zero_fnc_setStatus; 
_btn ctrlShow true; 
_btnready ctrlSetText "Resources\Textures\Icons\join_3.paa"; 
zero_var_done = nil; 
_btn ctrlEnable true; 
_btn ctrlCommit 0; 
waitUntil{isNull (findDisplay 35020)}; 
waitUntil{isNil "zero_var_formularChecked"}; 

if (zero_var_is_arrested) then { 
	(findDisplay 46) displayAddEventHandler ["KeyDown", "_this call zero_fnc_keyHandler"]; 
	zero_var_is_arrested = false; [player,true] spawn zero_fnc_jail; playMusic ""; 
	0 fadeMusic _volume; 
	playSound "JoinSound"; closeDialog 0; setCurrentChannel 5; 
} else { 
	call zero_fnc_spawnMenu; 
	waitUntil{!isNull (findDisplay 38500)}; 
	waitUntil{isNull (findDisplay 38500)}; 
}; 

("SplashNoise" call BIS_fnc_rscLayer) cutRsc ["SplashNoise","BLACK IN",2,false]; 
cutText ["","BLACK IN"]; 
closeDialog 0; 
0 fadeSound 1; 
0 enableChannel [false,false]; 
1 enableChannel [true,false]; 
2 enableChannel [false,false]; 
3 enableChannel [true,true]; 
4 enableChannel [true,true]; 
5 enableChannel [true,true]; 
showChat true; 
["",0,0,1,0.1,0,1000] spawn BIS_fnc_dynamicText; 
0 spawn zero_fnc_loadInitSurvival; 
2 cutRsc ["zero_var_playerHUD","PLAIN"]; 
call zero_fnc_hudUpdate; 
0 spawn zero_fnc_timeUpdate; 
player enableFatigue false; 
player enableStamina false; 
0 spawn zero_fnc_loadBriefing; 
false call zero_fnc_refreshBuffs;

if(playerSide isEqualTo west) then{ 
	{ 
		zero_var_wantedListReasons pushBack (getText (_x >> "delikt")); 
	} forEach ("true" configClasses (missionConfigFile >> "zero_wanted")); 
}; 

{ 
	if(((_x getVariable ["zero_var_vehicle_real_owner", ["",""]]) select 0) isEqualTo getPlayerUID player) then { 
		zero_var_vehicles pushBack _x; 
	}; 
} forEach (allMissionObjects "Car" + allMissionObjects "Air" + allMissionObjects "Ship"); 

if (colorCopArrayOrig isEqualTo []) then { 
	{ 
		_color = markerColor _x; 
		colorCopArrayOrig pushBack _color; 
	} forEach zero_var_markersCop; 
}; 

if (colorFireFightersArrayOrig isEqualTo []) then { 
	{ 
		_color = markerColor _x; 
		colorFireFightersArrayOrig pushBack _color; 
	} forEach zero_var_markersFirefighter; 
}; 

if (colorDpArrayOrig isEqualTo []) then { 
	{ 
		_color = markerColor _x; 
		colorDpArrayOrig pushBack _color; 
	} forEach zero_var_dpMissions; 
}; 

if (colorIllegalArrayOrig isEqualTo []) then { 
	{ 
		_color = markerColor _x; 
		colorIllegalArrayOrig pushBack _color; 
	} forEach zero_var_markersIllegal; 
}; 

if (colorLegalFieldArrayOrig isEqualTo []) then { 
	{ 
		_color = markerColor _x; 
		colorLegalFieldArrayOrig pushBack _color; 
	} forEach zero_var_markersLegalField; 
}; 

if (colorLegalProzessArrayOrig isEqualTo []) then { 
	{
		_color = markerColor _x; 
		colorLegalProzessArrayOrig pushBack _color;
	} forEach zero_var_markersLegalProzess; 
}; 

if (colorLegalTraiderArrayOrig isEqualTo []) then {
	{ 
		_color = markerColor _x; 
		colorLegalTraiderArrayOrig pushBack _color; 
	} forEach zero_var_markersLegalTraider; 
};
