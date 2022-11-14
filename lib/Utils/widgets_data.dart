import '../Model/widget_details.dart';

WidgetDetailsModel flipCardWidget = WidgetDetailsModel(
    "Flip Card",
    "A component that provides a flip card animation. It could be used for hiding and showing details of a product.",
    "assets/gifs/flip_card.gif",
    "/flip_card_widget",
    """
    FlipCard(
      fill: Fill.fillBack,
      direction: FlipDirection.HORIZONTAL, // default
      front: Container(
            child: Text('Front'),
        ),
        back: Container(
            child: Text('Back'),
        ),
    );
    """
);

WidgetDetailsModel confettiWidget = WidgetDetailsModel(
    "Confetti",
    "Blast colorful confetti all over the screen. Celebrate in app achievements with style. Control the velocity, angle, gravity and amount of confetti.",
    "assets/gifs/confetti.gif",
    "/confetti_widget",
    """
    ConfettiWidget(
      confettiController: _centerController,
      blastDirection: pi / 2,
      maxBlastForce: 5,
      minBlastForce: 1,
      emissionFrequency: 0.03,
      numberOfParticles: 10,
      shouldLoop:true,
      gravity: 0,
    ),
  """
);

WidgetDetailsModel listWheelScroll = WidgetDetailsModel(
    "List Wheel Scroll View",
    "ListWheelScrollView is a flutter widget that is used to build ListView with a 3D effect. We can also use ListView to create a list of items but we can’t add a 3D effect to it plus it also comes with a constraint that all the children inside this widget must be of the same size along the strolling axis.",
    "assets/gifs/list_wheel_scroll.gif",
    "/listWheelScroll",
    """
      ListWheelScrollView({
      
          Key key,
          ScrollController controller, 
          ScrollPhysics physics, 
          double diameterRatio, 
          double perspective, 
          double offAxisFraction, 
          bool useMagnifier, 
          double magnification, 
          double overAndUnderCenterOpacity, 
          double itemExtent, 
          double squeeze, 
          void Function(int) onSelectedItemChanged, 
          bool clipToSize, 
          bool renderChildrenOutsideViewport, 
          List<Widget> children
          
      })  
    """
);

WidgetDetailsModel interactiveViewer = WidgetDetailsModel(
    "Interactive Viewer",
    "By wrapping up a widgets in Interactive Viewer you can do actions such as drag, drop, zoom etc",
    "assets/gifs/interactive_viewer.gif",
    "/interactiveViewer",
    """
    InteractiveViewer(
      boundaryMargin: const EdgeInsets.all(double.infinity),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Widget"
          ),
        ),
      ),
    ),
    """
);

WidgetDetailsModel reorderableList = WidgetDetailsModel(
    "Reorderable List View",
    "The reorderable List is one whose items are draggable, and the user can rearrange/modify the object.",
    "assets/gifs/reorderlistviewwidget.gif",
    "/reorderableList",
    """
    final List<int> items = List.generate(30, (int index) => index);
    ------
    ReorderableListView(
      children: List.generate(
          items.length,
          (index) => ListTile(
            key: Key("index"),
            tileColor: items[index].isOdd?Colors.white:Colors.grey.shade200,
            title: Text("Task {items[index]}"),
            trailing: const Icon(Icons.drag_indicator),
          )
      ),
      onReorder: (int oldIndex, int newIndex) {
        setState(() {
          if(oldIndex < newIndex){
            newIndex -=1;
          }
          final int item = items.removeAt(oldIndex);
          items.insert(newIndex, item);
        });
      },
    ),
  """
);

WidgetDetailsModel cuperCtxMenu = WidgetDetailsModel(
    "Cupertino Context Menu",
    "CupertinoContextMenu widget shows a display that on lengthy press will show the context menu with activities for that child. It proves to be useful when we need to show more choices for a child in a little space.",
    "assets/gifs/cuper_ctx_menu_widget.gif",
    "/cuperCtxMenu",
    """
    CupertinoContextMenu(
      actions: [
        CupertinoContextMenuAction(
            child: const Text("Action one"),
          onPressed: (){
              Navigator.pop(context);
          },
        ),
        CupertinoContextMenuAction(
          child: const Text("Action two"),
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ],
      child: Image.network("https://w7.pngwing.com/pngs/522/1004/png-transparent-computer-icons-others-angle-rectangle-triangle-thumbnail.png"),
    ),
    """
);

WidgetDetailsModel tabularView = WidgetDetailsModel(
    "Table View",
    "A table allows the user to arrange the data in rows and columns. It is used to store and display our data in a structured format, which helps us to compare the pairs of related values easily.",
    "assets/gifs/tabular_view.gif",
    "/tabularView",
    """
    Table(
        border: TableBorder.all(color: Colors.black),
        defaultVerticalAlignment: TableCellVerticalAlignment.middle,
        children:  [
          const TableRow(
            decoration: BoxDecoration(
              color: Colors.cyanAccent
            ),
            children: [
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Padding(
                    padding: EdgeInsets.all(8.0),
                  child: Text("Attribute 1"),
                ),
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Attribute 2"),
  
                ),
              ),
              TableCell(
                verticalAlignment: TableCellVerticalAlignment.middle,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Attribute 3"),
  
                ),
              )
            ]
          ),
          ...List.generate(
              50,
              (index) => TableRow(
                children: [
                  TableCell(
                    child:....
                  ),
                  TableCell(
                    child:....
                  ),
                  TableCell(
                    child:....
                  ),
                ]
              )
          )
        ],
      ),
    """
);

WidgetDetailsModel bottomsheetpopup = WidgetDetailsModel(
    "Amazon 'Buy Now' UI",
    "A simple Amazons's 'Swipe to place your order' ui",
    "assets/gifs/amazon_place_your_order_ui.gif",
    "/amazonplaceorderui",
    ""
);

WidgetDetailsModel stepperWidget = WidgetDetailsModel(
    "Stepper",
    "Stepper widget is popularly used to display any progress through a sequence of steps.",
    "assets/gifs/stepper_widg.gif",
    "/stepperwidget",
    """
    Stepper(
      steps: [
        Step(
          isActive: _currentStep ==0,
            title: const Text("Step 1"),
            content: const Text(""
                "Information for Step 1",
              style: TextStyle(
                color: Colors.cyanAccent
              ),
            )
        ),
        Step(
            isActive: _currentStep == 1,
            title: const Text("Step 2"),
            content: const Text(""
                "Information for Step 2",
              style: TextStyle(
                  color: Colors.cyanAccent
              ),
            )
        ),
        Step(
            isActive: _currentStep == 2,
            title: const Text("Step 3"),
            content: const Text(""
                "Information for Step 3",
              style: TextStyle(
                  color: Colors.cyanAccent
              ),
            )
        )
      ],
      onStepTapped: (int newIndex){
        setState(() {
          _currentStep = newIndex;
        });
      },
      currentStep: _currentStep,
      onStepContinue: (){
        if(_currentStep ==2){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const CompleteSteps()),
          );
        }
        if(_currentStep !=2){
          setState(() {
            _currentStep +=1;
          });
        }

      },
      onStepCancel: (){
        if(_currentStep !=0){
          setState(() {
            _currentStep -=1;
          });
        }
      },
      type: _currentType,
    )
    """
);

List<WidgetDetailsModel> widgetsList = [
  flipCardWidget,
  confettiWidget,
  listWheelScroll,
  interactiveViewer,
  reorderableList,
  cuperCtxMenu,
  tabularView,
  bottomsheetpopup,
  stepperWidget
];