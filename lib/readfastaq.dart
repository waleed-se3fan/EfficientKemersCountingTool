import 'package:efficient_kemers_counting_tool/text_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PROJECTOBJECTIVES extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PROJECT OBJECTIVES'),centerTitle: true,),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: MyText(
              text:
              " The User Will Enter the DNA Sequence And The Length Of K (i.e 2,3,4 etc) And The App Will Count The K-mers And How Many Times Each One Is Repeated).",
              size: 22,
              color: Colors.black),
        ),
      ),
    );
  }
}
