import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          backgroundColor: Colors.indigo.shade800,
          appBar: AppBar(
            title: Text('Ask Me Anything'),
          ),
          body: ImgContainer(),
        ),
      ),
    );

class ImgContainer extends StatefulWidget {
  const ImgContainer({Key? key}) : super(key: key);

  @override
  State<ImgContainer> createState() => _ImgContainerState();
}

class _ImgContainerState extends State<ImgContainer> {
  //variables
  int ballNo = 1;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  ballNo = Random().nextInt(4) + 1;
                });
              },
              child: Image.asset('images/ball$ballNo.png'),
            ),
          ),
        ],
      ),
    );
  }
}
