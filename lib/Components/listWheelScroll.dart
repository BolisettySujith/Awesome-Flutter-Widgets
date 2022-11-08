import 'package:flutter/material.dart';
import '../Model/widget_details.dart';
import '../Utils/code_viewer.dart';

class ListWheelScroll extends StatefulWidget {
  const ListWheelScroll({Key? key}) : super(key: key);

  @override
  State<ListWheelScroll> createState() => _ListWheelScrollState();
}

class _ListWheelScrollState extends State<ListWheelScroll> {
  FixedExtentScrollController fixedExtentScrollController = FixedExtentScrollController();
  final controller = ScrollController();

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
              child: CodeViewer(markdownData: args.codeSnippet,title: args.title,),
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
