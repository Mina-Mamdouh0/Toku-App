
import 'package:flutter/material.dart';
import 'package:toku/component/item.dart';
import 'package:toku/model/model.dart';


class PhrasesScreen extends StatelessWidget {
  PhrasesScreen({Key? key}) : super(key: key);

  List<Model> list=[
    Model(jPName: '', enName: 'Are You Coming',  music: 'are_you_coming.wav'),
    Model(jPName: '', enName: 'Don\'t Forget To Subscribe', music: 'dont_forget_to_subscribe.wav'),
    Model(jPName: '', enName: 'How Are You Feeling', music: 'how_are_you_feeling.wav'),
    Model(jPName: '', enName: 'I Love Anime', music: 'i_love_anime.wav'),
    Model(jPName: '', enName: 'I Love Programming', music: 'i_love_programming.wav'),
    Model(jPName: '', enName: 'Programming Is Easy', music: 'programming_is_easy.wav'),
    Model(jPName: '', enName: 'What Is Your Name', music: 'what_is_your_name.wav'),
    Model(jPName: '', enName: 'Where Are You Going', music: 'where_are_you_going.wav'),
    Model(jPName: '', enName: 'Yes Im Coming', music: 'yes_im_coming.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('phrases'),
        backgroundColor:const Color(0xFF31221B),
      ),
      body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context,index)=>PharsesList(item: list[index],),
    ));
  }
}


