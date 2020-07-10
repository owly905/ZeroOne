class Maverick_GUI { tag = "MAV_gui"; class functions { file = "maverick\gui\functions";
class openGUI {}; class initLayer {}; class destroyLayer {}; class createLayer {}; }; };

class Maverick_GPS { tag = "MAV_gps"; class functions { file = "maverick
avigation"; class initGPS {}; class fetchSettings {}; class saveSettings {}; class kmToMiles {}; class distance {}; class nearestLocation {}; class explorer {};
class shortestRoute {}; class initNavigation {}; class addPath {}; class addPathSegment {}; class startNavigationScripted {}; class stopNavigationScripted {}; class isNavigationRunning {}; class clearPath {}; class playInstructionSound {}; }; };


class Maverick_Taxis { tag = "mav_taxi"; class functions { file = "maverick\taxis"; class getLocalization {}; class serverQueueRequest {}; class serverDequeueRequest {}; class fareRecording {}; class startFare {}; class stopFare {}; class showLargeNotification; class nearestLocation {}; class fareCancelled {}; class driverCallAccepted {}; class driverCallAlreadyAccepted {}; class customerCallAccepted {}; class serverFareFinished {}; class serverUnitDied {}; class serverCallAccepted {};
class setCallId {}; class preventClickSpam {}; class serverUpdateDestination {}; class driverUpdateDestination {}; class setTask {}; class stopTask {}; class driverCallerReached {}; class customerDriverReached {}; class resetClickSpam {}; class hintClickSpam {}; class destinationReached {}; class attemptPayment {}; class isNavigatorEnabled {}; class getMaximumMoneyAvailable {}; class processFareBilling {}; class driverCallerPaid {}; class showFareSummary {}; class setDrivenDistance {}; }; };

