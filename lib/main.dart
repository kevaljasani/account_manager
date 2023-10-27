import 'dart:ui';

import 'package:account_manager/second.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: first(),
  debugShowCheckedModeBanner: false,));
}

class first extends StatefulWidget {
  const first({super.key});

  @override
  State<first> createState() => _firstState();
}

class _firstState extends State<first> {

  TextEditingController t1 = TextEditingController();
  TextEditingController a1 = TextEditingController();
  TextEditingController b1 = TextEditingController();
  TextEditingController a2 = TextEditingController();
  TextEditingController b2 = TextEditingController();


  //int a = 0;
  int lan = 0;
  int lan1 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [

          Container(
            height: 700,
            width: 600,

            decoration: BoxDecoration(
                color: Colors.white,
                image: DecorationImage(image: AssetImage("pic/wall.png"),fit: BoxFit.fill)
            ),


            child: Column(
              children: [

                Container(
                 margin: EdgeInsets.only(top: 50),
                  alignment: Alignment.center,
                  height: 80,
                  width: 80,
                  // child: BackdropFilter(
                  //   filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
                  //   child: Container(
                  //     color: Colors.transparent,
                  //   ),
                  // ),
                  // decoration: BoxDecoration(
                  //   image: DecorationImage(image: AssetImage("pic/logo.png"))
                  // ),
                  child: Image(image: AssetImage("pic/logo.png")),
                ),


                Container(
                  alignment: Alignment.center,
                  height: 565,
                  width: 350,

                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(bottom: 10), alignment: Alignment.center,
                          height: 50,
                          width: 450,
                          child: Text("Account Manager",style: TextStyle(fontSize: 22,color: Colors.white),),
                       ),


                        Container(
                          height: 505,
                          width: 330,

                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(width: 3)
                          ),

                          child :Column(children: [

                            Container(
                              alignment: Alignment.center,
                              height: 50,
                              width: double.infinity,
                              color: Colors.deepPurple,
                              child: Text("Setting", style: TextStyle(fontSize: 18, color: Colors.white),),
                            ),


                            TextField(
                              controller: t1,

                              decoration: InputDecoration(
                                labelText: "Set Password",
                                icon: Icon(Icons.remove_red_eye),

                              ),
                            ),


                            Container(
                              margin: EdgeInsets.only(top: 15, bottom: 15,left: 10),
                              alignment: Alignment.centerLeft,
                              child: Text("Password must be 4 charater long.", style: TextStyle(fontSize: 15,
                                  color: Colors.grey.shade400, decoration: TextDecoration.underline),),
                            ),

                            Row(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 5, right: 10, bottom: 15),
                                  height: 10,
                                  width: 10,
                                  child: Image.asset("pic/dot.jpg"),
                                ),

                                Container(
                                  margin: EdgeInsets.only(bottom: 10),
                                  child: Text("Set security quetions for retrieve your password \nwhen you forgot.",
                                    style: TextStyle(fontSize: 12, color: Colors.grey.shade400),),
                                )
                              ],
                            ),


                            DropdownButton(
                              value: lan,
                              isExpanded: true,
                              itemHeight: null,
                              iconSize: 30,
                              items: [
                                DropdownMenuItem(child: Text("Security Question 1",), value: 0),
                                DropdownMenuItem(child: Text("What was the first mobile thatyou purchased ?"), value: 1),
                                DropdownMenuItem(child: Text("What was the name of your bestfrirnd in childhood ?"), value: 2),
                                DropdownMenuItem(child: Text("What was the name of your first pet ?"), value: 3),
                                DropdownMenuItem(child: Text("What is your favourite children's book ?"), value: 4),
                                DropdownMenuItem(child: Text("What was the first film you saw in the cinema ?",), value: 5),
                                DropdownMenuItem(child: Text("What was the name of your favourtie teacher at primary school ?"), value: 6),
                              ],
                                    onChanged: (value) {
                                      lan = value!;

                                      // if(lan >= value!)
                                      // {
                                      //   // a1=value as double;
                                      //   // amt=5000*a1;
                                      //   setState(() {
                                      //
                                      //   });
                                      // }
                                      // else
                                      // {
                                      //
                                      // }
                                      setState(() {

                                      });
                                    },
                            ),

                            TextField(
                              controller: b1,
                              decoration: InputDecoration(
                                  label: Text("Answer*"),
                              ),
                            ),


                            DropdownButton(
                              value: lan1,
                              isExpanded: true,
                              itemHeight: null,
                              iconSize: 30,

                              items: [
                                DropdownMenuItem(child: Text("Security Question 2"), value: 0),
                                DropdownMenuItem(child: Text("What is the name of your favourite \nsports team ?"), value: 1),
                                DropdownMenuItem(child: Text("Who is your favourite singer or \nband ?"), value: 2),
                                DropdownMenuItem(child: Text("What is your first job ?"), value: 3),
                                DropdownMenuItem(child: Text("What was your first dish you learned \nto cook ?"), value: 4),
                                DropdownMenuItem(child: Text("What was the model of your first \nmotorised vehicle?"), value: 5),
                                DropdownMenuItem(child: Text("What was your chidhood nickname ?"), value: 6),
                              ],
                                    onChanged: (value) {
                                      lan1 = value!;

                                      // if(lan >= value!)
                                      // {
                                      //   // a1=value as double;
                                      //   // amt=5000*a1;
                                      //   setState(() {
                                      //
                                      //   });
                                      // }
                                      // else
                                      // {
                                      //
                                      // }
                                      setState(() {

                                      });
                                      },
                            ),

                            TextField(
                              controller: b2,

                              decoration: InputDecoration(
                                  label: Text("Answer*")
                              ),
                            ),


                            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [

                                Container(
                                  margin: EdgeInsets.only(top: 25),
                                  height: 35,
                                  width: 110,
                                  alignment: Alignment.center,
                                  child: Text("EXIT", style: TextStyle(color: Colors.deepPurple),),

                                  decoration: BoxDecoration(
                                      border: Border.all(width: 1, color: Colors.deepPurple),
                                      borderRadius: BorderRadius.circular(100)
                                  ),
                                ),

                                Container(
                                  margin: EdgeInsets.only(top: 25),
                                  height: 35,
                                  width: 110,
                                  alignment: Alignment.center,
                                  child: Text("SET", style: TextStyle(color: Colors.white),),

                                  decoration: BoxDecoration(
                                      color: Colors.deepPurple,
                                      border: Border.all(width: 1, color: Colors.deepPurple),
                                      borderRadius: BorderRadius.circular(100)
                                  ),
                                )

                              ],),

                          ],),
                        )

                    ],)

                ),
              ],),
          )
        ],
      ),



      // body: Column(children: [
      //   Container(
      //     height: 500,
      //     width: 400,
      //     // color: Colors.grey.shade400,
      //
      //     decoration: BoxDecoration(
      //         border: Border.all(width: 3)
      //     ),
      //
      //     child: Column(
      //       children: [
      //
      //         Container(
      //           alignment: Alignment.center,
      //           height: 50,
      //           width: double.infinity,
      //           color: Colors.purple.shade700,
      //           child: Text("Setting",
      //             style: TextStyle(fontSize: 18, color: Colors.white),),
      //         ),
      //
      //
      //         TextField(
      //           controller: t1,
      //
      //           decoration: InputDecoration(
      //               labelText: "Set Password",
      //               icon: Icon(Icons.remove_red_eye)
      //           ),
      //
      //
      //
      //         ),
      //
      //
      //         Container(
      //           margin: EdgeInsets.only(top: 10, bottom: 15),
      //           alignment: Alignment.centerLeft,
      //           child: Text("Password must be 4 charater long.",
      //             style: TextStyle(fontSize: 15,
      //                 color: Colors.grey.shade400,
      //                 decoration: TextDecoration.underline),),
      //         ),
      //
      //
      //         Row(
      //           children: [
      //             Container(
      //               margin: EdgeInsets.only(left: 5, right: 10, bottom: 15),
      //               height: 10,
      //               width: 10,
      //               child: Image.asset("pic/dot.jpg"),
      //             ),
      //
      //             Container(
      //               child: Text(
      //                 "Set security quetions for retrieve your password \nwhen you forgot.",
      //                 style: TextStyle(
      //                     fontSize: 12, color: Colors.grey.shade400),),
      //             )
      //           ],
      //         ),
      //
      //
      //         DropdownButton(
      //           value: lan,
      //           items: [
      //             DropdownMenuItem(
      //                 child: Text("Security Question 1"), value: 0),
      //             DropdownMenuItem(child: Text(
      //                 "What was the first mobile that you purchased ?"),
      //                 value: 1),
      //             DropdownMenuItem(child: Text(
      //                 "What was the name of your bestfrirnd in childhood ?"),
      //                 value: 2),
      //             DropdownMenuItem(
      //                 child: Text("What was the name of your first pet ?"),
      //                 value: 3),
      //             DropdownMenuItem(
      //                 child: Text("What is your favourite children's book ?"),
      //                 value: 4),
      //             DropdownMenuItem(child: Text(
      //               "What was the first film you saw in the cinema ?",),
      //                 value: 5),
      //             DropdownMenuItem(child: Text(
      //                 "What was the name of your favourtie teacher \nat primary school ?")
      //                 , value: 6),
      //
      //           ],
      //           onChanged: (value) {
      //             lan = value!;
      //
      //             // if(lan >= value!)
      //             // {
      //             //   // a1=value as double;
      //             //   // amt=5000*a1;
      //             //   setState(() {
      //             //
      //             //   });
      //             // }
      //             // else
      //             // {
      //             //
      //             // }
      //             setState(() {
      //
      //             });
      //           },
      //         ),
      //
      //         TextField(
      //           controller: b1,
      //
      //           decoration: InputDecoration(
      //               label: Text("Answer*")
      //           ),
      //         ),
      //
      //
      //         DropdownButton(
      //           value: lan1,
      //           items: [
      //             DropdownMenuItem(
      //                 child: Text("Security Question 2"), value: 0),
      //             DropdownMenuItem(child: Text(
      //                 "What is the name of your favourite sports team ?"),
      //                 value: 1),
      //             DropdownMenuItem(
      //                 child: Text("Who is your favourite singer or band ?"),
      //                 value: 2),
      //             DropdownMenuItem(
      //                 child: Text("What is your first job ?"),
      //                 value: 3),
      //             DropdownMenuItem(child: Text(
      //                 "What was your first dish you learned to cook ?"),
      //                 value: 4),
      //             DropdownMenuItem(child: Text(
      //                 "What was the model of your first motorised vehicle?"),
      //                 value: 5),
      //             DropdownMenuItem(
      //                 child: Text("What was your chidhood nickname ?"),
      //                 value: 6),
      //
      //           ],
      //           onChanged: (value) {
      //             lan1 = value!;
      //
      //             // if(lan >= value!)
      //             // {
      //             //   // a1=value as double;
      //             //   // amt=5000*a1;
      //             //   setState(() {
      //             //
      //             //   });
      //             // }
      //             // else
      //             // {
      //             //
      //             // }
      //             setState(() {
      //
      //             });
      //           },
      //         ),
      //
      //         TextField(
      //           controller: b2,
      //
      //           decoration: InputDecoration(
      //               label: Text("Answer*")
      //           ),
      //         ),
      //
      //
      //         Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //           children: [
      //
      //             Container(
      //               margin: EdgeInsets.only(top: 40),
      //               height: 30,
      //               width: 100,
      //               alignment: Alignment.center,
      //               child: Text(
      //                 "EXIT", style: TextStyle(color: Colors.deepPurple),),
      //
      //               decoration: BoxDecoration(
      //                   border: Border.all(width: 1, color: Colors.deepPurple),
      //                   borderRadius: BorderRadius.circular(100)
      //               ),
      //             ),
      //
      //             Container(
      //               margin: EdgeInsets.only(top: 40),
      //               height: 30,
      //               width: 100,
      //               alignment: Alignment.center,
      //               child: Text("SET", style: TextStyle(color: Colors.white),),
      //
      //               decoration: BoxDecoration(
      //                   color: Colors.deepPurple,
      //                   border: Border.all(width: 1, color: Colors.deepPurple),
      //                   borderRadius: BorderRadius.circular(100)
      //               ),
      //             )
      //
      //           ],),
      //
      //       ],),
      //   )
      // ],
      // ),
    );
  }
}














