if (!hasInterface) exitWith {};
ZO_GUI_BCG_RGB_R = 0.706; 
ZO_GUI_BCG_RGB_G = 0.075; 
ZO_GUI_BCG_RGB_B = 0.216; 
ZO_GUI_BCG_RGB_A = 1; 
RscSpectator_allowFreeCam = false;

[] call zero_fnc_KRON; 
zero_var_firstSpawn = true; 
zero_var_session_completed = false; 
zero_var_action_inUse = false; 
zero_var_zeroAntiCheat = false; 
zero_var_onlineTime = 0; 
zero_var_totalonlineTime = 0; 
zero_var_explosionCounter = 0; 
zero_var_interrupted = false; 
zero_var_wantedListReasons = []; 
zero_var_wantedCurrentReasons = []; 
zero_var_sidechat = true; 
zero_var_adminLevel = nil; 
zero_var_copLevel = nil; 
zero_var_sekLevel = nil; 
zero_var_medicLevel = nil; 
zero_var_restrained_lokalbank = false; 
zero_var_tagson = false; 
zero_var_session_time = false; 
zero_var_aborted = false; 
zero_var_localplayerlist = []; 
zero_var_action_delay = time; 
zero_var_trunk_vehicle = objNull; 
zero_var_garage_store = false; 
zero_var_action_gather = false; 
zero_var_session_tries = 0; 
zero_var_siren_active = false; 
zero_var_siren_enabled = false; 
zero_var_yelp_active = false; 
zero_var_lights_active = false; 
zero_var_clothing_update_cooldown = time; 
zero_var_redgull_effect = time; 
zero_var_is_processing = false; 
zero_var_bail_paid = false; 
zero_var_impound_inuse = false; 
zero_var_action_inUse = false; 
zero_var_respawn_timer = 1; 
zero_var_medic_requested = false; 
zero_var_knockout = false; 
zero_var_knocked_out = false; 
zero_var_respawned = false; 
zero_var_removeWanted = false; 
zero_var_channel_send = true; 
zero_var_Camrunning = false; 
zero_var_already_robbed = false; 
zero_var_killed_lokalbank = false; 
zero_var_synced = false; 
zero_var_phone_target = objNull; 
zero_var_animToggle = true; 
zero_var_allowedToGive = true; 
zero_var_allowedToSell = true; 
zero_var_allowedToUnimpound = diag_tickTime; 
zero_var_allowedToTransfer = time; 
zero_var_allowedToChop = true; 
zero_var_allowedToShow = true; 
zero_var_checkOneVar = round (random 164613) + 1346023; 
zero_var_checkTwoVar = round (random 164613) + 1346023; 
zero_var_lockToggleAllowed = true; 
zero_var_pickAxeAllowed = true; 
zero_var_actions = []; 
zero_var_jail_stones = 0; 
zero_var_jail_stones_needed = 1000; 
zero_var_locker_inUse = time; 
zero_var_locker = [[],[],[],[],[],[],[],[],[],[],[]]; 
zero_var_is_speaking = false; 
zero_var_firstTimeMap = 0; 
zero_var_last_dispatch_seclection = -1; 
zero_var_current_dispatch = []; 
zero_var_messages = []; 
zero_var_wanted_list = []; 
zero_var_killed = false; 
zero_var_escort = nil; 
zero_var_allowEarplug = true; 
zero_var_airnoise = false; 
zero_var_carVehicles = []; 
zero_var_airVehicles = []; 
zero_var_shipVehicles = []; 
zero_var_impoundedVehicles = []; 
zero_var_maxWeight = 74; 
zero_var_carryWeight = 0; 
zero_var_use_atm = true; 
zero_var_is_arrested = false; 
zero_var_delivery_in_progress = false; 
zero_var_thirst = 120; 
zero_var_hunger = 120; 
zero_var_drink = 0; 
zero_var_istazed = false; 
zero_var_halo_count = 1; 
zero_var_vehicles = []; 
zero_var_donator = 0; 
zero_var_exclusive = 0; 
zero_var_medipack = 0; 
zero_var_medipack_large = 0; 
zero_var_medipack_inUse = false; 
zero_var_adrenalin = 0; 
zero_var_inventory = []; 
zero_var_canBeSpeedChecked = serverTime; 
zero_var_msgCooldown = time; 
zero_var_msg = false; 
zero_var_msgArr = [[],[],[]]; 

