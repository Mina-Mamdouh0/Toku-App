
import 'package:flutter/material.dart';

class CategoryItem extends StatelessWidget {
  String? text;
  Color? color;
  Function()? onTap;
  CategoryItem({
    Key? key,
    this.text,
    this.onTap,
    this.color
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onTap,
      child: Container(
        padding:const EdgeInsets.symmetric(horizontal: 20),
        color: color,
        height: 65,
        width: double.infinity,
        alignment: Alignment.centerLeft,
        child: Text(text!,
          style:const TextStyle(
              fontSize: 18,
              color: Colors.white
          ),),
      ),
    );
  }
}