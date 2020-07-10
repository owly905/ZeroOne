

class maverick_taxis_cfg { class pricing { pricePerKilometre = 7500; basePrice = 1000; moneyHandVariable = "life_cash"; moneyBankVariable = "life_atmbank"; paymentSource = "BOTH"; fullRefundOnDriverAbort = 1; }; class keybindings { keyCode = 20; reqShift = 0; reqAlt = 0; reqCtrl = 1; }; class general { automaticNavigation = 1; }; class drivers { condition = "true"; }; class localization { msgMainInfoNoTaxiCalled = "<t size='2'>Du hast keinen aktiven Taxi Auftrag</t><br/><t>Drücke auf 'Taxi rufen' um einen Taxiauftrag für alle verfügbaren Fahrer zu erstellen!</t><br/><br/><t font='RobotoCondensedBold'>Verfügbare Taxifahrer: %1</t>"; msgMainInfoNoTaxiYet = "<t size='2'>Ein Taxi wurde gerufen!</t><br/><t>Bisher hat kein Taxifahrer den Auftrag angenommen. Du wirst benachrichtigt, sobald der Auftrag angenommen wurde!</t><br/><br/><t font='RobotoCondensedBold'>Verfügbare Taxifahrer: %1</t>"; msgTaxiCalled = "Ein Taxiauftrag wurde erstellt!"; msgTaxiCancelled = "Dein aktueller Taxiauftrag wurde abgebrochen!"; msgTaxiFareCancelled = "Du hast die Bezahlung abgelehnt."; msgTaxiCancelConfirm = "Ein Taxifahrer hat ihren Auftrag bereits angenommen und ist auf dem Weg. Willst du wirklich den Auftrag abbrechen?"; msgTaxiCancelHeader = "Taxiauftrag abbrechen"; msgTaxiCancelButtonConfirm = "Ja"; msgTaxiCancelButtonCancel = "Nein"; msgTaxiCancelDriverConfirm = "Willst du wirklich den Tarif abbrechen? Wenn der Preis bereits transferiert wurde, wird dieser an den Kunden zurücküberwiesen."; msgTaxiMeterInfoText = "<t>Distanz</t><t align='right' font='RobotoCondensedBold'>%1</t><br/><t>Zeit vergangen</t><t align='right' font='RobotoCondensedBold'>%2</t><br/><t>Preis (%3$/km)</t><t align='right' font='RobotoCondensedBold'>%4</t>"; msgTaxiMeterStatusTextActive = "<t align='right' font='RobotoCondensedBold'>Aktiv</t>"; msgTaxiMeterStatusTextInactive = "<t align='right' font='RobotoCondensedBold'>Inaktiv</t>"; masTaxiInfoPleaseWait = "<t size='2'>%1 ist auf dem Weg zu dir!</t><br/>Bitte warte an deiner aktuellen Position. Dein Taxi ist im Moment %2 weg.</t>"; msgTaxiFareCancelledAsCustomer = "Dein Taxifahrer hat den Tarif abgebrochen."; masTaxiFareCancelledAsDriver = "Dein Kunde hat den Tarif abgebrochen."; msgTaxiCallAccepted = "Ein Taxifahrer ist auf dem Weg."; msgTaxiDriverNotAvailable = "Du erfüllst nicht die Vorraussetzungen für einen Taxifahrer!"; msgTaxiDestinationUpdated = "Das Reiseziel wurde aktualisiert!"; msgTaxiNoRoadNearFound = "Es wurde keine Straße an der Position gefunden."; msgTaxiCannotCallWhileDriver = "Du kannst kein Taxi rufen, während du als Taxifahrer arbeitest!"; msgTaxiCannotDriveWhileCalling = "Du kannst kein Taxifahrer sein, während du auf ein Taxi wartest!"; msgTaxiSpamClickPrevention = "Du kannst die Aktion nicht so schnell ausführen!"; msgTaxiAlreadyInFare = "Du hast bereits eine Überweisung angenommen!"; msgCallTaxi = "Taxi rufen"; msgBaseNotAffordable = "Du hast nicht genug Geld, um ein Taxi zu rufen!"; msgPaidCustomer = "Du hast dein Ziel erreicht.<br/>Verdientes Geld: %1$"; msgNotFullyPaidCustomer = "Du hast dein Ziel erreicht. Da du keine %1$ hattest, wurden dir %2$ (exklusive Steuern) abgezogen!";
msgPaidDriver = "Du hast dein Ziel erreicht.<br/>Dein Kunde hat dir <t color='#43a047'>%1$</t> bezahlt."; msgNotFullyPaidDriver = "Du hast dein Ziel erreicht. Dein Kunde konnte nicht den ganzen Betrag von über <t color='#43a047'>%1$</t> bezahlen, deshalb wurden dir <t color='#43a047'>%2$</t> (exklusive Steuern) überwiesen."; msgPayCustomer = "Sie haben ihr Ziel erreicht.<br/>Der Gesamtbezahlung liegt bei %1$."; msgPayDriver = "Sie haben ihr Ziel erreicht.<br/>Dein Kunde wurde aufgefordert %1$ zu bezahlen."; msgTotalPayment = "Gesamte Bezahlung: %1$"; msgTaximeterPositionSaved = "Taximeter Position gespeichert"; msgTaximeterPositionReset = "Taximeter Position zurückgesetzt"; msgTaxiPressSpaceSaveSettings = "Drücke [Leertaste] zum speichern"; msgNowOnDuty = "Sie sind nun im Dienst und erhalten eine Nachricht bei einkommenden Aufträgen!"; msgNowOffDuty = "Sie sind nun außer Dienst"; msgTaxiMenuActiveCalls = "Zeige alle Aufträge"; msgTaxiNewCallCreated = "Ein neuer Auftrag wurde erstellt"; msgTaxiBillingPayment = "Gesamtbezahlung durch gefahrene Strecke"; msgTaxiBillingDriverMissingP = "Der Kunde kann sich den Betrag nicht leisten"; msgTaxiBillingBasePrice = "Basispreis"; msgTaxiBillingCustomerMissingP = "Betrag nicht bezahlbar"; msgTaxiCurrentFareInformation = "Aktueller Taxiauftrag"; msgTaxiBillingCancelled = "Tarif storniert"; msgTaskDriverPickupDescription = "Hole deinen Passagier an der Position ab"; msgTaskDriverPickupDescriptionS = "Abholen"; msgTaskDriverPickupHUD = "Abholen"; msgTaskCustomerDriverDescription = "Steige in das Fahrzeug deines Taxifahrers ein"; msgTaskCustomerDriverDescriptionS = "Einsteigen"; msgTaskCustomerDriverHUD = "Einsteigen"; msgTaskDriverGoToDescription = "Kundenziel"; msgTaskDriverGoToDescriptionS = "Ziel"; msgTaskDriverGoToDriverHUD = "Bewege dich hier her"; 


























}; }; 








