mav_gps_v_dialog_keyCode = getNumber (missionConfigFile >> "maverick_navigation_cfg" >> "bindings" >> "keyCode"); 
mav_gps_v_dialog_reqShift = (getNumber (missionConfigFile >> "maverick_navigation_cfg" >> "bindings" >> "reqShift")) == 1; 
mav_gps_v_dialog_reqCtrl = (getNumber (missionConfigFile >> "maverick_navigation_cfg" >> "bindings" >> "reqCtrl")) == 1; 
mav_gps_v_dialog_reqAlt = (getNumber (missionConfigFile >> "maverick_navigation_cfg" >> "bindings" >> "reqAlt")) == 1; 
mav_gps_v_dialog_handlerBlockedUntil = 0; 

0 spawn { waitUntil {!isNil "mav_taxi_v_callQueue"}; 

mav_taxi_v_callAmount = count mav_taxi_v_callQueue; 
mav_taxi_v_hasCalledTaxi = false; 
mav_taxi_v_isOnDuty = false; 
mav_taxi_v_isDriver = false; 
mav_taxi_v_myDriver = objNull; 
mav_taxi_v_myCustomer = objNull; 
mav_taxi_v_currentFare_startTime = 0; 
mav_taxi_v_currentFare_totalDistance = 0; 
mav_taxi_v_myCallId = -1; 
mav_taxi_v_destination = []; 
mav_taxi_v_pricePerKilometre = getNumber (missionConfigFile >> "maverick_taxis_cfg" >> "pricing" >> "pricePerKilometre"); 
mav_taxi_v_dialog_keyCode = getNumber (missionConfigFile >> "maverick_taxis_cfg" >> "keybindings" >> "keyCode"); 
mav_taxi_v_dialog_reqShift = (getNumber (missionConfigFile >> "maverick_taxis_cfg" >> "keybindings" >> "reqShift")) == 1; 
mav_taxi_v_dialog_reqCtrl = (getNumber (missionConfigFile >> "maverick_taxis_cfg" >> "keybindings" >> "reqCtrl")) == 1; 
mav_taxi_v_dialog_reqAlt = (getNumber (missionConfigFile >> "maverick_taxis_cfg" >> "keybindings" >> "reqAlt")) == 1; 
mav_taxi_v_dialog_handlerBlockedUntil = 0; }; 

zero_var_furniture_allocationBuffers = []; 
zero_var_furniture_requestInProgress = false; 
zero_var_atm_safe = 1; 
zero_var_houses = []; 
zero_var_onPutLast = 0; 
zero_var_holstered = false; 
zero_var_buff_farmMultiplier = 1; 
zero_var_buff_specialgangshop = false; 
zero_var_buff_specialgangdealer = false; 
zero_var_buff_stamina = false; 
zero_var_buff_healing = false; 
zero_var_buff_xpboost = 1; 
zero_var_minimized = false; 
zero_var_curBox = objNull; 
zero_var_vehicleTrunkCooldown = serverTime; 
zero_var_licenses = [["zero_var_license_civ_driver","civ"], 
					 ["zero_var_license_civ_air","civ"], 
					 ["zero_var_license_civ_heroin","civ"], 
					 ["zero_var_license_civ_marijuana","civ"], 
					 ["zero_var_license_civ_gang","civ"], 
					 ["zero_var_license_civ_boat","civ"],
					 ["zero_var_license_civ_oil","civ"], 
					 ["zero_var_license_civ_dive","civ"], 
					 ["zero_var_license_civ_truck","civ"], 
					 ["zero_var_license_civ_gun","civ"], 
					 ["zero_var_license_civ_rebel","civ"], 
					 ["zero_var_license_civ_coke","civ"], 
					 ["zero_var_license_civ_diamond","civ"], 
					 ["zero_var_license_civ_copper","civ"], 
					 ["zero_var_license_civ_iron","civ"], 
					 ["zero_var_license_civ_sand","civ"], 
					 ["zero_var_license_civ_salt","civ"], 
					 ["zero_var_license_civ_cement","civ"], 
					 ["zero_var_license_civ_home","civ"], 
					 ["zero_var_license_civ_grapes","civ"], 
					 ["zero_var_license_civ_moonshine","civ"], 
					 ["zero_var_license_civ_clothing","civ"], 
					 ["zero_var_license_civ_gas","civ"], 
					 ["zero_var_license_civ_firstaid","civ"], 
					 ["zero_var_license_civ_firstaid_military","civ"], 
					 ["zero_var_license_civ_survival","civ"], 
					 ["zero_var_license_civ_survival_military","civ"], 
					 ["zero_var_license_civ_material","civ"], 
					 ["zero_var_license_civ_artifact","civ"], 
					 ["zero_var_license_civ_explosives","civ"]];

