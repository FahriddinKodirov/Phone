// 1 appbar(): flexibleSpace: ---> appbarni tepasidagi joyni
// ozgartirish 

// 2 decoration: BoxDecoration(
//  image: DecorationImage(image: AssetImage(MyImage.foto12))) --->
// orqa fonga surat qoyish

// 3 appBar: AppBar(
      // systemOverlayStyle: SystemUiOverlayStyle(
      // statusBarColor: Colors.black)), --->  appbarni tepasidagi joyga 
      // rang berish

// 4 @override
//   Widget build(BuildContext contexrt) {
//     return ScreenUtilInit(
//       designSize: const Size(375, 771.5),
//       minTextAdapt: true,
//       splitScreenMode: true,
//       builder: (BuildContext context, Widget? child) {
//         return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(),
//       home: child);
//   },
//   child: All_product1()
//     );
//   }
// } ---> hamma telfonga tushadigan qilib razmer qoyish,
// h, w, fontsize.sp, (pad..,mar...).r
// http: pub.dev/packages/flutter_screenutil

// 5 Container(
              // height: 155,
              // width: 370,
              // child: ListView(
              //   scrollDirection: Axis.horizontal,
              //   children: [
              //     buildNearestRestaurantTime(
              //         MyImages.Image_vegan,
              //         'Vegan Resto',
              //         '12 Mins'),
              //   ],
             // )),

// 5 GestureDetector(
        //   onTap: () {
        //     FocusScopeNode currentFocus = FocusScope.of(context);
        //     if(!currentFocus.hasPrimaryFocus){
        //       currentFocus.unfocus();
        //     }
        //   },
        // child:MaterialApp();---> inputda ochib yonib turadigan 
        //  tayoqchani ochirish

// 6 class MyThemes{
//   static final themeLight = ThemeData(
//         scaffoldBackgroundColor: Color(0xFFFFFFFF),
//         appBarTheme: AppBarTheme(color: Colors.blue),
//         primarySwatch: Colors.blue,
//         brightness: Brightness.light,
//         textTheme: TextTheme(headline1: TextStyle(color: Colors.black)),
//       );
//   static final themeDark = ThemeData(
//           brightness: Brightness.dark,
//           appBarTheme: AppBarTheme(
//           backgroundColor: Colors.black
//           ),
//           backgroundColor: Color(0xFF0D0D0D)
//           scaffoldBackgroundColor: Colors.black,
//           textTheme: TextTheme(headline1: TextStyle(color: Colors.white)),
//         );
// }
// child:MaterialApp(
      //   debugShowCheckedModeBanner: false,
      //   title: 'bu title edi',
      //   themeMode: ThemeMode.light,
      //   darkTheme: MyThemes.themeDark,
      //   theme: MyThemes.themeLight,
      // home: child
// backgroundColor: Theme.of(context).scaffoldBackgroundColor ---> Scaffolda yoziladi
// ---> qora sivetga otkazish
// Container(
          // color: Theme.of(context).brightness == Brightness.dark
          //     ? Colors.black
          //     : myColors.C_FEFEFF, ---> hamma sivetga beriladi

// 7 
//flutter:
//  fonts:
      // - family: BentonSans
      //   fonts:
      //     - asset: assets/fonts/BentonSansBold.ttf
      //       weight: 700
      //     - asset: assets/fonts/BentonSansBook.ttf
      //       weight: 400
      // - family: Nabla
      //   fonts:
      //     - asset: assets/fonts/Nabla-Regular.ttf
      // - family: Satisfy
      //   fonts:
      //     - asset: assets/fonts/Satisfy-Regular.ttf
      // - family: Handlee
      //   fonts:
      //     - asset: assets/fonts/Handlee-Regular.ttf
// assets/fonts ni ichiga .ttf sini kochirib qoyish kerak

// 8 floatingActionButton: Platform.isAndroid ? floatingActionButton
// (onPressed: (){}, child:): Container ---> androidda borligini tekshirish
//  import "dart:ion" show Platfrom. isIOS degan sozni isAndroid bilan
//  ozgartirib qoyilsa boldi

// 9 Container(
              // child: Switch.adaptive(
              //   value: istrue, onChanged: (value){
              //    setState(() {
              //      istrue = !istrue;
              //    });
              //   })), ---> ochib yonadigan kinopka
// 10 Container(
              // child: Checkbox(
              //   value: istrue, onChanged: (value){
              //    setState(() {
              //      istrue = !istrue;
              //    });
              //   })), ---> ish bajarilsa ptichka qoyib qoyadigan
// 11  ListTile(
            //   onTap: (() {}),
            //   title: Text('salom'),
            // ) ---> Drawer page ni funksiyasi lekin hohlagan
            //  page da ishlatsa boladi
// 12 CircleAvatar(
                // backgroundImage: AssetImage(MyImage.foto12)),
                // ---> suratni tumaloq qilib beradi
// 13 GridView.builder(
// scrollDirection: Axis.vertical
// gridDelegate:
//     SliverGridDelegateWithFixedCrossAxisCount(corssAxisCount: 3),
// itemCount: 100,
// itemBuilder:(BuilderContext context, int index){
// return}), ---> bir hil razmerda narsalarni kopaytirish
// 14 floatingActionButton: FloatingActionButton(onPressed: (() {
      //   showDialog(
      //     context: context, 
      //     builder: (((context) => AlertDialog(
      //       title: Text('bu title'),
      //     ))));
      // }),) ---> biron narsadan chiqmoqchi bolganda soraladigan 
      // narsa (exit(0))
