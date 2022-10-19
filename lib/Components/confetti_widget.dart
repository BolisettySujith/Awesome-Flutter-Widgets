import 'dart:math';

import 'package:clipboard/clipboard.dart';
import 'package:confetti/confetti.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

import '../Model/widget_details.dart';

class AwesomeConfettiWidget extends StatefulWidget {
  const AwesomeConfettiWidget({Key? key}) : super(key: key);

  @override
  State<AwesomeConfettiWidget> createState() => _AwesomeConfettiWidgetState();
}

class _AwesomeConfettiWidgetState extends State<AwesomeConfettiWidget> {

  late ConfettiController _confettiController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _confettiController = ConfettiController(duration: const Duration(seconds: 10));
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _confettiController.dispose();
    super.dispose();
  }

  final String _markdownData = """
  
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
  """;


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
      body: SafeArea(
        child: Stack(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: ConfettiWidget(
                confettiController: _confettiController,
                blastDirection: pi/2,
                maxBlastForce: 5,
                minBlastForce: 1,
                emissionFrequency: 0.03,
                numberOfParticles: 10,
                gravity: 0,
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                style: TextButton.styleFrom(
                  backgroundColor: Colors.cyan,
                  shadowColor: Colors.black,
                  elevation: 10
                ),
                onPressed: (){
                  _confettiController.play();
                },
                child: const Text(
                  "🥳",
                ),
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
                            title: const Text("Confetti Code",style: TextStyle(color: Colors.white),),
                            content: SizedBox(
                              height: 200,
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
      ),
    );
  }
}