// child:  Column(
// children: [
// Container(
// height: 500,
// width: 400,
// // color: Colors.grey.shade400,
//
// decoration: BoxDecoration(
// color: Colors.white,
// border: Border.all(width: 3)
// ),
//
// child: Column(
// children: [
//
// Container(
// alignment: Alignment.center,
// height: 50,
// width: double.infinity,
// color: Colors.purple.shade700,
// child: Text("Setting",
// style: TextStyle(fontSize: 18, color: Colors.white),),
// ),
//
//
// TextField(
// controller: t1,
//
// decoration: InputDecoration(
// labelText: "Set Password",
// icon: Icon(Icons.remove_red_eye)
// ),
//
//
//
// ),
//
//
// Container(
// margin: EdgeInsets.only(top: 10, bottom: 15),
// alignment: Alignment.centerLeft,
// child: Text("Password must be 4 charater long.",
// style: TextStyle(fontSize: 15,
// color: Colors.grey.shade400,
// decoration: TextDecoration.underline),),
// ),
//
//
// Row(
// children: [
// Container(
// margin: EdgeInsets.only(left: 5, right: 10, bottom: 15),
// height: 10,
// width: 10,
// child: Image.asset("pic/dot.jpg"),
// ),
//
// Container(
// child: Text(
// "Set security quetions for retrieve your password \nwhen you forgot.",
// style: TextStyle(
// fontSize: 12, color: Colors.grey.shade400),),
// )
// ],
// ),
//
//
// DropdownButton(
// value: lan,
// items: [
// DropdownMenuItem(
// child: Text("Security Question 1"), value: 0),
// DropdownMenuItem(child: Text(
// "What was the first mobile that you purchased ?"),
// value: 1),
// DropdownMenuItem(child: Text(
// "What was the name of your bestfrirnd in childhood ?"),
// value: 2),
// DropdownMenuItem(
// child: Text("What was the name of your first pet ?"),
// value: 3),
// DropdownMenuItem(
// child: Text("What is your favourite children's book ?"),
// value: 4),
// DropdownMenuItem(child: Text(
// "What was the first film you saw in the cinema ?",),
// value: 5),
// DropdownMenuItem(child: Text(
// "What was the name of your favourtie teacher \nat primary school ?")
// , value: 6),
//
// ],
// onChanged: (value) {
// lan = value!;
//
// // if(lan >= value!)
// // {
// //   // a1=value as double;
// //   // amt=5000*a1;
// //   setState(() {
// //
// //   });
// // }
// // else
// // {
// //
// // }
// setState(() {
//
// });
// },
// ),
//
// TextField(
// controller: b1,
//
// decoration: InputDecoration(
// label: Text("Answer*")
// ),
// ),
//
//
// DropdownButton(
// value: lan1,
// items: [
// DropdownMenuItem(
// child: Text("Security Question 2"), value: 0),
// DropdownMenuItem(child: Text(
// "What is the name of your favourite sports team ?"),
// value: 1),
// DropdownMenuItem(
// child: Text("Who is your favourite singer or band ?"),
// value: 2),
// DropdownMenuItem(
// child: Text("What is your first job ?"),
// value: 3),
// DropdownMenuItem(child: Text(
// "What was your first dish you learned to cook ?"),
// value: 4),
// DropdownMenuItem(child: Text(
// "What was the model of your first motorised vehicle?"),
// value: 5),
// DropdownMenuItem(
// child: Text("What was your chidhood nickname ?"),
// value: 6),
//
// ],
// onChanged: (value) {
// lan1 = value!;
//
// // if(lan >= value!)
// // {
// //   // a1=value as double;
// //   // amt=5000*a1;
// //   setState(() {
// //
// //   });
// // }
// // else
// // {
// //
// // }
// setState(() {
//
// });
// },
// ),
//
// TextField(
// controller: b2,
//
// decoration: InputDecoration(
// label: Text("Answer*")
// ),
// ),
//
//
// Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// children: [
//
// Container(
// margin: EdgeInsets.only(top: 40),
// height: 30,
// width: 100,
// alignment: Alignment.center,
// child: Text(
// "EXIT", style: TextStyle(color: Colors.deepPurple),),
//
// decoration: BoxDecoration(
// border: Border.all(width: 1, color: Colors.deepPurple),
// borderRadius: BorderRadius.circular(100)
// ),
// ),
//
// Container(
// margin: EdgeInsets.only(top: 40),
// height: 30,
// width: 100,
// alignment: Alignment.center,
// child: Text("SET", style: TextStyle(color: Colors.white),),
//
// decoration: BoxDecoration(
// color: Colors.deepPurple,
// border: Border.all(width: 1, color: Colors.deepPurple),
// borderRadius: BorderRadius.circular(100)
// ),
// )
// ],),
// ],),
// )
// ],
// ),