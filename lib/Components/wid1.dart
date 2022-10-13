import 'package:flutter/material.dart';
import '../Model/widget_details.dart';

class Widget1 extends StatelessWidget {
  const Widget1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as WidgetDetailsModel;

    return Scaffold(
      appBar: AppBar(
          title:Text(args.title),
        backgroundColor: Colors.cyan,
      ),
      primary: true,
      body: const Center(
        child: Text("Widget Space"),
      ),
    );
  }
}
