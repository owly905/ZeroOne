








































class RscTitleTaxiMeter { idd = 53002; onLoad = "['taxis\gui', 'RscTitleTaxiMeter', _this, 'RscTitleTaxiMeter'] call MAV_gui_fnc_initLayer"; duration = 1e+030; 









class controlsBackground { class Background: MAV_ctrlStaticBackground { x = (safeZoneX + ((3 + (0)) * GRID_W)); y = (safeZoneY + ((90 + (0)) * GRID_H)); w = ((59.5) * GRID_W); h = ((30) * GRID_H); }; class Header: MAV_ctrlStaticTitle { x = (safeZoneX + ((3 + (0)) * GRID_W));
y = (safeZoneY + ((90 + (0)) * GRID_H)); w = ((59.5) * GRID_W); h = ((6) * GRID_H); text = dialogTaxiMeter; moving = 0; }; }; class Controls { class CurrentInformation: MAV_ctrlStructuredText { idc = 11; x = (safeZoneX + ((3 + (0)) * GRID_W)); y = (safeZoneY + ((90 + (6 + 1.5)) * GRID_H)); w = ((59.5) * GRID_W); h = ((30 - 6 - (1.5 * 2)) * GRID_H); text = ""; shadow = 0; }; class ActiveFooter: MAV_ctrlStaticBackground { idc = 12; x = (safeZoneX + ((3 + (0)) * GRID_W)); y = (safeZoneY + ((90 + (30 - 6.5)) * GRID_H)); w = ((59.5) * GRID_W); h = ((6.5) * GRID_H); colorBackground[] = {0,0,0,0.3}; }; class ActiveFooterText: MAV_ctrlStructuredText { idc = 13; x = (safeZoneX + ((3 + (0)) * GRID_W)); y = (safeZoneY + ((90 + (30 - 5.5)) * GRID_H)); w = ((59.5) * GRID_W); h = ((5.5) * GRID_H); shadow = 0; }; }; };

class RscTitleTaxiLargeNotification { idd = 53003; onLoad = "['taxis\gui', 'RscTitleTaxiLargeNotification', _this, 'RscTitleTaxiLargeNotification'] call MAV_gui_fnc_initLayer"; duration = 8; fadein = 0; fadeout = 0; 











class Controls { class WeaponListGroup: MAV_ctrlControlsGroupNoScrollbars { idc = 11; x = (CENTER_X - ((160 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((12 / 2) - (0) - (-100)) * GRID_H); w = ((160) * GRID_W); h = ((12) * GRID_H); show = 0; class Controls { class Background: MAV_ctrlStaticBackground { x = ((0) * GRID_W); y = ((0) * GRID_H); w = ((160) * GRID_W); h = ((12) * GRID_H); colorBackground[] = {0.99,0.49,0,0.75};
}; class ClipboardImage: MAV_ctrlStaticPictureKeepAspect { idc = 14; x = ((1.5 * 3) * GRID_W); y = ((1.5) * GRID_H); w = ((12 - 1.5 * 2) * GRID_W); h = ((12 - 1.5 * 2) * GRID_H); text = "maverick\taxis\data\images\taxi-front-view_black.paa"; }; class Header: MAV_ctrlStructuredText { idc = 12; x = ((12 + 1.5 * 3) * GRID_W); y = ((1.5) * GRID_H); w = ((160 - 12 - 1.5 * 4) * GRID_W); h = ((12 - 1.5 * 2) * GRID_H); text = ""; sizeEx = 9 * GRID_H; size = 9 * GRID_H; colorText[] = {0,0,0,1}; shadow = 0; show = 0; class Attributes { align = "left"; color = RGBTOHEX(0, 0, 0); colorLink = RGBTOHEX(COLOR_ACTIVE_RGB); font = "PuristaSemiBold"; }; }; class HeaderSmall: MAV_ctrlStructuredText { idc = 13; x = ((12 + 1.5 * 3) * GRID_W); y = ((1.5 * (3/4)) * GRID_H); w = ((160 - 12 - 1.5 * 4) * GRID_W); h = ((12 - 1.5) * GRID_H); text = ""; sizeEx = 5 * GRID_H; size = 5 * GRID_H; colorText[] = {0,0,0,1}; shadow = 0; show = 0; class Attributes { align = "left"; color = RGBTOHEX(0, 0, 0); colorLink = RGBTOHEX(COLOR_ACTIVE_RGB); font = "PuristaMedium"; }; }; }; }; }; };


class RscTitleTaxiFareSummary { idd = 53007; onLoad = "['taxis\gui', 'RscTitleTaxiFareSummary', _this, 'RscTitleTaxiFareSummary'] call MAV_gui_fnc_initLayer"; duration = 1e+030; 









class controlsBackground { class Background: MAV_ctrlStaticBackground { x = (CENTER_X - ((120 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((60 / 2) - (0) - (0)) * GRID_H); w = ((120) * GRID_W); h = ((60) * GRID_H); }; class Header: MAV_ctrlStaticTitle { x = (CENTER_X - ((120 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((60 / 2) - (0) - (0)) * GRID_H); w = ((120) * GRID_W); h = ((6) * GRID_H);
text = dialogFareSummaryTitle; moving = 0; }; }; class Controls { 

class MainText: MAV_ctrlStructuredText { idc = 11; x = (CENTER_X - ((120 / 2) - (5) - (0)) * GRID_W); y = (CENTER_Y - ((60 / 2) - (6 + 1.5) - (0)) * GRID_H); w = ((120 - 10) * GRID_W); h = ((60 - 15 - 6 - 1.5 * 2) * GRID_H); }; class Footer: MAV_ctrlStaticFooter { x = (CENTER_X - ((120 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((60 / 2) - (60 - 15) - (0)) * GRID_H); w = ((120) * GRID_W); h = ((15) * GRID_H); }; class FooterPriceText: MAV_ctrlStatic { idc = 12; x = (CENTER_X - ((120 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((60 / 2) - (60 - 15) - (0)) * GRID_H); w = ((120 - 5) * GRID_W); h = ((15) * GRID_H); style = ST_RIGHT; text = ""; size = 12 * GRID_H; sizeEx = 12 * GRID_H; shadow = 2; }; class FooterCloseText: MAV_ctrlStatic { x = (CENTER_X - ((120 / 2) - (1.5) - (0)) * GRID_W); y = (CENTER_Y - ((60 / 2) - (60 - SIZE_M - 1.5) - (0)) * GRID_H); w = ((120) * GRID_W); h = ((SIZE_M) * GRID_H); text = dialogSummaryClosePromt; shadow = 0; }; }; };


