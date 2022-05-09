import 'package:efficient_kemers_counting_tool/text_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class COMPETITORS extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('COMPETITORS'),centerTitle: true,),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: MyText(
              text:
              " •	The Competitors Are JellyFish,KMC And DSK•\n \n	Our Project Will be A Mobile Application And It Will be More Efficient And Easy To Use",
              size: 22,
              color: Colors.black),
        ),
      ),
    );
  }
}
