import 'package:awesome_flutter_widgets/Components/all_widgets.dart';
import 'package:flutter/material.dart';

import '../Model/widget_details.dart';
import '../Utils/code_viewer.dart';

class StepperWidget extends StatefulWidget {
  const StepperWidget({Key? key}) : super(key: key);

  @override
  State<StepperWidget> createState() => _StepperWidgetState();
}

class _StepperWidgetState extends State<StepperWidget> {
  int _currentStep = 0;
  StepperType _currentType = StepperType.vertical;
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as WidgetDetailsModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.title,),
        foregroundColor: Colors.white,
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Stack(
          children: [
            Stepper(
              steps: [
                Step(
                  isActive: _currentStep ==0,
                    title: const Text("Step 1"),
                    content: const Text(""
                        "Information for Step 1",
                      style: TextStyle(
                        color: Colors.cyanAccent
                      ),
                    )
                ),
                Step(
                    isActive: _currentStep == 1,
                    title: const Text("Step 2"),
                    content: const Text(""
                        "Information for Step 2",
                      style: TextStyle(
                          color: Colors.cyanAccent
                      ),
                    )
                ),
                Step(
                    isActive: _currentStep == 2,
                    title: const Text("Step 3"),
                    content: const Text(""
                        "Information for Step 3",
                      style: TextStyle(
                          color: Colors.cyanAccent
                      ),
                    )
                )
              ],
              onStepTapped: (int newIndex){
                setState(() {
                  _currentStep = newIndex;
                });
              },
              currentStep: _currentStep,
              onStepContinue: (){
                if(_currentStep ==2){
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const CompleteSteps()),
                  );
                }
                if(_currentStep !=2){
                  setState(() {
                    _currentStep +=1;
                  });
                }

              },
              onStepCancel: (){
                if(_currentStep !=0){
                  setState(() {
                    _currentStep -=1;
                  });
                }
              },
              type: _currentType,
            ),
            Container(
              margin: const EdgeInsets.all(10),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Colors.cyan,
                      shadowColor: Colors.black,
                      elevation: 10
                  ),
                  onPressed: (){
                    setState(() {
                      _currentType = _currentType == StepperType.vertical ? StepperType.horizontal : StepperType.vertical;
                    });
                  },
                  child: const Text(
                    "Change View",
                    style: TextStyle(
                        color: Colors.white, fontSize: 15
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
      ),
    );
  }
}

class CompleteSteps extends StatelessWidget {
  const CompleteSteps({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
              Icons.checklist,
              color: Colors.white,
              size: 100,
            ),
            Text(
              "Congratulations",
              style: TextStyle(
                fontSize: 30,
                  color: Colors.white
              ),
            ),
            SizedBox(height: 10,),
            Text(
              "You have completed",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white
              ),
            ),
            Text(
              "All the steps",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white
              ),
            )

          ],
        ),
      ),
    );
  }
}
