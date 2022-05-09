import 'package:efficient_kemers_counting_tool/text_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ReadText extends StatefulWidget {
  @override
  State<ReadText> createState() => _ReadTextState();
}

class _ReadTextState extends State<ReadText> {
  int? kmer_number;
  var kmerscontrol = TextEditingController();
  bool isKemersShown = false;
  bool isNumberShown = false;
  var textcontrol = TextEditingController();

  numOfKmers() {
    kmer_number = (textcontrol.text.length - int.parse(kmerscontrol.text)) + 1;
    return kmer_number;
  }

  List klist = [];
  String text = 'waleed';
  String s = '';

  l(){}

  listOfKemers() {
    s = textcontrol.text;
    int n = int.parse(kmerscontrol.text);
    int k = s.length - 2 * n;
    for (int i = 0; i <= k+n; i++) {
      String result = s.substring(i, i + n);
      klist.add(result);
    }
    return klist;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(

          child: Column(
            children: [
              Container(
                width: 300,
                margin: EdgeInsets.only(top: 20),
                child: TextField(
                  controller: textcontrol,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                    border: OutlineInputBorder(),
                    hintText: 'Enter the Dna Sequence',
                  ),
                ),
              ),
              Container(
                width: 300,
                margin: EdgeInsets.only(top: 20),
                child: TextField(
                  controller: textcontrol,
                  keyboardType: TextInputType.multiline,
                  decoration: InputDecoration(
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                    border: OutlineInputBorder(),
                    hintText: 'Enter the Dna Sequence',
                  ),
                ),
              ),

              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0),
                child: TextFormField(
                  keyboardType: TextInputType.number,
                  controller: kmerscontrol,
                  decoration: InputDecoration(
                    labelText: "Enter the K-mer",
                    fillColor: Colors.white,
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25.0),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10.0),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                        width: 2.0,
                      ),
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: () {
                    isNumberShown = true;
                    numOfKmers();
                    setState(() {});
                  },
                  child: Text('Show Number of K-mers')),
              isNumberShown == false
                  ? Text('')
                  : MyText(
                      text: numOfKmers().toString(), size: 15, color: Colors.black),
              ElevatedButton(
                  onPressed: () {
                    isKemersShown = true;
                    s = textcontrol.text;
                    setState(() {});
                  },
                  child: Text('Show All k-mers')),
              Column(
                children: [
                  isKemersShown == false
                      ? Container()
                      : Container(
                    width: 150,
                          margin: EdgeInsets.only(top: 50),
                          child: ListView.builder(
                              shrinkWrap: true,
                              itemCount: kmer_number,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: [
                                    Center(
                                        child: MyText(
                                            text: "${index+1}-   "+listOfKemers()[index],
                                            size: 18,
                                            color: Colors.black)),
                                    Divider(color: Colors.black,),
                                  ],
                                );
                              }),
                        ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (c) {
                          return ReadText();
                        }));
                      },
                      child: Text('Restart')),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