class RscDisplayTaxiCall { idd = 53001; onLoad = "['taxis\gui', 'RscDisplayTaxiCall', _this, true, 'RscDisplayTaxiCall'] call MAV_gui_fnc_openGUI"; 









class controlsBackground { class Background: MAV_ctrlStaticBackground { x = (CENTER_X - ((150 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((90 / 2) - (0) - (0)) * GRID_H); w = ((150) * GRID_W); h = ((90) * GRID_H); }; }; class Controls { class Header: MAV_ctrlStaticTitle { x = (CENTER_X - ((150 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((90 / 2) - (0) - (0)) * GRID_H); w = ((150) * GRID_W); h = ((6) * GRID_H); text = "Taxi Service"; moving = 0; }; class DestinationMap: MAV_ctrlMap { idc = 14; x = (CENTER_X - ((150 / 2) - (1.5) - (0)) * GRID_W); y = (CENTER_Y - ((90 / 2) - (6 + 1.5) - (0)) * GRID_H); w = ((90) * GRID_W); h = ((90 - 6 - 1.5 * 2 - 8) * GRID_H); }; 

class DestinationHeader: MAV_ctrlStaticTitle { x = (CENTER_X - ((150 / 2) - (1.5 + 90 + 1.5) - (0)) * GRID_W); y = (CENTER_Y - ((90 / 2) - (6 + 1.5) - (0)) * GRID_H); w = (((150 - 1.5 * 3 - 90)) * GRID_W); h = ((SIZE_M) * GRID_H); text = "Ziel"; moving = 0; }; class DestinationExplanationText: MAV_ctrlStaticMulti { x = (CENTER_X - ((150 / 2) - (1.5 + 90 + 1.5) - (0)) * GRID_W); y = (CENTER_Y - ((90 / 2) - (6 + 1.5 + 1.5 + SIZE_M) - (0)) * GRID_H); w = (((150 - 1.5 * 3 - 90)) * GRID_W); h = ((20) * GRID_H); text = "Doppelklick auf der Karte um die Zielposition festzulegen. Wenn bereits ein Taxifahrer auf dem Weg ist, wird er über die neue Position informiert."; }; class StatusHeader: MAV_ctrlStaticTitle { x = (CENTER_X - ((150 / 2) - (1.5 + 90 + 1.5) - (0)) * GRID_W); y = (CENTER_Y - ((90 / 2) - (6 + 1.5 * 3 + SIZE_M + 20) - (0)) * GRID_H); w = (((150 - 1.5 * 3 - 90)) * GRID_W); h = ((SIZE_M) * GRID_H); text = "Status"; moving = 0; }; class AvailableDriversHeader: MAV_ctrlStaticTitle { x = (CENTER_X - ((150 / 2) - (1.5 + 90 + 1.5) - (0)) * GRID_W); y = (CENTER_Y - ((90 / 2) - (90 - 8 - 1.5 - SIZE_M) - (0)) * GRID_H); w = (((150 - 1.5 * 3 - 90)) * GRID_W); h = ((SIZE_M) * GRID_H); text = "Verfügbare Fahrer"; moving = 0; }; class AvailableDriversNumber: MAV_ctrlStatic { idc = 19; style = ST_RIGHT; x = (CENTER_X - ((150 / 2) - (1.5 + 90 + 1.5) - (0)) * GRID_W); y = (CENTER_Y - ((90 / 2) - (90 - 8 - 1.5 - SIZE_M) - (0)) * GRID_H); w = (((150 - 1.5 * 3 - 90)) * GRID_W); h = ((SIZE_M) * GRID_H); text = ""; shadow = 0; }; class CB1: MAV_ctrlCheckbox { idc = 15; x = (CENTER_X - ((150 / 2) - (1.5 + 90 + 1.5) - (0)) * GRID_W); y = (CENTER_Y - ((90 / 2) - (6 + 1.5 * 4 + SIZE_M * 2 + 20) - (0)) * GRID_H); w = ((SIZE_M) * GRID_W); h = ((SIZE_M) * GRID_H); }; class CB1Text: MAV_ctrlStatic { x = (CENTER_X - ((150 / 2) - (1.5 + 90 + 1.5 + SIZE_M) - (0)) * GRID_W);
y = (CENTER_Y - ((90 / 2) - (6 + 1.5 * 4 + SIZE_M * 2 + 20) - (0)) * GRID_H); w = (((150 - 1.5 * 3 - 90) - SIZE_M) * GRID_W); h = ((SIZE_M) * GRID_H); text = "Zielort ausgewählt"; }; class CB2: MAV_ctrlCheckbox { idc = 16; x = (CENTER_X - ((150 / 2) - (1.5 + 90 + 1.5) - (0)) * GRID_W); y = (CENTER_Y - ((90 / 2) - (6 + 1.5 * 4 + SIZE_M * 2 + 20 + (SIZE_M + 1.5) * 1) - (0)) * GRID_H); w = ((SIZE_M) * GRID_W); h = ((SIZE_M) * GRID_H); }; class CB2Text: MAV_ctrlStatic { x = (CENTER_X - ((150 / 2) - (1.5 + 90 + 1.5 + SIZE_M) - (0)) * GRID_W); y = (CENTER_Y - ((90 / 2) - (6 + 1.5 * 4 + SIZE_M * 2 + 20 + (SIZE_M + 1.5) * 1) - (0)) * GRID_H); w = (((150 - 1.5 * 3 - 90) - SIZE_M) * GRID_W); h = ((SIZE_M) * GRID_H); text = "Taxiauftrag erstellt"; }; class CB3: MAV_ctrlCheckbox { idc = 17; x = (CENTER_X - ((150 / 2) - (1.5 + 90 + 1.5) - (0)) * GRID_W); y = (CENTER_Y - ((90 / 2) - (6 + 1.5 * 4 + SIZE_M * 2 + 20 + (SIZE_M + 1.5) * 2) - (0)) * GRID_H); w = ((SIZE_M) * GRID_W); h = ((SIZE_M) * GRID_H); }; class CB3Text: MAV_ctrlStatic { x = (CENTER_X - ((150 / 2) - (1.5 + 90 + 1.5 + SIZE_M) - (0)) * GRID_W); y = (CENTER_Y - ((90 / 2) - (6 + 1.5 * 4 + SIZE_M * 2 + 20 + (SIZE_M + 1.5) * 2) - (0)) * GRID_H); w = (((150 - 1.5 * 3 - 90) - SIZE_M) * GRID_W); h = ((SIZE_M) * GRID_H); text = "Taxifahrer hat Auftrag angenommen"; }; class CB4: MAV_ctrlCheckbox { idc = 18; x = (CENTER_X - ((150 / 2) - (1.5 + 90 + 1.5) - (0)) * GRID_W); y = (CENTER_Y - ((90 / 2) - (6 + 1.5 * 4 + SIZE_M * 2 + 20 + (SIZE_M + 1.5) * 3) - (0)) * GRID_H); w = ((SIZE_M) * GRID_W); h = ((SIZE_M) * GRID_H); }; class CB4Text: MAV_ctrlStatic { x = (CENTER_X - ((150 / 2) - (1.5 + 90 + 1.5 + SIZE_M) - (0)) * GRID_W); y = (CENTER_Y - ((90 / 2) - (6 + 1.5 * 4 + SIZE_M * 2 + 20 + (SIZE_M + 1.5) * 3) - (0)) * GRID_H); w = (((150 - 1.5 * 3 - 90) - SIZE_M) * GRID_W); h = ((SIZE_M) * GRID_H); text = "Abholung"; }; class Footer: MAV_ctrlStaticFooter { 

x = (CENTER_X - ((150 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((90 / 2) - (90 - 8) - (0)) * GRID_H); w = ((150) * GRID_W); h = ((8) * GRID_H); }; class CloseDialog: MAV_ctrlButton { 


x = (CENTER_X - ((150 / 2) - (1.5) - (0)) * GRID_W); y = (CENTER_Y - ((90 / 2) - (90 - 1.5 - 5) - (0)) * GRID_H); w = ((30) * GRID_W); h = ((5) * GRID_H); text = "Schließen"; onButtonClick = "closeDialog 0;"; }; class CallTaxiButton: MAV_ctrlButton { 


idc = 12; x = (CENTER_X - ((150 / 2) - (150 - 1.5 - 50) - (0)) * GRID_W); y = (CENTER_Y - ((90 / 2) - (90 - 1.5 - 5) - (0)) * GRID_H); w = ((50) * GRID_W); h = ((5) * GRID_H); text = dialogCallTaxi; show = 0; }; class CancelTaxiButton: MAV_ctrlButton { 


idc = 13; x = (CENTER_X - ((150 / 2) - (150 - 1.5 - 50) - (0)) * GRID_W); y = (CENTER_Y - ((90 / 2) - (90 - 1.5 - 5) - (0)) * GRID_H); w = ((50) * GRID_W); h = ((5) * GRID_H); text = "Taxiauftrag abbrechen"; show = 0; }; }; };

class RscDisplayTaxiCalls { idd = 53004; onLoad = "['taxis\gui', 'RscDisplayTaxiCalls', _this, true, 'RscDisplayTaxiCalls'] call MAV_gui_fnc_openGUI"; 









class controlsBackground { class Background: MAV_ctrlStaticBackground { x = (CENTER_X - ((150 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((70 / 2) - (0) - (0)) * GRID_H); w = ((150) * GRID_W); h = ((70) * GRID_H); }; class Header: MAV_ctrlStaticTitle { x = (CENTER_X - ((150 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((70 / 2) - (0) - (0)) * GRID_H); w = ((150) * GRID_W); h = ((6) * GRID_H); text = "Verfügbare Taxianträge"; moving = 0; }; }; class Controls { class ListNBoxTaxiCalls: MAV_ctrlListNBox { idc = 15; x = (CENTER_X - ((150 / 2) - (1.5) - (0)) * GRID_W); y = (CENTER_Y - ((70 / 2) - (8 + 1.5) - (0)) * GRID_H); w = ((150 - 1.5 * 2) * GRID_W); h = ((70 - 8 - 8 - 1.5 * 2) * GRID_H); columns[] = {0, 0.25, 0.375, 0.5, 0.75}; }; class Footer: MAV_ctrlStaticFooter { 

x = (CENTER_X - ((150 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((70 / 2) - (70 - 8) - (0)) * GRID_H); w = ((150) * GRID_W); h = ((8) * GRID_H); }; class CloseDialog: MAV_ctrlButton { 


x = (CENTER_X - ((150 / 2) - (1.5) - (0)) * GRID_W); y = (CENTER_Y - ((70 / 2) - (70 - 1.5 - 5) - (0)) * GRID_H); w = ((30) * GRID_W); h = ((5) * GRID_H); text = "Schließen"; onButtonClick = "closeDialog 0;"; }; class Header: MAV_ctrlStaticTitle { x = (CENTER_X - ((150 / 2) - (1.5 * 2 + 30) - (0)) * GRID_W); y = (CENTER_Y - ((70 / 2) - (70 - 1.5 - 5) - (0)) * GRID_H);
w = ((5) * GRID_W); h = ((5) * GRID_H); moving = 0; }; class RefreshIcon: MAV_ctrlStaticPictureKeepAspect { x = (CENTER_X - ((150 / 2) - (1.5 * 2 + 30 + 0.5) - (0)) * GRID_W); y = (CENTER_Y - ((70 / 2) - (70 - 1.5 - 5 + 0.5) - (0)) * GRID_H); w = ((5 - 1) * GRID_W); h = ((5 - 1) * GRID_H); text = "maverick\taxis\data\images\refresh.paa"; }; class RefreshButton: MAV_ctrlButton { 


idc = 16; x = (CENTER_X - ((150 / 2) - (1.5 * 2 + 30 + 5) - (0)) * GRID_W); y = (CENTER_Y - ((70 / 2) - (70 - 1.5 - 5) - (0)) * GRID_H); w = ((30) * GRID_W); h = ((5) * GRID_H); text = "Refresh"; }; class AcceptButton: MAV_ctrlButton { 


idc = 13; x = (CENTER_X - ((150 / 2) - (150 - 1.5 - 40) - (0)) * GRID_W); y = (CENTER_Y - ((70 / 2) - (70 - 1.5 - 5) - (0)) * GRID_H); w = ((40) * GRID_W); h = ((5) * GRID_H); text = "Auftrag annehmen"; show = 0; }; class CancelButton: MAV_ctrlButton { 


idc = 14; x = (CENTER_X - ((150 / 2) - (150 - 1.5 - 40) - (0)) * GRID_W); y = (CENTER_Y - ((70 / 2) - (70 - 1.5 - 5) - (0)) * GRID_H); w = ((40) * GRID_W); h = ((5) * GRID_H); text = "Aktuellen Auftrag abbrechen"; show = 0; }; class GoOnDutyButton: MAV_ctrlButton { 

idc = 11; x = (CENTER_X - ((150 / 2) - (150 - 1.5 * 2 - 40 - 30) - (0)) * GRID_W); y = (CENTER_Y - ((70 / 2) - (70 - 1.5 - 5) - (0)) * GRID_H); w = ((30) * GRID_W); h = ((5) * GRID_H); text = "In Dienst gehen"; show = 0; }; class GoOffDutyButton: MAV_ctrlButton { 

idc = 12; x = (CENTER_X - ((150 / 2) - (150 - 1.5 * 2 - 40 - 30) - (0)) * GRID_W); y = (CENTER_Y - ((70 / 2) - (70 - 1.5 - 5) - (0)) * GRID_H); w = ((30) * GRID_W); h = ((5) * GRID_H); text = "Dienst verlassen"; show = 0; }; }; };

class RscDisplayTaxiMenu { idd = 53001; onLoad = "['taxis\gui', 'RscDisplayTaxiMenu', _this, true, 'RscDisplayTaxiMenu'] call MAV_gui_fnc_openGUI"; 









class controlsBackground { class Background: MAV_ctrlStaticBackground { x = (CENTER_X - ((90 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (0) - (0)) * GRID_H); w = ((90) * GRID_W); h = ((42) * GRID_H); }; }; class Controls { class Header: MAV_ctrlStaticTitle { x = (CENTER_X - ((90 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (0) - (0)) * GRID_H); w = ((90) * GRID_W); h = ((6) * GRID_H); text = "Taxi Service"; moving = 0; }; class FirstButtonBackground: MAV_ctrlStaticTitle { x = (CENTER_X - ((90 / 2) - (1.5) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (6 + 1.5) - (0)) * GRID_H); w = ((12) * GRID_W); h = ((10) * GRID_H); moving = 0; }; class FirstButtonImage: MAV_ctrlStaticPictureKeepAspect { x = (CENTER_X - ((90 / 2) - (1.5 + 1 + 1) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (6 + 1.5 + 1) - (0)) * GRID_H); w = ((10 - 2) * GRID_W); h = ((10 - 2) * GRID_H); text = "maverick\taxis\data\images\map_pin.paa"; }; class FirstButton: MAV_ctrlButton { 


idc = 11; x = (CENTER_X - ((90 / 2) - (1.5 + 12) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (6 + 1.5) - (0)) * GRID_H); w = (((90 - 1.5 * 2 - 12)) * GRID_W); h = ((10) * GRID_H);
text = "Ein Taxi rufen"; }; class SecondButtonBackground: MAV_ctrlStaticTitle { x = (CENTER_X - ((90 / 2) - (1.5) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (6 + 1.5 + 10 + 1.5) - (0)) * GRID_H); w = ((12) * GRID_W); h = ((10) * GRID_H); moving = 0; }; class SecondButtonImage: MAV_ctrlStaticPictureKeepAspect { x = (CENTER_X - ((90 / 2) - (1.5 + 1 + 1) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (6 + 1.5 + 1 + 10 + 1.5) - (0)) * GRID_H); w = ((10 - 2) * GRID_W); h = ((10 - 2) * GRID_H); text = "maverick\taxis\data\images\taxi-front-view.paa"; }; class SecondButton: MAV_ctrlButton { 


idc = 12; x = (CENTER_X - ((90 / 2) - (1.5 + 12) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (6 + 1.5 + 10 + 1.5) - (0)) * GRID_H); w = (((90 - 1.5 * 2 - 12)) * GRID_W); h = ((10) * GRID_H); text = "Als Taxifahrer arbeiten"; }; class ThirdButtonBackground: MAV_ctrlStaticTitle { x = (CENTER_X - ((90 / 2) - (1.5) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (6 + 1.5 + 10 + 1.5 + 10 + 1.5) - (0)) * GRID_H); w = ((12) * GRID_W); h = ((10) * GRID_H); moving = 0; }; class ThirdButtonImage: MAV_ctrlStaticPictureKeepAspect { x = (CENTER_X - ((90 / 2) - (1.5 + 1 + 1) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (6 + 1.5 + 1 + 10 + 1.5 + 10 + 1.5) - (0)) * GRID_H); w = ((10 - 2) * GRID_W); h = ((10 - 2) * GRID_H); text = "maverick\taxis\data\images\settings-gears.paa"; }; class ThirdButton: MAV_ctrlButton { 


idc = 13; x = (CENTER_X - ((90 / 2) - (1.5 + 12) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (6 + 1.5 + 10 + 1.5 + 10 + 1.5) - (0)) * GRID_H); w = (((90 - 1.5 * 2 - 12)) * GRID_W); h = ((10) * GRID_H); text = "Einstellungen"; }; }; };


class RscDisplayTaxiSettings { idd = 53006; onLoad = "['taxis\gui', 'RscDisplayTaxiSettings', _this, true, 'RscDisplayTaxiSettings'] call MAV_gui_fnc_openGUI"; 









class controlsBackground { class Background: MAV_ctrlStaticBackground { x = (CENTER_X - ((90 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (0) - (0)) * GRID_H); w = ((90) * GRID_W); h = ((42) * GRID_H); }; }; class Controls { class Header: MAV_ctrlStaticTitle { x = (CENTER_X - ((90 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (0) - (0)) * GRID_H); w = ((90) * GRID_W); h = ((6) * GRID_H); text = "Taxi Service - Settings"; moving = 0; }; class TaximeterHeader: MAV_ctrlStaticTitle { x = (CENTER_X - ((90 / 2) - (1.5) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (6 + 1.5) - (0)) * GRID_H); w = ((90 * (1/3) - 1.5 - (1.5 / 2)) * GRID_W);
h = ((SIZE_M) * GRID_H); text = "Taximeter Position"; moving = 0; }; class TaximeterPositionCustomizeButton: MAV_ctrlButton { idc = 11; x = (CENTER_X - ((90 / 2) - ((90 * (1/3)) + (1.5 / 2)) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (6 + 1.5) - (0)) * GRID_H); w = (((90 * (2/3) * (1/2)) - 1.5) * GRID_W); h = ((SIZE_M) * GRID_H); text = "Anpassen"; }; class TaximeterPositionResetButton: MAV_ctrlButton { idc = 12; x = (CENTER_X - ((90 / 2) - (90 * (2/3)) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (6 + 1.5) - (0)) * GRID_H); w = (((90 * (2/3) * (1/2)) - 1.5) * GRID_W); h = ((SIZE_M) * GRID_H); text = "Zurücksetzen"; }; class Footer: MAV_ctrlStaticFooter { 

x = (CENTER_X - ((90 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (42 - 8) - (0)) * GRID_H); w = ((90) * GRID_W); h = ((8) * GRID_H); }; class CloseDialog: MAV_ctrlButton { 


x = (CENTER_X - ((90 / 2) - (1.5) - (0)) * GRID_W); y = (CENTER_Y - ((42 / 2) - (42 - 1.5 - 5) - (0)) * GRID_H); w = ((30) * GRID_W); h = ((5) * GRID_H); text = "Schließen"; onButtonClick = "closeDialog 0; createDialog 'RscDisplayTaxiMenu';"; }; }; };

class RscDisplayTaxiCustomizeTaximeter { idd = 53007; onLoad = "['taxis\gui', 'RscDisplayTaxiCustomizeTaximeter', _this, 'RscDisplayTaxiCustomizeTaximeter'] call MAV_gui_fnc_initLayer"; duration = 1e+030; 









class controlsBackground { class Background: MAV_ctrlStaticBackground { x = (safeZoneX + ((3 + (0)) * GRID_W));
y = (safeZoneY + ((90 + (0)) * GRID_H)); w = ((59.5) * GRID_W); h = ((30) * GRID_H); }; class Header: MAV_ctrlStaticTitle { x = (safeZoneX + ((3 + (0)) * GRID_W)); y = (safeZoneY + ((90 + (0)) * GRID_H)); w = ((59.5) * GRID_W); h = ((6) * GRID_H); text = "Zieh mich"; moving = 1; }; }; class Controls { class CurrentInformation: MAV_ctrlStructuredText { x = (safeZoneX + ((3 + (0)) * GRID_W)); y = (safeZoneY + ((90 + (6 + 1.5)) * GRID_H)); w = ((59.5) * GRID_W); h = ((30 - 6 - (1.5 * 2)) * GRID_H); text = ""; shadow = 0; }; class ActiveFooter: MAV_ctrlStaticBackground { x = (safeZoneX + ((3 + (0)) * GRID_W)); y = (safeZoneY + ((90 + (30 - 6.5)) * GRID_H)); w = ((59.5) * GRID_W); h = ((6.5) * GRID_H); colorBackground[] = {0,0,0,0.3}; }; class ActiveFooterText: MAV_ctrlStructuredText { x = (safeZoneX + ((3 + (0)) * GRID_W)); y = (safeZoneY + ((90 + (30 - 5.5)) * GRID_H)); w = ((59.5) * GRID_W); h = ((5.5) * GRID_H); shadow = 0; }; }; };


