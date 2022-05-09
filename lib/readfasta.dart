import 'package:efficient_kemers_counting_tool/text_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PROJECTABSTRACT extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('PROJECT ABSTRACT'),centerTitle: true,),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: MyText(
              text:
                  "In bioinformatics, k-mers are substrings of length k contained within a biological sequence. Primarily used within the context of computational genomics and sequence analysis, in which k-mers are composed of nucleotides (i.e. A, T, G, and C), Usually, the term k-mer refers to all of a sequence's subsequences of length k, such that the sequence AGAT would have four monomers (A, G, A, and T), three 2-mers (AG, GA, AT), two 3-mers (AGA and GAT) and one 4-mer (AGAT). More generally, a sequence of length L will have L-k+1 k-mers and {n^{k} total possible k-mers, where n is number of possible monomers (e.g. four in the case of DNA).",
              size: 22,
              color: Colors.black),
        ),
      ),
    );
  }
}