{
	missionNamespace setVariable[(_x select 0),false];
} forEach zero_var_licenses;

zero_var_mapMarkerSave = [1.2,true,true,true,true,true,true,true,true];
zero_var_mapMarkerAdvancedCbSave = [1,true,true,true,true,true,true,true];
zero_var_mapMarkerAdvancedLbSave = [0,0,0,0,0,0,0];

basicMarkerAlpha = 1;
colorCopArrayOrig = [];
colorFireFightersArrayOrig = [];
colorDpArrayOrig = [];
colorIllegalArrayOrig = []; 
colorLegalFieldArrayOrig = []; 
colorLegalProzessArrayOrig = []; 
colorLegalTraiderArrayOrig = []; 
zero_var_markersGenerell = ["atm_marker_1",
							"atm_marker_1_1",
							"atm_1_3_11_5_4_3",
							"parkingYardText",
							"atm_marker_2_10",
							"atm_marker_2_11",
							"atm_marker_2_7",
							"atm_marker_2_12",
							"civ_gar_1_4_1",
							"civ_gar_1_4",
							"tanke_1_1_1",
							"tanke_1_1",
							"tanke_8",
							"tanke_7",
							"tanke_6",
							"tanke_5",
							"tanke_4",
							"tanke_3",
							"tanke_2",
							"tanke_1",
							"atm_1_3_11_5_4_3_1_1",
							"tanke",
							"atm_1_3_11_5_4_3_1_4_1",
							"atm_marker_2_9",
							"atm_marker_2_5_1",
							"atm_marker_2_3_1_1",
							"nok_itemfach1",
							"nok_itemfach5",
							"nok_itemfach6",
							"nok_itemfach3",
							"nok_itemfach2",
							"atm_marker_2_9_1",
							"atm_marker_2_3_2",
							"atm_marker_2_3_1",
							"atm_marker_2_8_1",
							"Halojump_1",
							"Halojump_2",
							"Halojump_3",
							"atm_1_3_11_5_4_2",
							"atm_1_3_11_5_4_3_1_4",
							"atm_marker_2_5",
							"Broadcaster",
							"atm_1_3_11_5_4_3_1",
							"atm_1_3_11_5_4_3",
							"atm_marker_3",
							"atm_marker_2_10",
							"atm_1_3_11_5_4_1",
							"atm_marker_4",
							"atm_marker_2",
							"air_serv_1",
							"atm_1_3_11_1",
							"Atm1_1_1_3_1",
							"Atm1_1_1_3",
							"atm_marker_1_3",
							"atm_marker_1_2",
							"atm_marker_2_8",
							"atm_marker_2_6",
							"atm_marker_2_4",
							"atm_marker_2_3",
							"atm_marker_2_2",
							"atm_marker_2_1",
							"7News_1",
							"Halojump_4",
							"atm_marker_2_7_1",
							"Gen_3_1_2_2_1",
							"Gen_3_1_2_2_1_1",
							"Gen_3_1_2_2",
							"civ_gar_1_8",
							"civ_gar_1_4_1_1",
							"civ_gar_1_1_2",
							"civ_gar_1_7",
							"civ_gar_1_1_1",
							"civ_gar_1_6",
							"civ_gar_1_5",
							"civ_gar_1",
							"civ_gar_1_3",
							"civ_gar_1_1",
							"civ_gar_2",
							"civ_gar_4"];
							
zero_var_markersCop = ["cop_car_2",
					   "copcar_3_2_2",
					   "copcar_3_2_2",
					   "cop_air_hq_halo",
					   "copcar_3_1_3_3_2",
					   "copcar_3_1_3_4_2",
					   "copcar_3_1_3_6",
					   "police_hq_3",
					   "boatcop_1",
					   "police_hq_2_1",
					   "copcar_3_2_2_1_3",
					   "copcar",
					   "cop_air_hq_halo",
					   "copcar_3_2_2_1_1_1_1",
					   "copcar_3_1_3_1_1_1_1",
					   "Kontrolle 1_1_1",
					   "copcar_3_1_3_3_1_2",
					   "copcar_3_1_3_5",
					   "copcar_3_1_3_3_1_1",
					   "copcar_3_2_2_1_3_1",
					   "copcar_3_1_3_3_1",
					   "copcar_3_1_3_4_1",
					   "copcar_3_1_3_4",
					   "copcar_3_1_3_3",
					   "copcar_3_2_2_1_1",
					   "copcar_3_1_3_1_1",
					   "security_base_1",
					   "boatcop_1_1",
					   "copcar_3_1_3_1",
					   "security_base",
					   "boatcop_3_1",
					   "copcar_3_1_3",
					   "copcar_3_2_2_1",
					   "police_hq_1",
					   "Kontrolle 1_1",
					   "Kontrolle 1_0",
					   "copcar_3_1_3_2",
					   "copcar_3_2_1",
					   "cop_spawn_4_1",
					   "cop_spawn_3",
					   "jail","police_hq_2",
					   "copnot_1",
					   "copnot_2",
					   "copnot_3",
					   "copnot_4"]; 

