import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../Model/widget_details.dart';

class ColorFilteredImageEffect extends StatefulWidget {
  const ColorFilteredImageEffect({Key? key}) : super(key: key);

  @override
  State<ColorFilteredImageEffect> createState() => _ColorFilteredImageEffectState();
}
List mycolors = <Color>[
  Colors.black,
  Colors.red,
  Colors.blue,
  Colors.green,
  Colors.purple,
  Colors.orange,
  Colors.indigo,
  Colors.cyan,
  Colors.yellow,
  Colors.teal,
  Colors.deepPurple,
  Colors.pink,
];
List _options = <BlendMode>[
  BlendMode.overlay,
  BlendMode.hue,
  BlendMode.darken
];
List _optionsValues = <String>[
  "Overlay",
  "Hue",
  "Darken"
];
int _selectedIndex =0;
Color primaryColor = mycolors[0];
class _ColorFilteredImageEffectState extends State<ColorFilteredImageEffect> {

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as WidgetDetailsModel;
    return Scaffold(
      appBar: AppBar(
        title: Text(args.title,),
        foregroundColor: Colors.white,
        backgroundColor: primaryColor,
      ),
      body: Center(
        child: Stack(
          children: [
            buildImage(),
            buildColorIcons(),
          ],
        ),
      ),

    );
  }
  Widget buildImage() => Column(
    mainAxisAlignment: MainAxisAlignment.start,
    children: [
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8.0,vertical: 20),
        child: Container(
          decoration:BoxDecoration(
            boxShadow:  [
              BoxShadow(
                  blurRadius: 25.0,
                  color: primaryColor
              ),
            ],
          ),
          child: ColorFiltered(
            colorFilter: ColorFilter.mode(primaryColor, _options[_selectedIndex]),
            child: Padding(
              padding: const EdgeInsets.all(18.0),
              child: Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.width,

                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                child: Image.asset(
                  "assets/images/doraemon.png",
                  fit: BoxFit.contain,
                )
              ),
            ),
          ),
        ),
      ),
    ],
  );

  Widget buildColorIcons() => Column(
    mainAxisAlignment: MainAxisAlignment.end,
    children: [
      _buildChips(),
      Padding(
        padding: const EdgeInsets.only(right: 18.0,left:18.0,bottom: 30,top: 10),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width/2,
          child: Wrap(
            spacing: 28,
            runSpacing: 10,
            children: [for (var i = 0; i < mycolors.length; i++) IconBtn(mycolors[i])],
          ),
        ),
      ),
    ],
  );

  Widget IconBtn(Color myColor) {
    return GestureDetector(
      onTap: (){
        HapticFeedback.vibrate();
        setState(() {
          primaryColor = myColor;
        });
      },
      child: Container(
        width: 50,
        height: 50,
        decoration:BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: myColor.withOpacity(0.75),
          boxShadow:  [
            BoxShadow(
                blurRadius: primaryColor == myColor ? 10.0 : 5.0,
                color: primaryColor == myColor ? primaryColor : Colors.grey
            ),
          ],
        ),
        child: primaryColor == myColor ? Center(
          child: Icon(
            Icons.check,
            size: 30,
            color: primaryColor == Colors.black ? Colors.white : Colors.black,
          ),
        ):Container(),
      ),
    );
  }

  Widget _buildChips() {
    List<Widget> chips = [];

    for (int i = 0; i < _options.length; i++) {
      ChoiceChip choiceChip = ChoiceChip(
        selected: _selectedIndex == i,
        label: Text(_optionsValues[i], style: TextStyle(color: _selectedIndex == i ?Colors.white:Colors.black)),
        avatar: _selectedIndex == i ? const Icon(Icons.radio_button_checked,color: Colors.white,):const Icon(Icons.radio_button_unchecked),
        elevation: 2,
        pressElevation: 5,
        shadowColor: primaryColor,
        backgroundColor: Colors.grey.shade200,
        selectedColor: primaryColor,
        onSelected: (bool selected) {
          HapticFeedback.vibrate();
          setState(() {
            if (selected) {
              _selectedIndex = i;
            }
          });
        },
      );

      chips.add(
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: choiceChip
          )
      );
    }

    return Center(
      child: Wrap(
        // This next line does the trick.
        spacing: 1,
        children: chips,
      ),
    );
  }
}
