
import 'package:flutter/material.dart';
import 'package:toku/component/item.dart';
import 'package:toku/model/model.dart';


class NumbersScreen extends StatelessWidget {
  NumbersScreen({Key? key}) : super(key: key);

  List<Model> list=[
    Model(jPName: 'Ichi', enName: 'one', image: 'assets/images/numbers/number_one.png', music: 'number_one_sound.mp3'),
    Model(jPName: 'Ni', enName: 'Two', image: 'assets/images/numbers/number_two.png', music: 'number_two_sound.mp3'),
    Model(jPName: 'San', enName: 'Three', image: 'assets/images/numbers/number_three.png', music: 'number_three_sound.mp3'),
    Model(jPName: 'Shi', enName: 'Four', image: 'assets/images/numbers/number_four.png', music: 'number_four_sound.mp3'),
    Model(jPName: 'Go', enName: 'Five', image: 'assets/images/numbers/number_five.png', music: 'number_five_sound.mp3'),
    Model(jPName: 'Roku', enName: 'Six', image: 'assets/images/numbers/number_six.png', music: 'number_six_sound.mp3'),
    Model(jPName: 'Sebun', enName: 'Seven', image: 'assets/images/numbers/number_seven.png', music: 'number_seven_sound.mp3'),
    Model(jPName: 'Hachi', enName: 'Eight', image: 'assets/images/numbers/number_eight.png', music: 'number_eight_sound.mp3'),
    Model(jPName: '', enName: 'Nine', image: 'assets/images/numbers/number_nine.png', music: 'number_nine_sound.mp3'),
    Model(jPName: '', enName: 'Ten', image: 'assets/images/numbers/number_ten.png', music: 'number_ten_sound.mp3'),
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
    color:const Color(0xFFA76420), idSing: 'numbers',)),
    );
  }
}


