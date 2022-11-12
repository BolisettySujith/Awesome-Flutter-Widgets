import 'package:flutter/material.dart';
import 'package:slide_to_act/slide_to_act.dart';

class AmazonPlaceOrderUI extends StatefulWidget {
  const AmazonPlaceOrderUI({Key? key}) : super(key: key);

  @override
  State<AmazonPlaceOrderUI> createState() => _AmazonPlaceOrderUIState();
}

class _AmazonPlaceOrderUIState extends State<AmazonPlaceOrderUI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Amazon Place Order UI",),
        primary: true,
        foregroundColor: Colors.white,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children:[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Visit the Apple Store",
                          style: TextStyle(
                              color: Colors.blue
                          ),
                        ),
                        Text(
                          "Apple iPhone 13 Mini",
                          style: TextStyle(
                              fontSize: 16
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                    height: 150,
                    child: Image.network("https://www.pngmart.com/files/21/iPhone-13-PNG-Transparent.png")
                )
              ],
            ),
          ),


          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: const [
                Text(
                  "\$ 1,129.00",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                    fontSize: 30
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: TextButton(
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.orange,
                        shadowColor: Colors.black,
                        elevation: 5
                    ),
                    child: const Text(
                      "Buy Now",
                      style: TextStyle(
                          color: Colors.black
                      ),
                    ),
                    onPressed: (){
                      showModalBottomSheet(
                          context: context,
                          builder: (BuildContext context){
                            return SizedBox(
                              height: 400,
                              child: Center(
                                child: Column(
                                  children: [
                                    Spacer(),
                                    Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: SlideAction(
                                        sliderButtonYOffset: -10,
                                        height: 55,
                                        borderRadius: 0,
                                        elevation: 0,
                                        sliderButtonIconPadding: 16,
                                        innerColor: Colors.yellow,
                                        outerColor: Colors.yellow.shade600,
                                        sliderButtonIcon: Row(
                                          children:const [
                                            Icon(
                                              Icons.keyboard_double_arrow_right,
                                              color:Colors.black
                                            ),
                                            // Icon(
                                            //     Icons.chevron_right_sharp,
                                            //     color:Colors.white
                                            // ),
                                            // Icon(
                                            //     Icons.chevron_right_sharp,
                                            //     color:Colors.white
                                            // ),
                                          ],
                                        ),
                                        text: 'Swipe to place your order',
                                        textStyle: const TextStyle(

                                          color: Colors.white,
                                          fontSize: 15,
                                        ),
                                        sliderRotate: false,
                                        onSubmit:() {
                                        //
                                          Navigator.pop(context);
                                          Navigator.push(
                                            context,
                                            MaterialPageRoute(builder: (context) => const CompleteOrder()),
                                          );
                                        },
                                      ),
                                    ),
                                    Spacer(),
                                  ],
                                ),
                              ),
                            );
                          }
                      );
                    },

                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class CompleteOrder extends StatelessWidget {
  const CompleteOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Icon(
                Icons.check_circle,
              size: 150,
            ),
            Text(
              "Order Placed",
              style: TextStyle(
                  fontSize: 30,
              ),
            )
          ],
        ),
      ),
    );
  }
}
