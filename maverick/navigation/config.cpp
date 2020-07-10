class maverick_navigation_cfg { class bindings { keyCode = 49; reqShift = 0; reqAlt = 0; reqCtrl = 1; }; option_list[] = { {"Aktuelle Route", "maverick
avigation\data\currentroute.paa", "!isNil 'mav_gps_v_markers'", "(ctrlParent (_this select 0)) createDisplay 'MAV_guiNavigationCurrent';"}, {"Neue Route", "maverick
avigation\data
ewroute.paa", "isNil 'mav_gps_v_markers'", "(ctrlParent (_this select 0)) createDisplay 'MAV_guiNavigationNew';"}, {"Gespeicherte Routen", "maverick
avigation\data\savedroutes.paa", "true", "(ctrlParent (_this select 0)) createDisplay 'MAV_guiNavigationSaved';"}, {"GPS Einstellungen", "maverick
avigation\data\mapsettings.paa", "true", "(ctrlParent (_this select 0)) createDisplay 'MAV_guiNavigationSettings';"}, {"GPS Informationen", "maverick
avigation\data\help.paa", "false", "(ctrlParent (_this select 0)) createDisplay 'MAV_guiNavigationHelp';"} }; class presets { class Altis { presetLocations[] = { }; }; class Malden { presetLocations[] = { }; }; class Stratis { presetLocations[] = { }; }; class Tanoa { presetLocations[] = { }; }; }; class localization { msgMainInfoNoTaxiCalled = "<t size='2'>Du hast keinen aktiven Taxi Auftrag</t><br/><t>Drücke auf 'Taxi rufen' um einen Taxiauftrag für alle verfügbaren Fahrer zu erstellen!</t><br/><br/><t font='RobotoCondensedBold'>Verfügbare Taxifahrer: %1</t>"; msgMainInfoNoTaxiYet = "<t size='2'>Ein Taxi wurde gerufen!</t><br/><t>Bisher hat kein Taxifahrer den Auftrag angenommen. Du wirst benachrichtigt, sobald der Auftrag angenommen wurde!</t><br/><br/><t font='RobotoCondensedBold'>Verfügbare Taxifahrer: %1</t>"; msgTaxiCalled = "Ein Taxiauftrag wurde erstellt!"; msgTaxiCancelled = "Dein aktueller Taxiauftrag wurde abgebrochen!"; msgTaxiFareCancelled = "Du hast die Bezahlung abgelehnt."; msgTaxiCancelConfirm = "Ein Taxifahrer hat ihren Auftrag bereits angenommen und ist auf dem Weg. Willst du wirklich den Auftrag abbrechen?"; msgTaxiCancelHeader = "Taxiauftrag abbrechen"; msgTaxiCancelButtonConfirm = "Ja"; msgTaxiCancelButtonCancel = "Nein"; msgTaxiCancelDriverConfirm = "Willst du wirklich den Tarif abbrechen? Wenn der Preis bereits transferiert wurde, wird dieser an den Kunden zurücküberwiesen."; msgTaxiMeterInfoText = "<t>Distanz</t><t align='right' font='RobotoCondensedBold'>%1</t><br/><t>Zeit vergangen</t><t align='right' font='RobotoCondensedBold'>%2</t><br/><t>Preis (%3$/km)</t><t align='right' font='RobotoCondensedBold'>%4</t>"; msgTaxiMeterStatusTextActive = "<t align='right' font='RobotoCondensedBold'>Aktiv</t>"; msgTaxiMeterStatusTextInactive = "<t align='right' font='RobotoCondensedBold'>Inaktiv</t>"; masTaxiInfoPleaseWait = "<t size='2'>%1 ist auf dem Weg zu dir!</t><br/>Bitte warte an deiner aktuellen Position. Dein Taxi ist im Moment %2 weg.</t>"; msgTaxiFareCancelledAsCustomer = "Dein Taxifahrer hat den Tarif abgebrochen."; masTaxiFareCancelledAsDriver = "Dein Kunde hat den Tarif abgebrochen."; msgTaxiCallAccepted = "Ein Taxifahrer ist auf dem Weg."; msgTaxiDriverNotAvailable = "Du erfüllst nicht die Vorraussetzungen für einen Taxifahrer!"; msgTaxiDestinationUpdated = "Das Reiseziel wurde aktualisiert!"; msgTaxiNoRoadNearFound = "Es wurde keine Straße an der Position gefunden."; msgTaxiCannotCallWhileDriver = "Du kannst kein Taxi rufen, während du als Taxifahrer arbeitest!"; msgTaxiCannotDriveWhileCalling = "Du kannst kein Taxifahrer sein, während du auf ein Taxi wartest!"; msgTaxiSpamClickPrevention = "Du kannst die Aktion nicht so schnell ausführen!"; msgTaxiAlreadyInFare = "Du hast bereits eine Überweisung angenommen!";
msgCallTaxi = "Taxi rufen"; msgBaseNotAffordable = "Du hast nicht genug Geld, um ein Taxi zu rufen!"; msgPaidCustomer = "Du hast dein Ziel erreicht.<br/>Verdientes Geld: %1$"; msgNotFullyPaidCustomer = "Du hast dein Ziel erreicht. Da du keine %1$ hattest, wurden dir %2$ (exklusive Steuern) abgezogen!"; msgPaidDriver = "Du hast dein Ziel erreicht.<br/>Dein Kunde hat dir <t color='#43a047'>%1$</t> bezahlt."; msgNotFullyPaidDriver = "Du hast dein Ziel erreicht. Dein Kunde konnte nicht den ganzen Betrag von über <t color='#43a047'>%1$</t> bezahlen, deshalb wurden dir <t color='#43a047'>%2$</t> (exklusive Steuern) überwiesen."; msgPayCustomer = "Sie haben ihr Ziel erreicht.<br/>Der Gesamtbezahlung liegt bei %1$."; msgPayDriver = "Sie haben ihr Ziel erreicht.<br/>Dein Kunde wurde aufgefordert %1$ zu bezahlen."; msgTotalPayment = "Gesamte Bezahlung: %1$"; msgTaximeterPositionSaved = "Taximeter Position gespeichert"; msgTaximeterPositionReset = "Taximeter Position zurückgesetzt"; msgTaxiPressSpaceSaveSettings = "Drücke [Leertaste] zum speichern"; msgNowOnDuty = "Sie sind nun im Dienst und erhalten eine Nachricht bei einkommenden Aufträgen!"; msgNowOffDuty = "Sie sind nun außer Dienst"; msgTaxiMenuActiveCalls = "Zeige alle Aufträge"; msgTaxiNewCallCreated = "Ein neuer Auftrag wurde erstellt"; msgTaxiBillingPayment = "Gesamtbezahlung durch gefahrene Strecke"; msgTaxiBillingDriverMissingP = "Der Kunde kann sich den Betrag nicht leisten"; msgTaxiBillingBasePrice = "Basispreis"; msgTaxiBillingCustomerMissingP = "Betrag nicht bezahlbar"; msgTaxiCurrentFareInformation = "Aktueller Taxiauftrag"; msgTaxiBillingCancelled = "Tarif storniert"; msgTaskDriverPickupDescription = "Hole deinen Passagier an der Position ab"; msgTaskDriverPickupDescriptionS = "Abholen"; msgTaskDriverPickupHUD = "Abholen"; msgTaskCustomerDriverDescription = "Steige in das Fahrzeug deines Taxifahrers ein"; msgTaskCustomerDriverDescriptionS = "Einsteigen"; msgTaskCustomerDriverHUD = "Einsteigen"; msgTaskDriverGoToDescription = "Kundenziel"; msgTaskDriverGoToDescriptionS = "Ziel"; msgTaskDriverGoToDriverHUD = "Bewege dich hier her"; 


























}; class AlgorithmParameters { class Chernarus_Summer { greedy = 3.2; }; class australia { greedy = 3.2; }; class Malden { radius = 45; }; class Sara { radius = 66; }; }; 
class soundInstructions { 
class female_dede_1 { displayName = "weiblich"; sound100mLeft = "gpsvoice_female1_sound100mLeft"; soundNowLeft = "gpsvoice_female1_soundNowLeft"; sound100mRight = "gpsvoice_female1_sound100mRight"; soundNowRight = "gpsvoice_female1_soundNowRight";
soundOnDestinationRoad = "gpsvoice_female1_soundOnDestinationRoad"; soundDestinationReached = "gpsvoice_female1_soundDestinationReached"; soundFollowRoad = "gpsvoice_female1_soundFollowRoad"; };


class male_dede_1 { displayName = "männlich"; sound100mLeft = "gpsvoice_male1_sound100mLeft"; soundNowLeft = "gpsvoice_male1_soundNowLeft"; sound100mRight = "gpsvoice_male1_sound100mRight"; soundNowRight = "gpsvoice_male1_soundNowRight";
soundOnDestinationRoad = "gpsvoice_male1_soundOnDestinationRoad"; soundDestinationReached = "gpsvoice_male1_soundDestinationReached"; soundFollowRoad = "gpsvoice_male1_soundFollowRoad"; };

};

}; 













































































class MAV_guiNavigation { idd = 52001; onLoad = "['navigation\gui', 'MAV_guiNavigation', _this, true] call MAV_gui_fnc_openGUI"; movingEnable = 0; class Controls { 






class Background: MAV_ctrlStaticBackground { x = CENTER_X - (192 / 2) * GRID_W; y = CENTER_Y - (52 / 2) * GRID_H; w = 192 * GRID_W; h = 52 * GRID_H; }; class Header: MAV_ctrlStaticTitle { x = CENTER_X - (192 / 2) * GRID_W; y = CENTER_Y - (52 / 2) * GRID_H; w = 192 * GRID_W; h = SIZE_M * GRID_H; text = dialogMainMenu; }; class ControlsGroup: MAV_ctrlControlsGroupNoVScrollbars { idc = 0x01; x = CENTER_X - ((192 / 2) - 2) * GRID_W; y = CENTER_Y - ((52 / 2) - (SIZE_M + 2)) * GRID_H; w = (192 - (2 * 2)) * GRID_W; h = (52 - ((SIZE_M + 1) + (2 * 2))) * GRID_H; class controls {}; }; class Footer: MAV_ctrlStaticFooter { idc = 0x03; x = CENTER_X - (192 / 2) * GRID_W; y = CENTER_Y + ((52 / 2) - (SIZE_M + 2)) * GRID_H; w = 192 * GRID_W; h = (SIZE_M + 2) * GRID_H; show = 0; }; class ButtonClose: MAV_ctrlButtonPicture { idc = 0x02; x = CENTER_X - ((192 / 2) - (192 - SIZE_M)) * GRID_W; y = CENTER_Y - (52 / 2) * GRID_H; w = SIZE_M * GRID_W; h = SIZE_M * GRID_H; colorBackground[] = {0,0,0,0}; text = "\a3\3DEN\Data\Displays\Display3DEN\search_end_ca.paa"; offsetPressedX = 0; offsetPressedY = 0; tooltip = "Schließen"; }; }; }; class MAV_guiNavigationCurrent { idd = 52002; onLoad = "['navigation\gui', 'MAV_guiNavigationCurrent', _this, true] call MAV_gui_fnc_openGUI"; movingEnable = 0; 



class controls { class Background: MAV_ctrlStaticBackground { x = CENTER_X - (110 / 2) * GRID_W; y = CENTER_Y - (70 / 2) * GRID_H; w = 110 * GRID_W; h = 70 * GRID_H; }; class Header: MAV_ctrlStaticTitle { x = CENTER_X - (110 / 2) * GRID_W; y = CENTER_Y - (70 / 2) * GRID_H; w = 110 * GRID_W; h = SIZE_M * GRID_H; text = dialogCurrentRoute; }; class text: MAV_ctrlStructuredText { idc = 0x01; x = CENTER_X - ((110 / 2) - 2) * GRID_W; y = CENTER_Y - ((70 / 2) - (SIZE_M + 2)) * GRID_H; w = (110 - (2 * 2)) * GRID_W; h = (70 - ((SIZE_M + 2) + (2 * 5))) * GRID_H; }; class Footer: MAV_ctrlStaticFooter { x = CENTER_X - (110 / 2) * GRID_W; y = CENTER_Y + ((70 / 2) - (SIZE_M + 2)) * GRID_H; w = 110 * GRID_W; h = (SIZE_M + 2) * GRID_H; }; class ActionButton: MAV_ctrlButton { idc = 0x02; x = CENTER_X + ((110 * 1/2) - ((110 * 1/3) + 1)) * GRID_W; y = CENTER_Y + ((70 * 1/2) - (SIZE_M + 1)) * GRID_H; w = (110 * 1/3) * GRID_W; h = SIZE_M * GRID_H; text = dialogResetRoute; show = 0; }; class RecalculateButton: MAV_ctrlButton { idc = 0x04; x = CENTER_X - (110 * 1/3) * GRID_W; y = CENTER_Y + ((70 * 1/2) - (SIZE_M + 1)) * GRID_H; w = (110 * 1/3) * GRID_W; h = SIZE_M * GRID_H; text = dialogRecalculate; show = 0; }; class CloseButton: MAV_ctrlButton { idc = 0x03; x = CENTER_X - ((110 * 1/2) - 1) * GRID_W; y = CENTER_Y + ((70 * 1/2) - (SIZE_M + 1)) * GRID_H; w = (110 * 1/3) * GRID_W; h = SIZE_M * GRID_H; text = "Schließen"; }; }; }; class MAV_guiNavigationNew { idd = 52003; onLoad = "['navigation\gui', 'MAV_guiNavigationNew', _this, true] call MAV_gui_fnc_openGUI"; movingEnable = 0; 



class controls { class Background: MAV_ctrlStaticBackground { x = CENTER_X - (150 / 2) * GRID_W; y = CENTER_Y - (90 / 2) * GRID_H; w = 150 * GRID_W; h = 90 * GRID_H; }; class Header: MAV_ctrlStaticTitle { x = CENTER_X - (150 / 2) * GRID_W; y = CENTER_Y - (90 / 2) * GRID_H; w = 150 * GRID_W; h = SIZE_M * GRID_H; text = dialogNewRoute; }; class Footer: MAV_ctrlStaticFooter { x = CENTER_X - (150 / 2) * GRID_W; y = CENTER_Y + ((90 / 2) - (SIZE_M + 2)) * GRID_H; w = 150 * GRID_W; h = (SIZE_M + 2) * GRID_H; }; class ActionButton: MAV_ctrlButton { idc = 0x01; x = CENTER_X + ((150 * 1/2) - ((150 * 1/3) + 1)) * GRID_W; y = CENTER_Y + ((90 * 1/2) - (SIZE_M + 1)) * GRID_H; w = (150 * 1/3) * GRID_W; h = SIZE_M * GRID_H; text = dialogCalcRoute; show = 0; }; class CloseButton: MAV_ctrlButton { idc = 0x02; x = CENTER_X - ((150 * 1/2) - 1) * GRID_W; y = CENTER_Y + ((90 * 1/2) - (SIZE_M + 1)) * GRID_H; w = (150 * 1/3) * GRID_W; h = SIZE_M * GRID_H; text = dialogBack; }; class Tabs: MAV_ctrlToolbox { idc = 0x03; x = CENTER_X - (150 / 2) * GRID_W; y = CENTER_Y - ((90 / 2) - SIZE_M) * GRID_H; w = 150 * GRID_W; h = SIZE_M * GRID_H; columns = 3; strings[] = {dialogStart, dialogCheckpoint, "Ziel"}; }; class text: MAV_ctrlMap { idc = 0x04; x = CENTER_X - ((150 / 2) - 2) * GRID_W; y = CENTER_Y - ((90 / 2) - (SIZE_M * 2 + 2)) * GRID_H; w = (6/10 * 150) * GRID_W; h = (90 - ((SIZE_M * 2) + (2 * 5.5))) * GRID_H; }; class title1: MAV_ctrlStaticTitle { x = CENTER_X - ((150 / 2) - (2 * 2 + (6/10 * 150))) * GRID_W; y = CENTER_Y - ((90 / 2) - (SIZE_M * 2 + 2)) * GRID_H; w = ((4/10 * 150) - 3 * 2) * GRID_W; h = SIZE_M * GRID_H; text = dialogCommonDest; }; class locations: MAV_ctrlListbox { idc = 0x05; x = CENTER_X - ((150 / 2) - (2 * 2 + (6/10 * 150))) * GRID_W; y = CENTER_Y - ((90 / 2) - (SIZE_M * 3 + 2 + 1.5)) * GRID_H; w = ((4/10 * 150) - 3 * 2) * GRID_W; h = ((90 - ((SIZE_M * 2) + (2 * 5.5))) / 2.5) * GRID_H; }; class title2: MAV_ctrlStaticTitle { x = CENTER_X - ((150 / 2) - (2 * 2 + (6/10 * 150))) * GRID_W; y = CENTER_Y - ((90 / 2) - (SIZE_M * 2 + (2 * 4) + ((90 - ((SIZE_M * 2) + (2 * 5.5))) / 2.5) + 2)) * GRID_H; w = ((4/10 * 150) - 3 * 2) * GRID_W; h = SIZE_M * GRID_H; text = dialogSavedRouts; }; class savedroutes: MAV_ctrlListbox { idc = 0x06; x = CENTER_X - ((150 / 2) - (2 * 2 + (6/10 * 150))) * GRID_W; y = CENTER_Y - ((90 / 2) - (SIZE_M * 3 + (2 * 4) + ((90 - ((SIZE_M * 2) + (2 * 5.5))) / 2.5) + 3.5)) * GRID_H; w = ((4/10 * 150) - 3 * 2) * GRID_W; h = ((90 - ((SIZE_M * 2) + (2 * 5.5))) / 3.5) * GRID_H; }; }; }; class MAV_guiNavigationSettings { idd = 52004; onLoad = "['navigation\gui', 'MAV_guiNavigationSettings', _this, true] call MAV_gui_fnc_openGUI"; movingEnable = 0; 



class controls { class Background: MAV_ctrlStaticBackground { x = CENTER_X - (90 / 2) * GRID_W; y = CENTER_Y - (60 / 2) * GRID_H; w = 90 * GRID_W; h = 60 * GRID_H; }; class Header: MAV_ctrlStaticTitle { x = CENTER_X - (90 / 2) * GRID_W; y = CENTER_Y - (60 / 2) * GRID_H; w = 90 * GRID_W; h = SIZE_M * GRID_H; text = "Einstellungen"; }; class Footer: MAV_ctrlStaticFooter { x = CENTER_X - (90 / 2) * GRID_W; y = CENTER_Y + ((60 / 2) - (SIZE_M + 2)) * GRID_H; w = 90 * GRID_W; h = (SIZE_M + 2) * GRID_H; }; class ActionButton: MAV_ctrlButton { idc = 0x01; x = CENTER_X + ((90 * 1/2) - ((90 * 1/3) + 1)) * GRID_W; y = CENTER_Y + ((60 * 1/2) - (SIZE_M + 1)) * GRID_H; w = (90 * 1/3) * GRID_W; h = SIZE_M * GRID_H; text = dialogSave; }; class CloseButton: MAV_ctrlButton { idc = 0x02; x = CENTER_X - ((90 * 1/2) - 1) * GRID_W; y = CENTER_Y + ((60 * 1/2) - (SIZE_M + 1)) * GRID_H; w = (90 * 1/3) * GRID_W; h = SIZE_M * GRID_H; text = dialogBack; }; class distance: MAV_ctrlControlsGroupNoScrollbars { x = CENTER_X - ((90 / 2) - 2) * GRID_W; y = CENTER_Y - ((60 / 2) - (SIZE_M + 0.2) - 1) * GRID_H; w = (90 - (2 * 2)) * GRID_W; h = SIZE_M * GRID_H; class controls { class title: MAV_ctrlStaticTitle { x = 0; y = 0; w = (4/10 * 90) * GRID_W; h = SIZE_M * GRID_H; text = dialogUnitSpeed; }; class list: MAV_ctrlCombo { idc = 0x03; x = (2 + 1.5 + (4/10 * (90 - (2 * 2)))) * GRID_W; y = 0; w = (6/10 * (90 - (2 * 5))) * GRID_W; h = SIZE_M * GRID_H; }; }; }; class travel: MAV_ctrlControlsGroupNoScrollbars { x = CENTER_X - ((90 / 2) - 2) * GRID_W; y = CENTER_Y - ((60 / 2) - (SIZE_M * 2 + (0.2 * 2)) - 1) * GRID_H; w = (90 - (2 * 2)) * GRID_W; h = SIZE_M * GRID_H; class controls { class title: MAV_ctrlStaticTitle { x = 0; y = 0; w = (4/10 * 90) * GRID_W; h = SIZE_M * GRID_H; text = dialogPreference; }; class list: MAV_ctrlCombo { idc = 0x04; x = (2 + 1.5 + (4/10 * (90 - (2 * 2)))) * GRID_W; y = 0; w = (6/10 * (90 - (2 * 5))) * GRID_W; h = SIZE_M * GRID_H; }; }; }; class voicesetting: MAV_ctrlControlsGroupNoScrollbars { x = CENTER_X - ((90 / 2) - 2) * GRID_W; y = CENTER_Y - ((60 / 2) - (SIZE_M * 3 + (0.2 * 4)) - 1) * GRID_H; w = (90 - (2 * 2)) * GRID_W; h = SIZE_M * GRID_H; class controls { class title: MAV_ctrlStaticTitle { x = 0; y = 0; w = (4/10 * 90) * GRID_W; h = SIZE_M * GRID_H; text = dialogVoiceSetting; }; class list: MAV_ctrlCombo { idc = 0x11; x = (2 + 1.5 + (4/10 * (90 - (2 * 2)))) * GRID_W; y = 0; w = (6/10 * (90 - (2 * 5))) * GRID_W; h = SIZE_M * GRID_H; }; }; }; class gui_position: MAV_ctrlControlsGroupNoScrollbars { x = CENTER_X - ((90 / 2) - 2) * GRID_W; y = CENTER_Y - ((60 / 2) - (SIZE_M * 3 + (2 * 3)) - 1) * GRID_H; w = (90 - (2 * 2)) * GRID_W; h = SIZE_M * GRID_H; class controls { class title: MAV_ctrlStaticTitle { x = 0; y = 0; w = (4/10 * 90) * GRID_W; h = SIZE_M * GRID_H; text = dialogGpsPos; }; class customize: MAV_ctrlButton { idc = 0x05; x = (2 + 1.5 + (4/10 * (90 - (2 * 2)))) * GRID_W; y = 0; w = (6/10 * (90 - (2 * 25))) * GRID_W; h = SIZE_M * GRID_H; text = dialogCustomize; }; class reset: MAV_ctrlButton { idc = 0x10; x = (2 + 25 + (4/10 * (90 - 2))) * GRID_W; y = 0; w = (6/10 * (90 - (2 * 25))) * GRID_W; h = SIZE_M * GRID_H; text = dialogReset; }; }; }; class colors: MAV_ctrlControlsGroupNoScrollbars { x = CENTER_X - ((90 / 2) - 2) * GRID_W; y = CENTER_Y - ((60 / 2) - (SIZE_M * 4 + (2 * 4))) * GRID_H; w = (90 - (2 * 2)) * GRID_W; h = (SIZE_M * 4 + (1.5 * 3)) * GRID_H; class controls { class title: MAV_ctrlStaticTitle { idc = 0x06; x = 0; y = 0; w = (90 - (2 * 2)) * GRID_W; h = SIZE_M * GRID_H; text = dialogGpsColor; }; class slider1: MAV_ctrlXSliderH { idc = 0x07; x = 0; y = (SIZE_M + 1.5) * GRID_H; w = (90 - (2 * 2)) * GRID_W; h = SIZE_M * GRID_H; }; class slider2: MAV_ctrlXSliderH { idc = 0x08; x = 0; y = ((SIZE_M * 2) + 1.5) * GRID_H; w = (90 - (2 * 2)) * GRID_W; h = SIZE_M * GRID_H; }; class slider3: MAV_ctrlXSliderH { idc = 0x09; x = 0; y = ((SIZE_M * 3) + 1.5) * GRID_H; w = (90 - (2 * 2)) * GRID_W; h = SIZE_M * GRID_H; }; }; }; }; }; class MAV_guiNavigationResize { idd = 52005; onLoad = "['navigation\gui', 'MAV_guiNavigationResize', _this, true] call MAV_gui_fnc_openGUI"; duration = 10e+9; fadeIn = 0; fadeOut = 0; 


class ControlsBackground { class Background: MAV_ctrlStaticBackground { x = (safeZoneX + safeZoneW) - ((100 + SIZE_M) * GRID_W); y = (safeZoneY + safeZoneH) - ((60 + SIZE_S) * GRID_H); w = 100 * GRID_W;
h = 60 * GRID_H; }; class Map: MAV_ctrlMapEmpty { idc = 0x01; x = (safeZoneX + safeZoneW) - ((100 + SIZE_M) * GRID_W); y = (safeZoneY + safeZoneH) - ((60 + SIZE_S) * GRID_H); w = (100 - (100 / 5)) * GRID_W; h = (60 - SIZE_M) * GRID_H; colorBackground[] = {1,1,1,0}; colorOutside[] = {1,1,1,0}; colorTracks[] = {1, 1, 1, 1}; colorTracksFill[] = {1, 1, 1, 1}; colorRoads[] = {1, 1, 1, 1}; colorRoadsFill[] = {1, 1, 1, 1}; colorMainRoads[] = {1, 1, 1, 1}; colorMainRoadsFill[] = {1, 1, 1, 1}; ptsPerSquareSea = 5; ptsPerSquareTxt = 20; ptsPerSquareCLn = 10; ptsPerSquareExp = 10; ptsPerSquareCost = 10; ptsPerSquareFor = 9; ptsPerSquareForEdge = 9; ptsPerSquareRoad = 6; ptsPerSquareObj = 9; scaleMin = 0.0001; scaleMax = 1.0; scaleDefault = 0.1; alphaFadeStartScale = 0; alphaFadeEndScale = 0; text = "#(argb,8,8,3)color(1,1,1,1)"; sizeEx = 0; font = FONT_NORMAL; colorText[] = {0,0,0,0}; }; }; class Controls { class BottomText: MAV_ctrlStaticTitle { idc = 0x02; x = (safeZoneX + safeZoneW) - ((100 + SIZE_M) * GRID_W); y = (safeZoneY + safeZoneH) - ((60 + SIZE_S - (60 - SIZE_M)) * GRID_H); w = 100 * GRID_W; h = SIZE_M * GRID_H; shadow = 1; size = SIZE_M * GRID_H; sizeEx = SIZE_M * GRID_H; text = dialogDragHere; }; class DirectionIndicatorAhead: MAV_ctrlStaticPictureKeepAspect { idc = 0x05; x = (safeZoneX + safeZoneW) - ((100 + SIZE_M - (100 - 14)) * GRID_W); y = (safeZoneY + safeZoneH) - ((60 + SIZE_S - 16 - 2) * GRID_H); w = 7 * GRID_W; h = 7 * GRID_H; text = "maverick
avigation\data\arrow-left.paa"; }; class BackgroundDirectionIndicator: MAV_ctrlStaticBackground { idc = 0x06; x = (safeZoneX + safeZoneW) - ((100 + SIZE_M - (100 - 20)) * GRID_W); y = (safeZoneY + safeZoneH) - ((60 + SIZE_S - 25 - 2) * GRID_H); w = (100 / 5) * GRID_W; h = 28 * GRID_H; colorBackground[] = {0.99,0.49,0,0}; }; class DirectionIndicator: MAV_ctrlStaticPictureKeepAspect { idc = 0x03; x = (safeZoneX + safeZoneW) - ((100 + SIZE_M - (100 - 18)) * GRID_W); y = (safeZoneY + safeZoneH) - ((60 + SIZE_S - 28 - 2) * GRID_H); w = 15 * GRID_W; h = 15 * GRID_H; text = "maverick
avigation\data\arrow-straight.paa"; colorText[] = {1,1,1,1}; }; class DirectionInformation: MAV_ctrlStructuredText { idc = 0x04; x = (safeZoneX + safeZoneW) - ((100 + SIZE_M - (100 - 20)) * GRID_W); y = (safeZoneY + safeZoneH) - ((60 + SIZE_S - 45 - 2) * GRID_H); w = (100 / 5) * GRID_W; h = SIZE_M * GRID_W; text = "<t align='center'>XXXm</t>"; size = SIZE_M * GRID_H; sizeEx = SIZE_M * GRID_H; shadow = 0; colorText[] = {1,1,1,1}; }; class ETAInformation: MAV_ctrlStaticTitle { idc = 0x07; x = (safeZoneX + safeZoneW) - ((100 + SIZE_M - (100 - 20)) * GRID_W); y = (safeZoneY + safeZoneH) - ((60 + SIZE_S - 1) * GRID_H); w = (100 / 5) * GRID_W; h = SIZE_M * GRID_H; text = "X Min"; }; class DistanceInformation: MAV_ctrlStaticTitle { idc = 0x08; x = (safeZoneX + safeZoneW) - ((100 + SIZE_M - (100 - 20)) * GRID_W); y = (safeZoneY + safeZoneH) - ((60 + SIZE_S - 7) * GRID_H); w = (100 / 5) * GRID_W; h = SIZE_M * GRID_H; text = "XXX m"; }; class BackgroundWarningSignInformation: MAV_ctrlStaticBackground { idc = 0xA; x = (safeZoneX + safeZoneW) - ((100 + SIZE_M - 1) * GRID_W); y = (safeZoneY + safeZoneH) - ((60 + SIZE_S - 1) * GRID_H); w = 13 * GRID_W; h = 13 * GRID_H; colorBackground[] = {0.99,0.49,0,0}; }; class WarningSignInformation: MAV_ctrlStructuredText { idc = 0x09; x = (safeZoneX + safeZoneW) - ((100 + SIZE_M - 0.5) * GRID_W); y = (safeZoneY + safeZoneH) - ((60 + SIZE_S - 2.5) * GRID_H); w = (100 - 20) * GRID_W; h = 11 * GRID_H; size = 10 * GRID_H; sizeEx = 10 * GRID_H; shadow = 0; color[] = {0,0,0,1}; }; }; }; class MAV_guiNavigationSaved { idd = 52006; onLoad = "['navigation\gui', 'MAV_guiNavigationSaved', _this, true] call MAV_gui_fnc_openGUI"; movingEnable = 0; 



class controls { class Background: MAV_ctrlStaticBackground { x = CENTER_X - (90 / 2) * GRID_W; y = CENTER_Y - (60 / 2) * GRID_H; w = 90 * GRID_W; h = 60 * GRID_H; }; class Header: MAV_ctrlStaticTitle { x = CENTER_X - (90 / 2) * GRID_W; y = CENTER_Y - (60 / 2) * GRID_H; w = 90 * GRID_W; h = SIZE_M * GRID_H; text = dialogSavedTitle; }; class GroupList: MAV_ctrlListbox { idc = 0x01; x = CENTER_X - ((90 * 1/2) - 2) * GRID_W; y = CENTER_Y - ((60 * 1/2) - (SIZE_M + 2)) * GRID_H; w = (90 - (2 * 2)) * GRID_W; h = (60 - ((SIZE_M + 2) + 5 + (2 * 2))) * GRID_H; }; class Footer: MAV_ctrlStaticFooter { x = CENTER_X - (90 / 2) * GRID_W; y = CENTER_Y + ((60 / 2) - (SIZE_M + 2)) * GRID_H; w = 90 * GRID_W; h = (SIZE_M + 2) * GRID_H; }; class StartButton: MAV_ctrlButton { idc = 0x02; x = CENTER_X + ((90 * 1/2) - ((90 * 0.8/3) + 1)) * GRID_W; y = CENTER_Y + ((60 * 1/2) - (SIZE_M + 1)) * GRID_H; w = (90 * 0.8/3) * GRID_W; h = SIZE_M * GRID_H; text = dialogLoad; show = 0; }; class DeleteButton: MAV_ctrlButton { idc = 0x03; x = CENTER_X + ((90 * 1/2) - ((90 * 0.8/3) + 33)) * GRID_W; y = CENTER_Y + ((60 * 1/2) - (SIZE_M + 1)) * GRID_H; w = (90 * 0.8/3) * GRID_W; h = SIZE_M * GRID_H; text = dialogDelete; show = 0; }; class CloseButton: MAV_ctrlButton { idc = 0x04; x = CENTER_X - ((90 * 1/2) - 1) * GRID_W; y = CENTER_Y + ((60 * 1/2) - (SIZE_M + 1)) * GRID_H; w = (90 * 0.8/3) * GRID_W; h = SIZE_M * GRID_H; text = dialogBack; }; }; }; class MAV_guiNavigationCalculateWO { idd = 52007; onLoad = "['navigation\gui', 'MAV_guiNavigationCalculateWO', _this, true] call MAV_gui_fnc_openGUI"; 



class Controls { class Background: MAV_ctrlStaticBackground { x = CENTER_X - (110 / 2) * GRID_W; y = CENTER_Y - (70 / 2) * GRID_H; w = 110 * GRID_W; h = 70 * GRID_H; }; class Header: MAV_ctrlStaticTitle { x = CENTER_X - (110 / 2) * GRID_W; y = CENTER_Y - (70 / 2) * GRID_H; w = 110 * GRID_W; h = SIZE_M * GRID_H; text = dialogCalculationH; }; class Footer: MAV_ctrlStaticFooter { x = CENTER_X - (110 / 2) * GRID_W; y = CENTER_Y + ((70 / 2) - (SIZE_M + 2)) * GRID_H; w = 110 * GRID_W; h = (SIZE_M + 2) * GRID_H; }; class StartButton: MAV_ctrlButton { idc = 0x01; x = CENTER_X + ((110 * 1/2) - ((110 * 0.8/3) + 1)) * GRID_W; y = CENTER_Y + ((70 * 1/2) - (SIZE_M + 1)) * GRID_H; w = (110 * 0.8/3) * GRID_W; h = SIZE_M * GRID_H; text = dialogStart; show = 0; }; class SaveButton: MAV_ctrlButton { idc = 0x02; x = CENTER_X + ((110 * 1/2) - ((110 * 0.8/3) + 40)) * GRID_W; y = CENTER_Y + ((70 * 1/2) - (SIZE_M + 1)) * GRID_H; w = (110 * 0.8/3) * GRID_W; h = SIZE_M * GRID_H; text = dialogSave; show = 0; }; class CloseButton: MAV_ctrlButton { idc = 0x03; x = CENTER_X - ((110 * 1/2) - 1) * GRID_W; y = CENTER_Y + ((70 * 1/2) - (SIZE_M + 1)) * GRID_H; w = (110 * 0.8/3) * GRID_W; h = SIZE_M * GRID_H; text = dialogBack; }; class LoadingGroup: MAV_ctrlControlsGroupNoScrollbars { idc = 0x04; x = CENTER_X - (110 / 2) * GRID_W; y = CENTER_Y - ((70 / 2) - (SIZE_M + 2)) * GRID_H; w = (110 - (2 * 2)) * GRID_W; h = (70 - ((SIZE_M + 2) + (2 * 5))) * GRID_H; show = 0; class Controls { class Loading: MAV_ctrlStaticPicture { idc = 0x05; x = ((110 / 2) - 4) * GRID_W; y = (70 / 2.5) * GRID_W; w = (SIZE_XL * 1.5) * GRID_W; h = (SIZE_XL * 1.5) * GRID_H; text = "maverick
avigation\data\loading.paa"; }; class Text: MAV_ctrlStructuredText { idc = 0x06; x = 0; y = ((70 / 2.5) + (SIZE_XL * 1.5) + (2 * 3)) * GRID_W; w = (110 - (2 * 2)) * GRID_W; h = (SIZE_M * 1.5) * GRID_H; text = dialogCalcProgress; }; }; }; class GroupList: MAV_ctrlStructuredText { idc = 0x07; x = CENTER_X - ((110 * 1/2) - 2) * GRID_W; y = CENTER_Y - ((70 * 1/2) - (SIZE_M + 2) - SIZE_M) * GRID_H; w = (110 - (2 * 2)) * GRID_W; h = (70 - ((SIZE_M + 2) + 5 + (2 * 2)) - SIZE_M) * GRID_H; show = 0; }; class Tabs: MAV_ctrlToolbox { idc = 0x08; x = CENTER_X - (110 / 2) * GRID_W; y = CENTER_Y - ((70 / 2) - SIZE_M) * GRID_H; w = 110 * GRID_W; h = SIZE_M * GRID_H; columns = 2; show = 0; strings[] = {dialogRouteInfo, dialogRouteMapPrev}; }; class PreviewMap: MAV_ctrlMap { idc = 0x09; x = CENTER_X - ((110 * 1/2) - 2) * GRID_W; y = CENTER_Y - ((70 * 1/2) - (SIZE_M + 2) - SIZE_M) * GRID_H; w = (110 - (2 * 2)) * GRID_W; h = (70 - ((SIZE_M + 2) + 5 + (2 * 2)) - SIZE_M) * GRID_H; }; }; }; class MAV_guiNavigationCalculate { idd = 52008; 



class Controls { class Background: MAV_ctrlStaticBackground { x = CENTER_X - (110 / 2) * GRID_W; y = CENTER_Y - (70 / 2) * GRID_H; w = 110 * GRID_W; h = 70 * GRID_H; }; class Header: MAV_ctrlStaticTitle { x = CENTER_X - (110 / 2) * GRID_W; y = CENTER_Y - (70 / 2) * GRID_H; w = 110 * GRID_W; h = SIZE_M * GRID_H; text = dialogNavigation; }; class Footer: MAV_ctrlStaticFooter { x = CENTER_X - (110 / 2) * GRID_W; y = CENTER_Y + ((70 / 2) - (SIZE_M + 2)) * GRID_H; w = 110 * GRID_W; h = (SIZE_M + 2) * GRID_H; }; class StartButton: MAV_ctrlButton { idc = 0x01; x = CENTER_X + ((110 * 1/2) - ((110 * 0.8/3) + 1)) * GRID_W; y = CENTER_Y + ((70 * 1/2) - (SIZE_M + 1)) * GRID_H; w = (110 * 0.8/3) * GRID_W; h = SIZE_M * GRID_H; text = dialogStart; show = 0; }; class DeleteButton: MAV_ctrlButton { idc = 0x02; x = CENTER_X + ((110 * 1/2) - ((110 * 0.8/3) + 40)) * GRID_W; y = CENTER_Y + ((70 * 1/2) - (SIZE_M + 1)) * GRID_H; w = (110 * 0.8/3) * GRID_W; h = SIZE_M * GRID_H; text = dialogSave; show = 0; }; class CloseButton: MAV_ctrlButton { idc = 0x03; x = CENTER_X - ((110 * 1/2) - 1) * GRID_W; y = CENTER_Y + ((70 * 1/2) - (SIZE_M + 1)) * GRID_H; w = (110 * 0.8/3) * GRID_W; h = SIZE_M * GRID_H; text = dialogBack; }; class text: MAV_ctrlMap { idc = 0x04; x = CENTER_X - ((110 / 2) - 2) * GRID_W; y = CENTER_Y - ((70 / 2) - (SIZE_M + 2)) * GRID_H; w = (110 - (2 * 2)) * GRID_W; h = (70 - ((SIZE_M + 2) + (2 * 5) + SIZE_M)) * GRID_H; }; class headerrr: MAV_ctrlStaticTitle { idc = 0x05; x = CENTER_X - ((110 / 2) - 2) * GRID_W; y = CENTER_Y - ((70 / 2) - (SIZE_M + 2 + (70 - ((SIZE_M + 2) + (2 * 5) + SIZE_M)))) * GRID_H; w = (110 - (2 * 2)) * GRID_W; h = SIZE_M * GRID_H; text = "INFO HERE"; }; class GroupList: MAV_ctrlStructuredText { idc = 0x06; x = CENTER_X - ((110 * 1/2) - 2) * GRID_W; y = CENTER_Y - ((70 * 1/2) - (SIZE_M + 2)) * GRID_H; w = (110 - (2 * 2)) * GRID_W; h = (70 - ((SIZE_M + 2) + 5 + (2 * 2))) * GRID_H; show = 0; }; }; }; class MAV_guiNavigationSave { idd = 52010; onLoad = "['navigation\gui', 'MAV_guiNavigationSave', _this, true] call MAV_gui_fnc_openGUI"; 



class Controls { class Background: MAV_ctrlStaticBackground { x = CENTER_X - (80 / 2) * GRID_W; y = CENTER_Y - (21 / 2) * GRID_H; w = 80 * GRID_W; h = 21 * GRID_H; }; class Header: MAV_ctrlStaticTitle { x = CENTER_X - (80 / 2) * GRID_W; y = CENTER_Y - (21 / 2) * GRID_H; w = 80 * GRID_W; h = SIZE_M * GRID_H; text = dialogSaveRoute; }; class Footer: MAV_ctrlStaticFooter { x = CENTER_X - (80 / 2) * GRID_W; y = CENTER_Y + ((21 / 2) - (SIZE_M + 2)) * GRID_H; w = 80 * GRID_W; h = (SIZE_M + 2) * GRID_H; }; class StartButton: MAV_ctrlButton { idc = 0x01; x = CENTER_X + ((80 * 1/2) - ((80 * 0.8/3) + 1)) * GRID_W; y = CENTER_Y + ((21 * 1/2) - (SIZE_M + 1)) * GRID_H; w = (80 * 0.8/3) * GRID_W; h = SIZE_M * GRID_H; text = dialogSave; show = 0; }; class CloseButton: MAV_ctrlButton { idc = 0x02; x = CENTER_X - ((80 * 1/2) - 1) * GRID_W; y = CENTER_Y + ((21 * 1/2) - (SIZE_M + 1)) * GRID_H; w = (80 * 0.8/3) * GRID_W; h = SIZE_M * GRID_H; text = dialogBack; }; class RouteName: MAV_ctrlEdit { idc = 0x03; x = CENTER_X - ((80 * 1/2) - 2) * GRID_W; y = CENTER_Y - ((21 * 1/2) - (SIZE_M + 2)) * GRID_H; w = (80 - (2 * 2)) * GRID_W; h = SIZE_M * GRID_H; text = dialogRouteName; maxChars = 30; }; }; };


