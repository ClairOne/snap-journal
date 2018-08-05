import 'package:flutter/material.dart';

/* ROSA */
// https://convertingcolors.com/hex-color-F2AD9F.html
Color colorROSA = const Color(0xFFF2AD9F);
Color colorDialPadIcon = const Color(0xFFF2AD9F);

/* RUBY GRAPEFRUIT */
// https://convertingcolors.com/hex-color-F26968.html
Color colorRUBYGRAPEFRUIT = const Color(0xFFF26968);

/* LIMESTONE */
// https://convertingcolors.com/hex-color-DFE2D2.html
Color colorLIMESTONE = const Color(0xFFDFE2D2);

/* VENICE VERDE */
// https://convertingcolors.com/hex-color-8BC34A.html
Color colorVENICEVERDE = const Color(0xFF8BC34A);

/* MOSS RIVER */
// https://convertingcolors.com/hex-color-323339.html
Color colorMOSSRIVER = const Color(0xFF323339);
Color colorDialPadText = const Color(0xFF323339);


ThemeData appTheme = new ThemeData(
  accentColor: colorMOSSRIVER, // The foreground color for widgets (knobs, text, overscroll edge effect, etc).
  primaryColor: colorVENICEVERDE, // The background color for major parts of the app (toolbars, tab bars, etc)
);

/*
  backgroundColor: colorLIMESTONE, // A color that contrasts with the primaryColor, e.g. used as the remaining part of a progress bar.
  //bottomAppBarColor: unsetColor, // The default color of the BottomAppBar
  //buttonColor: unsetColor, // The default fill color of the Material used in RaisedButtons.
  //canvasColor: unsetColor, // The default color of MaterialType.canvas Material.
  //cardColor: unsetColor, // The color of Material when it is used as a Card.
  //dialogBackgroundColor: unsetColor, // The background color of Dialog elements.
  //disabledColor: unsetColor, // The color used for widgets that are inoperative, regardless of their state. For example, a disabled checkbox (which may be checked or unchecked).
  //dividerColor: unsetColor, // The color of Dividers and PopupMenuDividers, also used between ListTiles, between rows in DataTables, and so forth
  //errorColor:unsetColor, // The color to use for input validation errors, e.g. in TextField fields.
  //highlightColor: unsetColor, // The highlight color used during ink splash animations or to indicate an item in a menu is selected.
  hintColor: colorROSA, // The color to use for hint text or placeholder text, e.g. in TextField fields.
  //indicatorColor: unsetColor, // The color of the selected tab indicator in a tab bar.
  primaryColorDark: colorLIMESTONE, // A darker version of the primaryColor.
  primaryColorLight: colorLIMESTONE, // A lighter version of the primaryColor.
  scaffoldBackgroundColor:colorLIMESTONE, // The default color of the Material that underlies the Scaffold. The background color for a typical material app or a page within the app.
  //secondaryHeaderColor: unsetColor, // The color of the header of a PaginatedDataTable when there are selected rows.
  //selectedRowColor: unsetColor, // The color used to highlight selected rows.
  //splashColor: unsetColor, // The color of ink splashes. See InkWell.
  textSelectionColor: colorRUBYGRAPEFRUIT, // The color of text selections in text fields, such as TextField.
  textSelectionHandleColor:colorROSA, // The color of the handles used to adjust what part of the text is currently selected.
  //toggleableActiveColor: unsetColor, // The color used to highlight the active states of toggleable widgets like Switch, Radio, and Checkbox.
  unselectedWidgetColor:colorVENICEVERDE, // The color used for widgets in their inactive (but enabled) state. For example, an unchecked checkbox. Usually contrasted with the accentColor. See also disabledColor.

*/