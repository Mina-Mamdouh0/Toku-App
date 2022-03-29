
import 'package:flutter/material.dart';
import 'package:toku/component/item.dart';
import 'package:toku/model/model.dart';


class ColorsScreen extends StatelessWidget {
  ColorsScreen({Key? key}) : super(key: key);

  List<Model> list=[
    Model(jPName: 'Burakku', enName: 'black', image: 'assets/images/colors/color_black.png', music: 'black.wav'),
    Model(jPName: 'Chairo', enName: 'brown', image: 'assets/images/colors/color_brown.png', music: 'brown.wav'),
    Model(jPName: 'Hokori ppoi kiiro', enName: 'dusty_yellow', image: 'assets/images/colors/color_dusty_yellow.png', music: 'dusty yellow.wav'),
    Model(jPName: 'Gure', enName: 'gray', image: 'assets/images/colors/color_gray.png', music: 'gray.wav'),
    Model(jPName: 'Midori', enName: 'green', image: 'assets/images/colors/color_green.png', music: 'green.wav'),
    Model(jPName: 'Aka', enName: 'red', image: 'assets/images/colors/color_red.png', music: 'red.wav'),
    Model(jPName: 'Shiroi', enName: 'white', image: 'assets/images/colors/color_white.png', music: 'white.wav'),
    Model(jPName: '', enName: 'Yellow', image: 'assets/images/colors/yellow.png', music: 'yellow.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Numbers'),
        backgroundColor:const Color(0xFF31221B),
      ),
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context,index)=>ItemList(item: list[index],
          color: const Color(0xFF542B6D), idSing: 'colors',)),
    );
  }
}


