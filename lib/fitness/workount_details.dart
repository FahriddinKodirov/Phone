

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:phone_app/fitness/workout.dart';
import 'package:phone_app/utils/my_Image.dart';

class WorkoutDatails extends StatefulWidget {
  var foto;
  var word;
  var time;
 WorkoutDatails({super.key, 
                  this.foto,
                  this.word,
                  this.time,
                  });

  @override
  State<WorkoutDatails> createState() => _WorkoutDatailsState();
}

class _WorkoutDatailsState extends State<WorkoutDatails> {
 
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
        elevation: 0,
        flexibleSpace: Container(decoration: BoxDecoration(
              gradient: LinearGradient(
                
                colors: [Color(0xFF9AC3FE), Color(0xFF92A3FD)])
            ),)
      ),
      
      
      body: SingleChildScrollView(
        child: SizedBox(
          height: 1850,
          child: Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height,
                width:  MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    
                    colors: [Color(0xFF9AC3FE), Color(0xFF92A3FD)])
                )),
                
                    Positioned(
                      top: -90,
                      left: -20,
                      child: Image.asset(MyImage.foto10,width: 450,)),
                    Positioned(
                      top: 320,
                      child: 
                    
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color(0xFFFFFFFF),
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40))
                        ),
                        child: Column(children: [
                          SizedBox(height: 10,),
                            Container(
                             height: 5,
                             width: 80,
                               color: Color(0xFFE8E8E8),
                  ),
                        Stack(
                          children: [
                            Container(
                              height: 90,
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.only(top: 30, left: 28),
                      child: Text(widget.word,style: TextStyle(fontSize: 18,
                            fontWeight: FontWeight.w800),),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              padding: EdgeInsets.only(top: 60, left: 25),
                      child: Text(widget.time,style: TextStyle(fontSize: 16,
                            fontWeight: FontWeight.w400, color: Colors.black45),),
                            ),
                            Positioned(
                              left: 320,
                              top: 15,
                              child: SvgPicture.asset(MyImage.love),)

                          ],
                        ),
                        SizedBox(height: 20,),
                        Container(
                        padding: EdgeInsets.all(15),
                         height: MediaQuery.of(context).size.height*0.07,
                         width: MediaQuery.of(context).size.width*0.90,
                           decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          gradient: LinearGradient(
                
                     colors: [Color(0xFFEBF3FF), Color(0xFFE9EEFF)])
            ),
              child: Row(
                children: [
                  Container(
                    child: SvgPicture.asset(MyImage.kalendar),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    child: Text('Schedule Workout'),),
                  Container(
                    padding: EdgeInsets.only(left: 75),
                    child: Text('5/27, 09:00 AM'),),
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    child: SvgPicture.asset(MyImage.angle),)
                
              ],),
                
                  ),
                  SizedBox(height: 15,),
                  Container(
                        padding: EdgeInsets.all(15),
                         height: MediaQuery.of(context).size.height*0.07,
                         width: MediaQuery.of(context).size.width*0.90,
                           decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          gradient: LinearGradient(
                
                     colors: [Color(0xFFF9EBE7), Color(0xFFF4E8FC)])
            ),
              child: Row(
                children: [
                  Container(
                    child: SvgPicture.asset(MyImage.kalendar),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    child: Text('Schedule Workout'),),
                  Container(
                    padding: EdgeInsets.only(left: 75),
                    child: Text('5/27, 09:00 AM'),),
                  Container(
                    padding: EdgeInsets.only(left: 15),
                    child: SvgPicture.asset(MyImage.angle),)
                
              ],),
                
                  ),
                    SizedBox(height: 35,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Container(
                    padding: EdgeInsets.only(left: 30),
                    child: Text('You’ll Need', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 28),
                    child: Text('5 utems', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: 
                    Colors.black26),),
                  )
                ],),
                SizedBox(height: 10,),
                Container(
                  padding: EdgeInsets.only(left: 10),
                  height: MediaQuery.of(context).size.height*0.28,
                  width: MediaQuery.of(context).size.width,
                  child: ListView(
                    shrinkWrap: true,
                    primary: false,
                    scrollDirection: Axis.horizontal,
                    children: [
                      manu(MyImage.tosh, 'Barbell'),
                      manu(MyImage.argamchi, 'Skipping Rope'),
                      manu(MyImage.bottle, 'Bottle 1 Liters'),
                    ]),
                ),
                
                SizedBox(height: 30,),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  Container(
                    padding: EdgeInsets.only(left: 30),
                    child: Text('Exercises', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),),
                  ),
                  Container(
                    padding: EdgeInsets.only(right: 28),
                    child: Text('3 Sets', style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700, color: 
                    Colors.black26),),
                  )
                ],),
                SizedBox(height: 25,),
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 30),
                  child: Text('Set 1', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),),
                 picture(MyImage.photo1,'Warm Up','05:00'),
                 picture(MyImage.photo2,'Jumping Jack','12x'),
                 picture(MyImage.photo3,'Skipping','15x'),
                 picture(MyImage.photo4,'Squats','20x'),
                 picture(MyImage.photo5,'Arm Raises','00:53'),
                 picture(MyImage.photo6,'Rest and Drink','02:00'),
                 SizedBox(height: 25,),
                 Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(left: 30),
                  child: Text('Set 1', style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),),),
                 picture(MyImage.photo7,'Incline Push-Ups','12x'),
                 picture(MyImage.photo8,'Push-Ups','15x'),
                 Start(context),
                 picture(MyImage.photo5,'Cobra Stretch','15x'),
                 
                        ]
                        ),
                        
                        )
                        )

                 
               
              
            ]
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>WorkoutDatails() ));
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
  Widget manu(shtanga, word){
    return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                  Container(
                    margin: EdgeInsets.all(15),
                    height: MediaQuery.of(context).size.height*0.2,
                    width: MediaQuery.of(context).size.width*0.42,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      
                      borderRadius: BorderRadius.circular(12)
                    ),child: Container(
                      padding: EdgeInsets.all(35),
                      child: SvgPicture.asset(shtanga)),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.only(left: 20),
                    child: Text(word,style: TextStyle(color: Colors.black,fontSize: 17),),)

                  
                ]);
  }
Widget picture(foto, word, time){
  return Container(
                  margin: EdgeInsets.only(left: 12, top: 15, right: 15),
                   child: ListTile(
                    onTap: (() {}),
                    leading: Image.asset(foto),
                      title: Text(word),
                      subtitle: Text(time),
                      trailing: SvgPicture.asset(MyImage.angle),
                      

                      ),
                 );
}
Widget Start(context){
    return InkWell(onTap: (() {}),
      child: Container(
                margin: EdgeInsets.only(left: 20, right: 20,top: 15 ),
                height: MediaQuery.of(context).size.height*0.085,
                width: MediaQuery.of(context).size.width*0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                   gradient: LinearGradient(
              
              colors: [Color(0xFF9AC3FE), Color(0xFF92A3FD)])
          
        
                ),
                child: Center(child: Text('Start Workout', style: TextStyle(fontSize: 20, color: Colors.white),)),
                
              ),
    );
  }

}