// 15 floatingActionButton: FloatingActionButton(onPressed: (() {
      //   var snack = SnackBar(
      //             action: SnackBarAction(onPressed: () {},label: 
      //             'Tushinarli',),
      //             content: Text('bu yerda nmadur bor'));
               
      //           ScaffoldMessenger.of(context).showSnackBar(snack);
      // }),) ---> pasdan chiqadigan yozuv
// 16 body: WillPopScope(
          // onWillPop: onWillPop,
          // child: Container()
//?  tagidag bu funksiya:
// int backPressCounter = 0;
// int backPressTotal = 2;

//   Future<bool> onWillPop() {
//     if (backPressCounter < 1) {
//       var snack = SnackBar(
//             action: SnackBarAction(onPressed: () {},label: 
//               'Tushinarli',),
//             content: Text('yana bir marta qaytaring'));
               
//     Scaff
//     oldMessenger.of(context).showSnackBar(snack);
//       backPressCounter++;
//       Future.delayed(Duration(seconds: 1, milliseconds: 500), () {
//         backPressCounter--;
//       });
//       return Future.value(false);
//     } else {
//       return Future.value(true);
//     }
// } ---> ikki marta bossi bolni chiqin ketish

// 17 Container(
            //   height: 100,
            //   width: 100,
            //   decoration: BoxDecoration(
            //     gradient: LinearGradient(RadialGradient)(SweepGradient)(
            //       colors: [
            //         Colors.black,
            //         Colors.blue
            //       ])
            //   ),
            // ), ---> ranglarni aralashmasi
// 18 TextField(
//               decoration: InputDecoration(
//                )) ---> korib chiqish kerak

// 19 buil ni tepasiga -- var formkey = GlobalKey<FormState>();
// 
// Container(
            //   child: Form(
            //     key: formkey,
            //     child: Column(
            //       children: [
            //         TextFormField(validator: (value) {
                      
            //         },),
            //         TextFormField(validator: (value) {
                      
            //         },),
            //       ],
            //     )),
            // ) ---> bir nechta bolsa Form ni ichida yozish kerak
// Flutter 8 video 1:30 soat

// 20  buil ni tepasiga -- var  selectedindex = 0;
  // List<Widget> _pages = [
  //   MyHomePage(),
  // ]; 

//body: _pages[selectedindex],
      // bottomNavigationBar: BottomNavigationBar(
      //   onTap: ((index) {
      //     setState(() {
      //       selectedindex = index;
      //     });
      //   }),
      //   currentIndex: selectedindex,
      //   items: [
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.home),
      //       label: 'home',),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.search),
      //       label: 'search',),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.settings),
      //       label: 'setting',),
      //   ],) 
// 21  buil ni tepasiga -- var int Index = 0;
  //  List<Widget> _page = [
  //   instagram2(),
  //   insSearch(),
  //   insVideo(),
  //   favorite(),
  //   instprofile(),
  // ];

  // body: _page[Index],
  //     bottomNavigationBar: BottomNavigationBar(
  //       elevation: 5,
  //       onTap: (int index){
  //         setState(() {
  //           Index = index;
  //         });
  //       },
  //       type: BottomNavigationBarType.fixed,
  //       currentIndex: Index,
  //       fixedColor: Colors.black,
  //       unselectedItemColor: Colors.black45,
  //       backgroundColor: Colors.grey[200],
        
  //       items: [
  //         BottomNavigationBarItem(icon: Icon(Icons.home, size: 30,),
  //         label: ''),
  //         BottomNavigationBarItem(icon: Icon(Icons.search, size: 30,),
  //         label: ''),
  //         BottomNavigationBarItem(icon: Icon(Icons.movie_creation_rounded , size: 30,),
  //         label: ''),
  //         BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined, size: 30,),
  //         label: ''),
  //         BottomNavigationBarItem(icon: Icon(Icons.person, size: 30,),
  //         label: ''),
  //       ],
  //     ),

  // 22  @override
  // Widget build(BuildContext context) {
  //   return DefaultTabController(
  //     length: 2,
  //     child: Scaffold(
  //       appBar: AppBar(
  //           systemOverlayStyle:
  //               SystemUiOverlayStyle(statusBarColor: Colors.black),
  //               bottom: TabBar(
  //                 tabs: [
  //                   Tab(text: 'first',),
  //                   Tab(text: 'son',)

  //                 ]),
  //               ),
            
  //       body: TabBarView(children: [
  //         MyWidget(),
  //         MyWidget1()
  //       ],)
  //     ),
  //   );
  // } ---> tabBarView buni appBar pasida ishlatiladi 
  //  lekin Scafdold ni ichida Column ni ichida ham yozsa boladi

  // 23 ListView.builder(
        //  itemCount: (users?.length ?? 0)~/2,
        //  itemBuilder: (BuildContext context, int index){
        //     return stuff(context);
        // } 
  
//!========================================================================
// 1 svg "flutter_svg: ^1.1.5" 38dan keyin qoshiladi
// 2 hamma telefonlarga mos razmer qoyish "flutter_screenutil: ^5.5.4"