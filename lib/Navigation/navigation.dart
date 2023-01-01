import 'package:flutter/material.dart';
import '../Components/all_widgets.dart';
import '../Screens/home_screen.dart';
import '../Screens/splash_screen.dart';

class Navigate{
  static Map<String, Widget Function(BuildContext)> routes =   {
    '/' : (context) => const HomeScreen(),
    '/initial-screen' : (context) => const SplashScreen(),
    '/flip_card_widget' : (context) => const FlipCardWidget(),
    '/confetti_widget' : (context) => const AwesomeConfettiWidget(),
    '/listWheelScroll' : (context) => const ListWheelScroll(),
    '/interactiveViewer' : (context) => const ZoomableWidget(),
    '/reorderableList' : (context) => const ReorderableListViewWidget(),
    '/cuperCtxMenu': (context) => const CupertinoCxtMenuWidget(),
    '/tabularView': (context) => const TabularView(),
    '/amazonplaceorderui': (context) => const AmazonPlaceOrderUI(),
    '/stepperwidget' : (context) => const StepperWidget(),
    '/color_filtered_image_effect' : (context) => const ColorFilteredImageEffect(),
    '/image_viewer_3d' : (context) => ImageViewer3D(),
    '/banner_wid' : (context) => BannerWidget(),
  };
}