zero_var_markersFirefighter = ["hospital_marker_5",
							   "hospital_marker_4",
							   "hospital_marker_6",
							   "adac_item_3",
							   "adac_air_4",
							   "adac_car_4",
							   "hospital_marker_3",
							   "adac_air_3",
							   "adac_car_3",
							   "adac_item_2",
							   "hospital_marker_2",
							   "adac_car_2",
							   "adac_item_1",
							   "adac_air_2",
							   "hospital_2",
							   "adac_car",
							   "adac_item",
							   "adac_air",
							   "hospital_marker",
							   "hospital_3",
							   "hospital_marker_1_1",
							   "hospital_marker_1",
							   "hospital_marker_1_2"];

zero_var_markersShops = ["airshop_2",
						 "Gen_3_1_1_2_1",
						 "kart_shop_text_1_1",
						 "gun_store_1_1_1",
						 "dive_shop_1_1_1_1",
						 "dive_shop_1_1_1_1_1",
						 "airshop_2_1",
						 "boat_2_1_2_1",
						 "dive_shop_1_1_1",
						 "Gen_3_1_2_1",
						 "fish_market_1_1_2",
						 "civ_truck_shop1_2_1",
						 "Gen_3_2_2",
						 "Gen_5_2",
						 "license_shop_1",
						 "car1_1_3",
						 "dive_shop_1_1",
						 "boat_2_1_2",
						 "gods_1",
						 "gun_store_1_2_2",
						 "fish_market_1_1_1",
						 "gun_store_1_2_1",
						 "Gen_3_1_1_2_1_1_1",
						 "Gen_3_2_1",
						 "Gen_3_1_1_2_1_1",
						 "Gen_6",
						 "Gen_3_4",
						 "car1_1_2_1",
						 "civ_truck_shop1_2",
						 "Gen_3_2",
						 "Gen_3_1_2",
						 "Gen_5",
						 "civ_ship_1",
						 "dive_shop",
						 "license_shop",
						 "boat_2",
						 "car1_1",
						 "Gen_3_1",
						 "Gen_3",
						 "Gen",
						 "fish_market_1",
						 "gun_store_1",
						 "Gen_3_3",
						 "Gen_3_1_1",
						 "gun_store_1_1",
						 "car1_1_2",
						 "license_shop_1_1",
						 "kart_shop_text_1",
						 "Gen_4",
						 "Gen_3_4_1",
						 "Gen_3_1_1_2",
						 "Gen_2_1_1_1",
						 "license_shop_2_2",
						 "Gen_3_1_1_1_1",
						 "Gen_3_4_2",
						 "car1_1_1",
						 "car1_1_1_1",
						 "Gen_3_1_1_3_1",
						 "license_shop_2_1_1",
						 "Gen_2_1_1",
						 "civboat",
						 "boat_2_1_1",
						 "civ_truck_shop1_1"];

zero_var_markersLegalField = ["apple_7",
							  "weiss_1",
							  "diamond_2",
							  "gas_1",
							  "lead_2",
							  "peaches_7",
							  "bananen_6",
							  "bananen_5",
							  "iron_2",
							  "bananen_4",
							  "bananen_3",
							  "bananen_2",
							  "bananen_1",
							  "bananen_7",
							  "baumwolle_1",
							  "grape_1",
							  "peaches_6",
							  "apple_6",
							  "iron_1",
							  "sand_1",
							  "oil_2",
							  "apple_3",
							  "lead_1",
							  "peaches_2",
							  "apple_1",
							  "peaches_4",
							  "peaches_3",
							  "apple_4",
							  "diamond_1",
							  "apple_2",
							  "peaches_5",
							  "peaches_1",
							  "apple_5",
							  "rock_1",
							  "copper_mine_1",
							  "oil_1",
							  "salt_1",
							  "jail_worker",
							  "postos_4",
							  "briefos_7",
							  "briefos_6",
							  "briefos_5",
							  "briefos_4",
							  "briefos_3",
							  "briefos_2",
							  "briefos_1",
							  "postos_3",
							  "postos_2",
							  "postos_1"
							  ]; 

