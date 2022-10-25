import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:phone_app/fitness/login_page.dart';
import 'package:phone_app/fitness/workout.dart';
import 'package:phone_app/utils/my_Image.dart';

class LoginPage extends StatefulWidget {
  LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isTrue = false;
  var formkey = GlobalKey<FormState>();
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
      systemOverlayStyle: SystemUiOverlayStyle(
      statusBarColor: Color(0xFFFFFFFF)),
        backgroundColor: Color(0xFFFFFFFF),
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(left: 100,),
          child: Text('Hey there,', style: TextStyle(fontSize: 20, color: Colors.black),),
        ),
      ),
      backgroundColor: Color(0xFFFFFFFF),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
            
              
              Container(
                child: Text('Welcome Back', style: TextStyle(fontSize: 25,
                fontWeight: FontWeight.w900),),
              ),
              SizedBox(height: 10,),
            Container(
              child: Form(
                key: formkey,
                child: Column(
                  children: [
                    
                Container(
                       margin: EdgeInsets.only(left: 25, right: 25,top: 15 ),
              height: MediaQuery.of(context).size.height*0.070,
              width: MediaQuery.of(context).size.width*0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.grey.withOpacity(0.1),
      
              ),
              child: TextFormField(
                validator: (value) {
                 if(value!.length < 5){
                  return '3 tadan koproq soz kiriting';
                 }
                },
              
              style: TextStyle(fontSize: 25),
              
              decoration: InputDecoration(
                
                hintText: 'Email',
                hintStyle: TextStyle(fontSize: 20, color: Colors.black38),
                border: InputBorder.none,
                prefixIcon: Container(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  child: SvgPicture.asset(MyImage.sms)))),
                    ),
                Container(
                       margin: EdgeInsets.only(left: 25, right: 25,top: 15 ),
              height: MediaQuery.of(context).size.height*0.070,
              width: MediaQuery.of(context).size.width*0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.grey.withOpacity(0.1),
      
              ),
              child: TextFormField(
                obscureText: isOn,
                keyboardType: TextInputType.number,
                validator: (value) {
                 if(value!.length < 3){
                  return '8 tadan koproq soz kiriting';
                 }
                },
              
              style: TextStyle(fontSize: 25),
              
              decoration: InputDecoration(
                suffixIcon: IconButton(icon: isOn? Icon(Icons.visibility_off):Icon(Icons.visibility),
                onPressed: (){
                  setState(() {
                   isOn = !isOn; 
                  });
                  
                }),
                hintText: 'Password',
                
                hintStyle: TextStyle(fontSize: 20, color: Colors.black38),
                border: InputBorder.none,
                prefixIcon: Container(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  child: SvgPicture.asset(MyImage.qulf)))),
                    ),
                
                
                  ],
                )),
            ),
              SizedBox(height: 10,),
              Container(child: Text('Forgot your password?', style: TextStyle(color: 
              Colors.black38),)),
              SizedBox(height:200,),
              register(context),
              SizedBox(height: 30,),
              Container(child: SvgPicture.asset(MyImage.or)),
              SizedBox(height: 10,),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 100),
                    child: logo(context, MyImage.google),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 70),
                    child: logo(context,MyImage.facebook),
                  ),
                ],
              ),
              SizedBox(height: 30,),
              Container(child: Text('Don’t have an account yet? Register',style: TextStyle(fontSize: 17),)),
              SizedBox(height: 30,)
            ],
          ),
        ),
      ),
    );

  }

  Widget login(context, man, word){
    return Container(
              margin: EdgeInsets.only(left: 25, right: 25,top: 15 ),
              height: MediaQuery.of(context).size.height*0.070,
              width: MediaQuery.of(context).size.width*0.9,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                color: Colors.grey.withOpacity(0.1),
      
              ),
              child: TextFormField(
                validator: (value) {
                 if(value!.length < 3){
                  return '3tadan koproq soz kiriting';
                 }
                },
              textInputAction:TextInputAction.next,
              style: TextStyle(fontSize: 25),
              
              decoration: InputDecoration(
                
                hintText: word,
                hintStyle: TextStyle(fontSize: 20),
                border: InputBorder.none,
                prefixIcon: Container(
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 12),
                  child: SvgPicture.asset(man,)),
                
                


               )
              )
              
            );
             }
   Widget register(context){
    return InkWell(onTap: (() {
      if(formkey.currentState?.validate() == true){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> Workout()));
      }
      
      
    }),
      child: Container(
                margin: EdgeInsets.only(left: 20, right: 20,top: 15 ),
                height: MediaQuery.of(context).size.height*0.085,
                width: MediaQuery.of(context).size.width*0.9,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                   gradient: LinearGradient(
              
              colors: [Color(0xFF9AC3FE), Color(0xFF92A3FD)])
          
        
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 150),
                      child: SvgPicture.asset(MyImage.login),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text('login', style: TextStyle(fontSize: 20, color: Colors.white),),
                    ),
                  ],
                ),
                
              ),
    );
  }
 Widget logo(context, facebook){
    return Container(
              margin: EdgeInsets.only(left: 20, right: 20,top: 15 ),
              height: MediaQuery.of(context).size.height*0.078,
              width: MediaQuery.of(context).size.width*0.16,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black26),
                borderRadius: BorderRadius.circular(18),
                color: Color(0xFFFFFFFF),
      
              ),
              child: Padding(
                padding: const EdgeInsets.all(18),
                child: Image.asset(facebook),
              ),
              
            );
             }
}
