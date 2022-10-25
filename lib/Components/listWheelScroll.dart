import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../Model/widget_details.dart';

class ListWheelScroll extends StatefulWidget {
  const ListWheelScroll({Key? key}) : super(key: key);

  @override
  State<ListWheelScroll> createState() => _ListWheelScrollState();
}

class _ListWheelScrollState extends State<ListWheelScroll> {
  FixedExtentScrollController fixedExtentScrollController = FixedExtentScrollController();
  final controller = ScrollController();
  final String _markdownData = """
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
  """;


  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as WidgetDetailsModel;
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title:Text(args.title),
        backgroundColor: Colors.cyan,
      ),
      body: Stack(
        children: [
          Center(
            child: ListWheelScrollView(
              itemExtent: 250,
              controller: fixedExtentScrollController,
              physics: const FixedExtentScrollPhysics(),
              perspective: 0.0099,
              diameterRatio: 0.5,
              children: [
                thumbnailCard(0),
                thumbnailCard(1),
                thumbnailCard(2),
                thumbnailCard(3),
                thumbnailCard(4),
                thumbnailCard(5),
                thumbnailCard(6),
                thumbnailCard(7),
                thumbnailCard(8),
                thumbnailCard(9),
                thumbnailCard(10),
                thumbnailCard(11),
                thumbnailCard(12),
                thumbnailCard(13),
                thumbnailCard(14),
                thumbnailCard(15),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.bottomRight,
              child: TextButton(
                style: TextButton.styleFrom(
                    backgroundColor: Colors.cyan,
                    shadowColor: Colors.black,
                    elevation: 10
                ),
                onPressed: (){
                  showDialog(
                      context: context,
                      builder: (context){
                        return AlertDialog(
                          backgroundColor: Colors.cyan,
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(20.0))
                          ),
                          title: const Text("List Wheel Scroll View Code",style: TextStyle(color: Colors.white),),
                          content: SizedBox(
                            height: 320,
                            width: 200,
                            child: Column(
                              children: [
                                Expanded(
                                  child: Markdown(
                                    padding: const EdgeInsets.all(0),
                                    controller: controller,
                                    selectable: true,
                                    data: _markdownData,
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    FlutterClipboard.copy(_markdownData).then(( value ) => {
                                      ScaffoldMessenger.of(context).showSnackBar(
                                          const SnackBar(
                                            content: Text("Copied"),
                                            backgroundColor: Colors.cyan,
                                          )
                                      )
                                    });
                                  },
                                  child: Container(
                                    height: 25,
                                    width: 50,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      color: Colors.white,
                                      boxShadow: const [
                                        BoxShadow(
                                            blurRadius: 10.0,
                                            color: Colors.grey
                                        ),
                                      ],
                                    ),
                                    child: const Center(child: Text("Copy")),
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }
                  );
                },
                child: const Text(
                  "Code </>",
                  style: TextStyle(
                      color: Colors.white, fontSize: 15
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget thumbnailCard(int index){
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        color: Colors.cyan,
        height: 200,
        width: 250,
        child: Center(
          child: Text("Item $index"),
        ),
      ),
    );
  }
}
