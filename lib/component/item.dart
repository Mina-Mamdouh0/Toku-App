import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:toku/model/model.dart';

class ItemList extends StatelessWidget {
final Model item;
final Color color;
final String idSing;
const ItemList({
    required this.item,
    required this.color,

    Key? key, required this.idSing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color:  color ,
      child: Row(
        children: [
          Container(
              color: const Color(0xFFABA492),
              child: Image.asset(item.image!)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.jPName,
                  style:const TextStyle(
                      color: Colors.white,fontSize: 18
                  ),),
                Text(item.enName,
                  style: const TextStyle(
                      color: Colors.white,fontSize: 18
                  ),),

              ],
            ),
          ),
          const Spacer(),
          Padding(padding:const EdgeInsets.only(
            right: 16,
          ),
            child: IconButton(
              icon:const Icon(Icons.play_arrow,color: Colors.white,),
              onPressed: (){
                AudioCache player = AudioCache(
                    prefix: 'assets/sounds/$idSing/');
                player.play(item.music);
              },
            ),)

        ],
      ),
    );
  }
}

class PharsesList extends StatelessWidget {
  final Model item;

  const PharsesList({
    required this.item,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color:  const Color(0xFF2F6F88) ,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item.jPName,
                  style:const TextStyle(
                      color: Colors.white,fontSize: 18
                  ),),
                Text(item.enName,
                  style: const TextStyle(
                      color: Colors.white,fontSize: 18
                  ),),

              ],
            ),
          ),
          const Spacer(),
          Padding(padding:const EdgeInsets.only(
            right: 16,
          ),
            child: IconButton(
              icon:const Icon(Icons.play_arrow,color: Colors.white,),
              onPressed: (){
                AudioCache player = AudioCache(
                    prefix: 'assets/sounds/phrases/');
                player.play(item.music);
              },
            ),)

        ],
      ),
    );
  }
}