import 'package:flutter/material.dart';

import '../Model/widget_details.dart';
import '../Utils/code_viewer.dart';

class ReorderableListViewWidget extends StatefulWidget {
  const ReorderableListViewWidget({Key? key}) : super(key: key);

  @override
  State<ReorderableListViewWidget> createState() => _ReorderableListViewWidgetState();
}

class _ReorderableListViewWidgetState extends State<ReorderableListViewWidget> {
  final List<int> items = List.generate(30, (int index) => index);
  final String _markdownData = """
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
  """;

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as WidgetDetailsModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.title,),
        foregroundColor: Colors.white,
        backgroundColor: Colors.cyan,
      ),
      primary: true,
      body: Stack(
        children: [
          ReorderableListView(
            children: List.generate(
                items.length,
                (index) => ListTile(
                  key: Key("$index"),
                  tileColor: items[index].isOdd?Colors.white:Colors.grey.shade200,
                  title: Text("Task ${items[index]}"),
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
          Container(
            margin: const EdgeInsets.all(10),
            child: Align(
              alignment: Alignment.bottomRight,
              child: CodeViewer(markdownData: _markdownData,title: args.title,),
            ),
          ),
        ],
      ),
    );
  }
}
