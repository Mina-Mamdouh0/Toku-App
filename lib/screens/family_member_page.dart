
import 'package:flutter/material.dart';
import 'package:toku/component/item.dart';
import 'package:toku/model/model.dart';


class FamilyMemberScreen extends StatelessWidget {
  FamilyMemberScreen({Key? key}) : super(key: key);

  List<Model> list=[
    Model(jPName: 'Musume', enName: 'Daughter', image: 'assets/images/family_members/family_daughter.png', music: 'daughter.wav'),
    Model(jPName: 'Chichioya', enName: 'Father', image: 'assets/images/family_members/family_father.png', music: 'father.wav'),
    Model(jPName: 'Ojisan', enName: 'Grand Father', image: 'assets/images/family_members/family_grandfather.png', music: 'grand father.wav'),
    Model(jPName: 'Sobo', enName: 'Grand Mother', image: 'assets/images/family_members/family_grandmother.png', music: 'grand mother.wav'),
    Model(jPName: 'Nisan', enName: 'Older Brother', image: 'assets/images/family_members/family_older_brother.png', music: 'older bother.wav'),
    Model(jPName: 'Ana', enName: 'Older Sister', image: 'assets/images/family_members/family_older_sister.png', music: 'older sister.wav'),
    Model(jPName: '', enName: 'Son', image: 'assets/images/family_members/family_son.png', music: 'son.wav'),
    Model(jPName: '', enName: 'Younger Brother', image: 'assets/images/family_members/family_younger_brother.png', music: 'younger brohter.wav'),
    Model(jPName: '', enName: 'Younger Sister', image: 'assets/images/family_members/family_younger_sister.png', music: 'younger sister.wav'),
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
            color:const Color(0xFF385622), idSing: 'family_members' ,)),
    );
  }
}


