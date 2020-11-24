//
//
// import 'package:flutter/material.dart';
//
// class Constants{
//
//   static const  DarkPrimary=  0xf303F9F;
//   static const  LightPrimary=  0xfC5CAE9;
//   static const  Primary=  0xf3F51B5;
//   static const  TextColor=  0xfFFFFFF;
//   static const  AccentColor=  0x536DF;
//   static const  PrimaryText=  0xf212121;
//   static const  SecondaryText=  0xf757575;
//   static const  DividerColor=  0xfBDBDBD;
//
//
//   static MaterialColor getPrimaryColor(){
//     return _renderColor(DarkPrimary, [0, 161, 84]);
//   }
//
//   static MaterialColor getAccentColor(){
//     return _renderColor(AccentColor, [245,240,220]);
//   }
//
//   static MaterialColor _renderColor(int hexColor, List<int> rgb){
//     return MaterialColor(hexColor, {
//       50: Color.fromRGBO(rgb[0],rgb[1],rgb[2], .1),
//       100: Color.fromRGBO(rgb[0],rgb[1],rgb[2], .2),
//       200: Color.fromRGBO(rgb[0],rgb[1],rgb[2], .3),
//       300: Color.fromRGBO(rgb[0],rgb[1],rgb[2], .4),
//       400: Color.fromRGBO(rgb[0],rgb[1],rgb[2], .5),
//       500: Color.fromRGBO(rgb[0],rgb[1],rgb[2], .6),
//       600: Color.fromRGBO(rgb[0],rgb[1],rgb[2], .7),
//       700: Color.fromRGBO(rgb[0],rgb[1],rgb[2], .8),
//       800: Color.fromRGBO(rgb[0],rgb[1],rgb[2], .9),
//       900: Color.fromRGBO(rgb[0],rgb[1],rgb[2], 1),
//     });
//   }
//
// }