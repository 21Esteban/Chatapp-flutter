
import 'package:flutter/material.dart';

class MyMessageBubble extends StatelessWidget{
  const MyMessageBubble({super.key});

  @override
  Widget build(BuildContext context){

    //con esto lo que le dcimos es que busque el color del coontexto que definimos en nuestro appTheme y ese color se lo damos a el BoxDecoration
    final colors = Theme.of(context).colorScheme;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration:  BoxDecoration(
            color: colors.primary,
            borderRadius: BorderRadius.circular(20)
          ),
          child:const Padding(
            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 10),
            child: Text("hola como estas mi bro",style: TextStyle(color: Colors.white),),
          ),
        ),
        const SizedBox(height: 10)
      ],
    );
  }
}