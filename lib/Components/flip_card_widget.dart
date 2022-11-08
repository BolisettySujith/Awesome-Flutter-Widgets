import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:clipboard/clipboard.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import '../Model/widget_details.dart';

class FlipCardWidget extends StatefulWidget {
  const FlipCardWidget({Key? key}) : super(key: key);

  @override
  State<FlipCardWidget> createState() => _FlipCardWidgetState();
}

class _FlipCardWidgetState extends State<FlipCardWidget> {

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as WidgetDetailsModel;
    final controller = ScrollController();
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        title:Text(args.title),
        backgroundColor: Colors.cyan,
      ),
      primary: true,
      body: Center(
        child: FlipCard(
          fill: Fill.fillBack, // Fill the back side of the card to make in the same size as the front.
          direction: FlipDirection.HORIZONTAL, // default
          front: Container(
            padding: const EdgeInsets.all(10),
            height: 250,
            width: 250,
            decoration: const BoxDecoration(
              color: Colors.cyan,
              boxShadow: [
                BoxShadow(
                    blurRadius: 10.0,
                    color: Colors.grey
                ),
              ],
            ),
            child: Center(
              child: DefaultTextStyle(
                style: const TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
                child: AnimatedTextKit(
                  repeatForever: true,
                  animatedTexts: [
                    RotateAnimatedText('Hi'),
                    RotateAnimatedText('Thanks For Viewing'),
                    RotateAnimatedText('Awesome Flutter Widgets'),
                  ],
                ),
              ),
            ),
          ),
          back: Container(
            padding: const EdgeInsets.all(10),
            height: 250,
            width: 250,
            decoration: const BoxDecoration(
              color: Colors.cyan,
              boxShadow: [
                BoxShadow(
                    blurRadius: 10.0,
                    color: Colors.grey
                ),
              ],
            ),
            child: Column(
              children: [
                Expanded(
                  child: Markdown(
                    controller: controller,
                    selectable: true,
                    data: args.codeSnippet,

                  ),
                ),
                GestureDetector(
                  onTap: (){
                    FlutterClipboard.copy(args.codeSnippet).then(( value ) => {
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
        )
      ),
    );
  }

}
