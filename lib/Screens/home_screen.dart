import 'package:flutter/material.dart';
import '../Utils/widget_thumbnail.dart';
import '../Utils/widgets_data.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Awesome Flutter Widgets",style: TextStyle(color: Colors.white),),
          automaticallyImplyLeading: false,
          elevation: 10,
          shadowColor: Colors.cyan,
          backgroundColor: Colors.cyan,
        ),
        primary: true,
        body: Container(
          color: Colors.grey.shade200,
          child: Column(
            children: [
              widgetsList.isNotEmpty ? Flexible(
                  child:Padding(
                    padding: const EdgeInsets.all(10),
                    child: GridView.builder(
                      itemCount: widgetsList.length,
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 1
                      ),
                      itemBuilder: (context,index){
                        return FeatureThumbnail(fd: widgetsList[index], count: index,);
                      },
                    ),
                  )
              ):const Center(child: Text("No Widgets Available"),),
            ],
          ),
        ),
    );
  }
}
