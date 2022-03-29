
import 'package:flutter/material.dart';
import 'package:toku/component/catagory.dart';
import 'package:toku/screens/mumbers_page.dart';
import 'package:toku/screens/phrases_page.dart';

import 'color_page.dart';
import 'family_member_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color(0xFFABA492),
      appBar: AppBar(
        title: const Text('Toku'),
        backgroundColor:const Color(0xFF31221B),
      ),
      body: Column(
        children: [
          CategoryItem(
            onTap: (){
              Navigator.push(context,
              MaterialPageRoute(builder: (context)=> NumbersScreen()));
            },
             color:const Color(0xFFA76420) ,
            text: 'Numbers',
          ),
          CategoryItem(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> FamilyMemberScreen()));
            },
            color:const Color(0xFF385622) ,
            text: 'Family Members',
          ),
          CategoryItem(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> ColorsScreen()));
            },
            color:const Color(0xFF542B6D) ,
            text: 'Colors',
          ),
          CategoryItem(
            onTap: (){
              Navigator.push(context,
                  MaterialPageRoute(builder: (context)=> PhrasesScreen()));

            },
            color:const Color(0xFF2F6F88) ,
            text: 'Phrases',
          ),

        ],
      ),
    );
  }
}


