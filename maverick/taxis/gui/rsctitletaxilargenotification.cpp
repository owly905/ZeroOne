class RscTitleTaxiLargeNotification { idd = MAV_IDD_RSCTITLETAXILARGENOTIFICATIONS; onLoad = "['taxis\gui', 'RscTitleTaxiLargeNotification', _this, 'RscTitleTaxiLargeNotification'] call MAV_gui_fnc_initLayer"; duration = 8; fadein = 0; fadeout = 0; 











class Controls { class WeaponListGroup: MAV_ctrlControlsGroupNoScrollbars { idc = MAV_IDC_RSCTITLETAXILARGENOTIFICATIONS_GROUPBOX; x = (CENTER_X - ((160 / 2) - (0) - (0)) * GRID_W); y = (CENTER_Y - ((12 / 2) - (0) - (-100)) * GRID_H); w = ((160) * GRID_W); h = ((12) * GRID_H); show = 0; class Controls { class Background: MAV_ctrlStaticBackground { x = ((0) * GRID_W); y = ((0) * GRID_H); w = ((160) * GRID_W); h = ((12) * GRID_H); colorBackground[] = {0.99,0.49,0,0.75};
}; class ClipboardImage: MAV_ctrlStaticPictureKeepAspect { idc = MAV_IDC_RSCTITLETAXILARGENOTIFICATIONS_ICON; x = ((1.5 * 3) * GRID_W); y = ((1.5) * GRID_H); w = ((12 - 1.5 * 2) * GRID_W); h = ((12 - 1.5 * 2) * GRID_H); text = "maverick\taxis\data\images\taxi-front-view_black.paa"; }; class Header: MAV_ctrlStructuredText { idc = MAV_IDC_RSCTITLETAXILARGENOTIFICATIONS_HEADER; x = ((12 + 1.5 * 3) * GRID_W); y = ((1.5) * GRID_H); w = ((160 - 12 - 1.5 * 4) * GRID_W); h = ((12 - 1.5 * 2) * GRID_H); text = ""; sizeEx = 9 * GRID_H; size = 9 * GRID_H; colorText[] = {0,0,0,1}; shadow = 0; show = 0; class Attributes { align = "left"; color = RGBTOHEX(0, 0, 0); colorLink = RGBTOHEX(COLOR_ACTIVE_RGB); font = "PuristaSemiBold"; }; }; class HeaderSmall: MAV_ctrlStructuredText { idc = MAV_IDC_RSCTITLETAXILARGENOTIFICATIONS_HEADERSMALL; x = ((12 + 1.5 * 3) * GRID_W); y = ((1.5 * (3/4)) * GRID_H); w = ((160 - 12 - 1.5 * 4) * GRID_W); h = ((12 - 1.5) * GRID_H); text = ""; sizeEx = 5 * GRID_H; size = 5 * GRID_H; colorText[] = {0,0,0,1}; shadow = 0; show = 0; class Attributes { align = "left"; color = RGBTOHEX(0, 0, 0); colorLink = RGBTOHEX(COLOR_ACTIVE_RGB); font = "PuristaMedium"; }; }; }; }; }; };