zero_var_markersLegalProzess = ["copper_mine_1_1",
								"copper_mine_1_1",
								"iron_processing_1",
								"schneiderei_1",
								"schneiderei",
								"Grape_Processing",
								"rock_proc",
								"iron_processing",
								"OilP",
								"copper_mine_1",
								"copper_mine_1_2",
								"Salt",
								"dimond_1",
								"dimond_1_1"];

zero_var_markersLegalTraider = ["Baustelle",
								"oil_trader_5",
								"oil_trader_4_2",
								"oil_trader_3_2",
								"oil_trader_4_1",
								"Deutsche Raumfahrt Gesellschaft",
								"oil_trader_4",
								"oil_trader_3",
								"oil_trader_2",
								"oil_trader_1",
								"oil_trader",
								"oil_trader_3_1",
								"Liquid Store",
								"Postos",
								"Post 2"];

zero_var_markersIllegal = ["chop_shop_name",
						   "turtle_2",
						   "turtle_1_name_1",
						   "turtle_3",
						   "turtle_1",
						   "turtle_1_name",
						   "turtle_1_name_2_1",
						   "turtle_4",
						   "turtle_1_name_2_1_1",
						   "coke_area",
						   "heroin_area",
						   "lokale_bank_ausruaben_1",
						   "lokale_bank_ausruaben",
						   "Dealer_1",
						   "schwarz_1",
						   "Weed_p_1",
						   "Dealer_4",
						   "Dealer_2_1",
						   "gold_bar_dealer_1",
						   "Verrueckter Wissenschaftler",
						   "Moon_Destllery",
						   "cocaine processing",
						   "heroin_p_1",
						   "turle_dealer_1_3",
						   "gold_bar_dealer",
						   "fed_reserve",
						   "heroin_1",
						   "cocaine_1",
						   "weed_1",
						   "Dealer_1_3",
						   "turle_dealer_1_3_2_1",
						   "turle_dealer_1_3_2",
						   "turle_dealer_1_3_1",
						   "marker_relikttempel",
						   "Geistlicher",
						   "relikt_haendler",
						   "gefahr_trader",
						   "marker_505",
						   "gefahr_buy"];

zero_var_dpMissions = ["dp_1",
					   "dp_2",
					   "dp_3",
					   "dp_4",
					   "dp_5",
					   "dp_6",
					   "dp_7",
					   "dp_8",
					   "dp_9",
					   "dp_10",
					   "dp_11",
					   "dp_12",
					   "dp_13",
					   "dp_14",
					   "dp_15",
					   "dp_16",
					   "dp_17",
					   "dp_18",
					   "dp_19",
					   "dp_20",
					   "dp_21",
					   "dp_22",
					   "dp_23",
					   "dp_24",
					   "dp_25"]; 

zero_var_rebell = ["atm_rebelle_2",
				   "gang_area_4",
				   "gang_area_3",
				   "gang_area_2",
				   "gang_area_1",
				   "hospital_marker_1_3",
				   "gun_store_1_2",
				   "Doctor_3_1_1_1",
				   "neo garage_1_2_1",
				   "nok_itemfach7",
				   "atm_rebelle_1_2_1",
				   "neo garage_1_3_1_1",
				   "gun_store_1_2_3",
				   "atm_rebelle_1",
				   "Gen_3_1_1_2_1_2",
				   "general_store_1_1_2",
				   "neo garage_1_3_1",
				   "neo garage_1_2",
				   "nok_itemfach4",
				   "atm_rebelle_1_1"];

zero_var_zones = ["coke_area",
				  "heroin_area",
				  "turtle_4",
				  "turtle_3",
				  "turtle_1",
				  "turtle_2",
				  "exploitationwar",
				  "exploitationwarzone"];

zero_var_markersLegal = zero_var_markersLegalField + zero_var_markersLegalProzess + zero_var_markersLegalTraider;
zero_var_markersAll = zero_var_markersGenerell + zero_var_markersCop + zero_var_markersFirefighter + zero_var_markersShops + zero_var_markersLegal + zero_var_markersIllegal + zero_var_dpMissions + zero_var_rebell - zero_var_zones;
