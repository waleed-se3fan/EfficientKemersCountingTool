import 'package:efficient_kemers_counting_tool/readfasta.dart';
import 'package:efficient_kemers_counting_tool/readfastaq.dart';
import 'package:efficient_kemers_counting_tool/readtext.dart';
import 'package:efficient_kemers_counting_tool/splash%20screen.dart';
import 'package:efficient_kemers_counting_tool/text_item.dart';
import 'package:flutter/material.dart';

import 'added.dart';
import 'controller.dart';

void main() {
  runApp( EfficientKemersCountingTool());
}

class EfficientKemersCountingTool extends StatelessWidget {
  const EfficientKemersCountingTool({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

class Home extends StatelessWidget {
  var controller = Controller();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
        title: MyText(
            text: 'Efficient Kemers Counting Tool',
            size: 17,
            color: Colors.white),
        centerTitle: true,
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/d.jpg'),fit: BoxFit.fill)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ListView.builder(
                shrinkWrap: true,
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                      margin: const EdgeInsets.all(18),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) {
                            return index == 0
                                ? ReadText()
                                : index == 1
                                    ? PROJECTABSTRACT()
                                    : index == 2
                                        ? PROJECTOBJECTIVES():
                                index==3?COMPETITORS()
                                        : Container();
                          }));
                        },
                        child: Text(
                          controller.buttonNames[index],
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ));
                }),
          ],
        ),
      ),
    );
  }
}
