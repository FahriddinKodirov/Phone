import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:phone_app/fitness/register.dart';
import 'package:phone_app/utils/my_Image.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
     
      body: InkWell(
        onTap: (() {
          Navigator.push(context, MaterialPageRoute(builder: (context)=> Register()));
        }),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              
              colors: [Color(0xFF9AC3FE), Color(0xFF92A3FD)])
          ),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Image.asset(MyImage.fitness,width: 250,),
        ),
      ),
      
    );
  }
}