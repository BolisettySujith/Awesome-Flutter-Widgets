import '../Model/widget_details.dart';

WidgetDetailsModel flipCardWidget = WidgetDetailsModel(
    "Flip Card",
    "A component that provides a flip card animation. It could be used for hiding and showing details of a product.",
    "assets/gifs/flip_card.gif",
    "/flip_card_widget"
);

WidgetDetailsModel confettiWidget = WidgetDetailsModel(
    "Confetti",
    "Blast colorful confetti all over the screen. Celebrate in app achievements with style. Control the velocity, angle, gravity and amount of confetti.",
    "assets/gifs/confetti.gif",
    "/confetti_widget"
);

WidgetDetailsModel listWheelScroll = WidgetDetailsModel(
    "List Wheel Scroll View",
    "ListWheelScrollView is a flutter widget that is used to build ListView with a 3D effect. We can also use ListView to create a list of items but we can’t add a 3D effect to it plus it also comes with a constraint that all the children inside this widget must be of the same size along the strolling axis.",
    "assets/gifs/list_wheel_scroll.gif",
    "/listWheelScroll",

);

WidgetDetailsModel interactiveViewer = WidgetDetailsModel(
    "Interactive Viewer",
    "By wrapping up a widgets in Interactive Viewer you can do actions such as drag, drop, zoom etc",
    "assets/gifs/interactive_viewer.gif",
    "/interactiveViewer"
);

WidgetDetailsModel reorderableList = WidgetDetailsModel(
    "Reorderable List View",
    "The reorderable List is one whose items are draggable, and the user can rearrange/modify the object.",
    "assets/gifs/reorderlistviewwidget.gif",
    "/reorderableList"
);

List<WidgetDetailsModel> widgetsList = [
  flipCardWidget,
  confettiWidget,
  listWheelScroll,
  interactiveViewer,
  reorderableList,
];