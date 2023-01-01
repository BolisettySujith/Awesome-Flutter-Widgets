import 'package:flutter/material.dart';

import '../Model/widget_details.dart';
import '../Utils/code_viewer.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as WidgetDetailsModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
        primary: true,
        foregroundColor: Colors.white
      ),
      body: Stack(
        children: [
          Center(
            child: Container(
              margin: const EdgeInsets.all(10),
              child: ClipRect(
                child: Banner(
                  message: "25% off",
                  location: BannerLocation.topEnd,
                  color: Colors.red,
                  child: Container(
                    color: Colors.cyan.shade600,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.network(
                              'https://github.com/BolisettySujith/Awesome-Flutter-Widgets/raw/master/Images/ReadmeHeader.gif'
                          ),
                          const SizedBox(height: 10,),
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              const Text(
                                'Awesome Flutter Widgets',
                                style: TextStyle(
                                    fontSize: 15, fontWeight: FontWeight.bold,
                                  color: Colors.white
                                ),
                              ),
                              const Spacer(),
                              SizedBox(
                                height: 35,
                                width: 80,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(primary: Colors.orangeAccent),
                                    onPressed:(){},
                                    child: const FittedBox(child: Text("Get Now"))
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
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
