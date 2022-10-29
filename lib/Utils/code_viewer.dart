import 'package:clipboard/clipboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';

class CodeViewer extends StatefulWidget {
  final markdownData;
  final title;
  const CodeViewer({Key? key, this.markdownData, this.title}) : super(key: key);

  @override
  State<CodeViewer> createState() => _CodeViewerState();
}

class _CodeViewerState extends State<CodeViewer> {
  final controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return TextButton(
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
                title: Text("${widget.title} View Code",style: const TextStyle(color: Colors.white),),
                content: SizedBox(
                  height: 320,
                  width: 200,
                  child: Column(
                    children: [
                      Expanded(
                        child: Markdown(
                          padding: const EdgeInsets.all(0),
                          controller: controller,
                          selectable: true,
                          data: widget.markdownData,
                        ),
                      ),
                      GestureDetector(
                        onTap: (){
                          FlutterClipboard.copy(widget.markdownData).then(( value ) => {
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
    );
  }
}
