import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
import '../Model/widget_details.dart';
import '../Utils/code_viewer.dart';

class ImageViewer3D extends StatefulWidget {
  const ImageViewer3D({Key? key}) : super(key: key);

  @override
  State<ImageViewer3D> createState() => _ImageViewer3DState();
}

class _ImageViewer3DState extends State<ImageViewer3D> {

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as WidgetDetailsModel;
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      appBar: AppBar(
        foregroundColor: Colors.white,
        title:Text(args.title),
        backgroundColor: Colors.cyan,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              height: 520,
              width: MediaQuery.of(context).size.width,
              child: InteractiveViewer(
                  child: ModelViewer(
                    backgroundColor: const Color.fromARGB(0xFF, 0xEE, 0xEE, 0xEE),
                    src: 'https://modelviewer.dev/shared-assets/models/Astronaut.glb',
                    alt: "Test",
                    ar: false,
                    autoRotate: false,
                    cameraControls: true,
                  ),
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
