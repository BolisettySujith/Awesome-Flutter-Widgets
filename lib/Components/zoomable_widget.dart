import 'package:awesome_flutter_widgets/Utils/code_viewer.dart';
import 'package:flutter/material.dart';
import '../Model/widget_details.dart';

class ZoomableWidget extends StatefulWidget {
  const ZoomableWidget({Key? key}) : super(key: key);

  @override
  State<ZoomableWidget> createState() => _ZoomableWidgetState();
}

class _ZoomableWidgetState extends State<ZoomableWidget> {
  final String _markdownData = """
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
""";

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as WidgetDetailsModel;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        foregroundColor: Colors.white,
        title: Text(args.title),
      ),
      body: Stack(
        children: [
          InteractiveViewer(
            boundaryMargin: const EdgeInsets.all(double.infinity),
            child: Scaffold(
              appBar: AppBar(
                foregroundColor: Colors.white,
                title: const Text(
                  "Widget"
                ),
              ),
            ),
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
