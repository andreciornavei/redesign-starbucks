import 'package:flutter/widgets.dart';

class Calcs {
  
  static double calcHorizontalParallaxPosition({
    @required double backgroundOriginalHeight,
    @required double backgroundOriginalWidth,
    @required double backgroundRenderHeight,
    @required double screenWidth,
    @required int foregroundTotalSteps,
    @required int foregroundStepIndex,
    double offsetPadding: 0,
  }){
    
    //***************************************************//
    //  calc the background width based on original      //
    //  sizes and the scaled height:                     //
    //***************************************************//
    
    double backgroundRenderWidth = (
      (
        backgroundRenderHeight * backgroundOriginalWidth
      ) / backgroundOriginalHeight
    ) - screenWidth - (offsetPadding * 2);
    
    //***************************************************//
    //  return a currect background position for the     // 
    //  selected step  index of foreground widget:       //
    //***************************************************//
    //  The offsetPadding calcs a negative padding       //
    //  for extremities of background widget, so it      //
    //  can keeped ever out of screen and make it more   //
    //  agradable to see:                                //
    //***************************************************//
    
    return (
      (
        (backgroundRenderWidth / foregroundTotalSteps) * foregroundStepIndex
      ) + offsetPadding
    ) * -1;

  }
}