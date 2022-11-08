import 'package:awesome_flutter_widgets/Model/widget_details.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Utils/code_viewer.dart';

class CupertinoCxtMenuWidget extends StatefulWidget {
  const CupertinoCxtMenuWidget({Key? key}) : super(key: key);

  @override
  State<CupertinoCxtMenuWidget> createState() => _CupertinoCxtMenuWidgetState();
}

class _CupertinoCxtMenuWidgetState extends State<CupertinoCxtMenuWidget> {

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as WidgetDetailsModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
        primary: true,
        foregroundColor: Colors.white,
      ),
      body: Stack(
        children: [
          Center(
            child: SizedBox(

              width: 100,
              height: 100,
              child: CupertinoContextMenu(
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
                  CupertinoContextMenuAction(
                    child: const Text("Action three"),
                    onPressed: (){
                      Navigator.pop(context);
                    },
                  ),
                ],
                child: Image.network("https://user-images.githubusercontent.com/51419598/152648731-567997ec-ac1c-4a9c-a816-a1fb1882abbe.png"),
              ),
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
}
