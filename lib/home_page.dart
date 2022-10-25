import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:phone_app/search.dart';
import 'package:phone_app/setting.dart';
import 'package:phone_app/utils/my_Image.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool istrue = false;

  var formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            systemOverlayStyle:
                SystemUiOverlayStyle(statusBarColor: Colors.black),
                bottom: TabBar(
                  tabs: [
                    Tab(text: 'first',),
                    Tab(text: 'son',)

                  ]),
                ),
            
        body: TabBarView(children: [
          MyWidget(),
          MyWidget1()
        ],)
      ),
    );
  }
}
