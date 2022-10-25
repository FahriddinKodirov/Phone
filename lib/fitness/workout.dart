import 'dart:ffi';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/parser.dart';
import 'package:flutter_svg/svg.dart';
import 'package:phone_app/fitness/workount_details.dart';
import 'package:phone_app/fitness/workout_details2.dart';
import 'package:phone_app/utils/my_Image.dart';

class Workout extends StatefulWidget {
  const Workout({super.key});

  @override
  State<Workout> createState() => _WorkoutState();
}

class _WorkoutState extends State<Workout> {
  bool isTrue = false;
  bool isFalse = false;
  bool see = false;
  String narsa = 'see more';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: InkWell(
              onTap: (() {
                
              }),
              child: SvgPicture.asset(MyImage.setting)),
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.all(12),
          child: InkWell(
            onTap: (() {
              Navigator.pop(context);
            }),
            child: SvgPicture.asset(MyImage.back,width: 30,)),
        ),
        title: Center(child: Text('Workout Tracker')),
        elevation: 0,
        flexibleSpace: Container(decoration: BoxDecoration(
              gradient: LinearGradient(
                
                colors: [Color(0xFF9AC3FE), Color(0xFF92A3FD)])
            ),)
      ),
      
      
      body: SingleChildScrollView(
        child: SizedBox(
          height: 1315,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width:  MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                
                colors: [Color(0xFF9AC3FE), Color(0xFF92A3FD)])
            ),
            child: Column(
              children: [
                SizedBox(height: 10,),
                SvgPicture.asset(MyImage.graph,width: 350,),
                SizedBox(height: 30,),
              Container(
                
                decoration: BoxDecoration(
                  color: Color(0xFFFFFFFF),
                  borderRadius: BorderRadius.only(topRight: Radius.circular(50),topLeft: Radius.circular(50))
                ),
                child: Column(children: [
                  SizedBox(height: 10,),
                  Container(
                    height: 5,
                    width: 80,
                    color: Color(0xFFE8E8E8),
                  ),
                  SizedBox(height: 30,),
                  Container(
                    padding: EdgeInsets.all(15),
                    height: MediaQuery.of(context).size.height*0.078,
                    width: MediaQuery.of(context).size.width*0.85,
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                     gradient: LinearGradient(
                
                     colors: [Color(0xFFEBF3FF), Color(0xFFE9EEFF)])
            ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                Text('Daily Workout Schedule', style: TextStyle(fontSize: 18),),
                Container(
                    
                    height: MediaQuery.of(context).size.height*0.038,
                    width: MediaQuery.of(context).size.width*0.15,
                     decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                     gradient: LinearGradient(
                
                     colors: [Color(0xFF9AC3FE), Color(0xFF92A3FD)])
            )         ,child: Center(child: Text('Check',style: TextStyle(color: Colors.white),)),)
              ],),
                
                  ),
                  SizedBox(height: 35,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Container(
                    padding: EdgeInsets.only(left: 30),
                    child: Text('Upcoming Workout', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 28),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          see = !see;
                         
                        });
                      },
                      child: Text(see?'not see more':narsa, style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: 
                      Colors.black26),),
                    ),
                  )
                ],),
                SizedBox(height: 25,),
                
                Container(
                    padding: EdgeInsets.all(15),
                    height: MediaQuery.of(context).size.height*0.12,
                    width: MediaQuery.of(context).size.width*0.85,
                     decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                        color: Colors.grey.shade100,
                        offset: Offset(1,1),
                        blurRadius: 20,
                        spreadRadius: 20,
                        
                        )
                      ],
                      borderRadius: BorderRadius.circular(18),
                     color: Color(0xFFFFFFFF)
            ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                
                Container(

                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                  shape: BoxShape.circle,
                   gradient: LinearGradient(
                
                 colors: [Color(0xFFE0ECFF), Color(0xFFDFE6FF)])
            )     ,
                  child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Image.asset(MyImage.foto1),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 48, top: 12),
                  child: Column(children: [
                    Text('Fullbody Workout'),
                    SizedBox(height: 8,),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text('Today, 03:00pm', style: TextStyle(color: Colors.black38),),
                    ),
                    
                  ],),
                ),
                Switch.adaptive(
                  activeTrackColor: Color(0XFFD897E1),
                  activeColor: Colors.white,
                  
                  value: isTrue, onChanged: (value){
                   setState(() {
                     isTrue = !isTrue;
                   });
                  },
                  )
              ],)
                
                  ),
                SizedBox(height: 15,),
                  Container(
                    padding: EdgeInsets.all(15),
                    height: MediaQuery.of(context).size.height*0.12,
                    width: MediaQuery.of(context).size.width*0.85,
                     decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                        color: Colors.grey.shade100,
                        offset: Offset(1,1),
                        blurRadius: 20,
                        spreadRadius: 20,
                        
                        )
                      ],
                      borderRadius: BorderRadius.circular(18),
                     color: Color(0xFFFFFFFF)
            ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                
                Container(

                  height: 70,
                  width: 70,
                  decoration: BoxDecoration(
                  shape: BoxShape.circle,
                   gradient: LinearGradient(
                
                 colors: [Color(0xFFE0ECFF), Color(0xFFDFE6FF)])
            )     ,
                  child: Container(
                    margin: const EdgeInsets.only(top: 10),
                    child: Image.asset(MyImage.foto2),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(right: 48, top: 12),
                  child: Column(children: [
                    Text('Upperbody Workout'),
                    SizedBox(height: 8,),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Text('June 05, 02:00pm', style: TextStyle(color: Colors.black38),),
                    ),
                    
                  ],),
                ),
                Switch.adaptive(
                  activeTrackColor: Color(0XFFD897E1),
                  activeColor: Colors.white,
                  
                  value: isFalse, onChanged: (value){
                   setState(() {
                     isFalse = !isFalse;
                   });
                  },
                  )
              ],)
                
                  ),
  

                see?Container(
                alignment: Alignment.centerLeft,  
                padding: EdgeInsets.only(left: 35,top: 30),
                child: Text('What Do You Want to Train',style: TextStyle(fontSize: 20,
                fontWeight: FontWeight.w800),),):Container(
                  height: 543,
                  width: double.infinity,
                  color: Color(0xFFFFFFFF),
                ),
                SizedBox(height: 30,),
                see?stuff3(MyImage.foto5,'Fullbody Workout', '11 Exercises | 32mins',):Container(),
                SizedBox(height: 20,),
                see?stuff2(MyImage.foto6,'Lowebody Workout', '12 Exercises | 40mins',):Container(),
                SizedBox(height: 20,),
                see?stuff2(MyImage.foto7,'AB Workout', '14 Exercises | 20mins' ):Container(),
                SizedBox(height: 20,),
                
                ]),
                
              )
              ],
            ),
          ),
        ),
      ),
    );
  }
  

  Widget stuff2(foto, word, time){
    return  Container(
                    padding: EdgeInsets.only(right: 15,top: 15),
                    height: MediaQuery.of(context).size.height*0.2,
                    width: MediaQuery.of(context).size.width*0.85,
                     decoration: BoxDecoration(
                     
                      borderRadius: BorderRadius.circular(18),
                     gradient: LinearGradient(
                
                     colors: [Color(0xFFEBF3FF), Color(0xFFE9EEFF)]),
            
                      boxShadow: [
                        BoxShadow(
                        color: Colors.grey.shade100,
                        offset: Offset(1,1),
                        blurRadius: 20,
                        spreadRadius: 20,
                        
                        )
                      ],
                      
                     color: Color(0xFFFFFFFF)
            ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                
                
                Container(
                  padding: EdgeInsets.only(right: 20, top: 12),
                  child: Column(children: [
                    Stack(children: [
                      Container(
                        
                        height: 70,
                        width: 180,
                      ),
                      Positioned(
                        left: 20,
                      child: Text(word, style: TextStyle(fontSize: 18),),
                    ),
                    Positioned(
                      top: 30,
                      left: 20,
                      child: Text(time, style: TextStyle(color: Colors.black38,
                      fontSize: 16),))
                    ],),
                    
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: InkWell(
                        onTap: (() {
                          
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> WorkoutDatails2(foto: foto,word: word,time: time)));
                        }),
                        child: Container(
                          height: 45,
                          width: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white
                          ),
                          child: Center(child: Text('View more')),
                        ),
                      ),
                    )
                    
                  ],),
                ),
                Container(
                child: Image.asset(foto, width: 120,),)
              ],)
                
                  );
                
  }
  Widget stuff3(foto, word, time){
    return  Container(
                    padding: EdgeInsets.only(right: 15,top: 15),
                    height: MediaQuery.of(context).size.height*0.2,
                    width: MediaQuery.of(context).size.width*0.85,
                     decoration: BoxDecoration(
                     
                      borderRadius: BorderRadius.circular(18),
                     gradient: LinearGradient(
                
                     colors: [Color(0xFFEBF3FF), Color(0xFFE9EEFF)]),
            
                      boxShadow: [
                        BoxShadow(
                        color: Colors.grey.shade100,
                        offset: Offset(1,1),
                        blurRadius: 20,
                        spreadRadius: 20,
                        
                        )
                      ],
                      
                     color: Color(0xFFFFFFFF)
            ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                
                
                Container(
                  padding: EdgeInsets.only(right: 20, top: 12),
                  child: Column(children: [
                    Stack(children: [
                      Container(
                        
                        height: 70,
                        width: 180,
                      ),
                      Positioned(
                        left: 20,
                      child: Text(word, style: TextStyle(fontSize: 18),),
                    ),
                    Positioned(
                      top: 30,
                      left: 20,
                      child: Text(time, style: TextStyle(color: Colors.black38,
                      fontSize: 16),))
                    ],),
                    
                    SizedBox(height: 5,),
                    Padding(
                      padding: const EdgeInsets.only(right: 40),
                      child: InkWell(
                        onTap: (() {
                          
                          Navigator.push(context, MaterialPageRoute(builder: (context)=> WorkoutDatails(foto: foto,word: word,time: time)));
                        }),
                        child: Container(
                          height: 45,
                          width: 110,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            color: Colors.white
                          ),
                          child: Center(child: Text('View more')),
                        ),
                      ),
                    )
                    
                  ],),
                ),
                Container(
                child: Image.asset(foto, width: 120,),)
              ],)
                
                  );
                
  }
  

}