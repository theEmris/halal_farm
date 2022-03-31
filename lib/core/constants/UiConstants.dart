import 'package:flutter/material.dart';
import 'package:halal_farm/provider/text_provider.dart';
import 'package:halal_farm/sizeConfig.dart';
import 'package:provider/provider.dart';

class UiConstants {
  static var scafBackColor = Color(0xFFE5E5E5);
 
 
 
  static  Text  TextDesignBoldAndBig(BuildContext context, String myText) {
    SizeConfig().init(context);
    
    return Text(myText ,
     style:  TextStyle(
     color: context.watch<TextProvider>().myColor,
     fontSize:getHeight(26),
     fontWeight: FontWeight.bold
   ),
   );
  }
}
