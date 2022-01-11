import 'package:flutter/material.dart';
import 'package:counter/text.dart';
import 'package:counter/Avatar.dart';

class info extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          width: double.infinity,
          color: Colors.white,
          child: Column(
            children: [
              SizedBox(height: 30,),                                             //виджет изображения
              avatar(),                                                          //сделали обертки,аватар и текст поместили в отдельные классы чтобы тут было читабельно,и просто вставили название класса
              SizedBox(height: 30,),                                             //виджет по тиру container только имеет больше возможностей, тут он просто создает пустое пространство между объектами
              email(),
              SizedBox(height: 7,),
              number(),
              SizedBox(height: 7,),
              id(),
            ],
          ),
        ),
        Positioned(
            top:20,
            right:20,
            child:
              Text(
                "Изменить",
                style: TextStyle(color: Colors.blue),

              ),
        ),
      ]
    );
  }
}
