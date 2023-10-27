import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()
{
  runApp(MaterialApp(home: second(),
  debugShowCheckedModeBanner: false,));
}

class second extends StatefulWidget {
  const second({super.key});

  @override
  State<second> createState() => _secondState();
}

class _secondState extends State<second> {
  
  bool t=false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(

    //   title: (t1)?TextField(
    //     onChanged: (value) {
    //
    //       l=l1.where((element) => element["name"].toString().contains(value)).toList();
    //       setState(() {
    //
    //       });
    //     },
    //     autofocus: true,
    //     cursorColor: Colors.white,
    //   ):null,
    //
    //   actions: [
    //     IconButton(onPressed: () {
    //
    //       t1=!t1;
    //       setState(() {
    //
    //       });
    //
    //     }, icon: (t1)?Icon(Icons.close):Icon(Icons.search)),
    //   ],
    // ),

      appBar: AppBar(
        title: Text("Dashboard"),
        backgroundColor: Colors.deepPurple,

        actions: [
          IconButton(onPressed: () {

            t=!t;

            setState(() {

            });

          }, icon: (t)?Icon(Icons.close):Icon(Icons.search)),


          PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(child: Text("Save as PDF")),
                PopupMenuItem(child: Text("Save as Excel")),
              ],)
        ],
      ),

      drawer: Drawer(
        child: ListView(
          children: [

           DrawerHeader(

             // child: SizedBox(
             //   // height: 200,
             //   // width: 200,
             //   child: Container(
             //     // height: 200,
             //     child: Text("Test"),
             //
             //     decoration: BoxDecoration(
             //         image: DecorationImage(image: AssetImage("pic/1.png"),fit: BoxFit.fill)
             //     ),
             //   ),
             //
             // ),
             decoration: BoxDecoration(
               image: DecorationImage(image: AssetImage("pic/1.png"),fit: BoxFit.fill)
             ),

             child: Container(
               height: 50,
               width: 50,
               color: Colors.blue,
             ),
           ),

            ListTile(
              title: Text("Home"),
              leading: Icon(Icons.home),
            ),

            ListTile(
              title: Text("Backup"),
              leading: Icon(Icons.backup_sharp),
            ),

            ListTile(
              title: Text("Restore"),
              leading: Icon(Icons.restore_outlined),
            ),

            ListTile(
              title: Text("Change currency"),
              leading: Icon(Icons.change_circle_outlined),
            ),

            ListTile(
              title: Text("Change password"),
              leading: Icon(Icons.change_circle),
            ),

            ListTile(
              title: Text("Change security question"),
              leading: Icon(Icons.security_update_good_rounded),
            ),

            ListTile(
              title: Text("Setting"),
              leading: Icon(Icons.settings),
            ),

            ListTile(
              title: Text("Share the app"),
              leading: Icon(Icons.share),
            ),

            ListTile(
              title: Text("Rate the app"),
              leading: Icon(Icons.star_rate),
            ),

            ListTile(
              title: Text("Privacy policy"),
              leading: Icon(Icons.privacy_tip_sharp),
            ),

            ListTile(
              title: Text("More apps"),
              leading: Icon(Icons.more_horiz_outlined),
            ),

            ListTile(
              title: Text("Ads Free"),
              leading: Icon(Icons.stop_screen_share_outlined),
            )

          ],
        ),
      ),


         body: InkWell(
           onTap: () {

             showDialog(context: context, builder: (context) {
               return AlertDialog(

                 shape: ContinuousRectangleBorder(
                   borderRadius: BorderRadius.circular(30.0),
                 ),

                 title: Container(
                     height: 30,
                     width: 150,
                     //color: Colors.purple,
                     child: Text("Add new account",style: TextStyle(color: Colors.black),),
                   ),


                 // title: Container(
                 //   height: 30,
                 //   //width: 150,
                 //   //color: Colors.purple,
                 //
                 //   decoration: BoxDecoration(
                 //     color: Colors.purple,
                 //   ),
                 //
                 //   child: Text("Add new account",style: TextStyle(color: Colors.white),),
                 // ),


                 content: TextField(
                   decoration: InputDecoration(
                       label: Text("Account name")
                   ),
                 ),

                 actions: [
                   Row(children: [
                     TextButton(onPressed: () {

                     }, child: Container(
                       alignment: Alignment.center,
                       height: 30,
                       width: 120,

                       decoration: BoxDecoration(
                           color: Colors.white,
                           border: Border.all(width: 1,color: Colors.purple.shade700),
                           borderRadius: BorderRadius.circular(20)
                       ),

                       child: Text("CANCEL",style: TextStyle(color: Colors.purple.shade700),),
                     )),


                     TextButton(onPressed: () {

                     }, child: Container(
                       alignment: Alignment.center,
                       height: 30,
                       width: 120,

                       decoration: BoxDecoration(
                         color: Colors.purple,

                         borderRadius: BorderRadius.circular(20),
                       ),

                       child: Text("SAVE",style: TextStyle(color: Colors.white),),
                     )),

                   ],)
                 ],
               );
             });
           },
           child: Container(
             height: 50,
             width: 50,

             decoration: BoxDecoration(
                 color: Colors.deepOrangeAccent,
                 borderRadius: BorderRadius.circular(100)
             ),

             child: Icon(Icons.file_copy_rounded,color: Colors.white),
           ),
         )


    );
  }
}







































// InkWell(
//   onTap: () {
//
//     // showDialog(context: context, builder: (context) {
//     //   return AlertDialog(
//     //     title: TextField(
//     //       decoration: InputDecoration(
//     //         label: Text("Account name")
//     //       ),
//     //     ),
//     //
//     //     actions: [
//     //       Row(children: [
//     //         TextButton(onPressed: () {
//     //
//     //         }, child: Text("CANCEL")),
//     //
//     //         TextButton(onPressed: () {
//     //
//     //         }, child: Text("SAVE"))
//     //       ],)
//     //     ],
//     //   );
//     // },);
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: new Text("Alert!!"),
//           content: new Text("You are awesome!"),
//           actions: [
//           ],
//         );
//       },
//     );
//   },
//   child: CircleAvatar(
//     radius: 20,
//     backgroundColor: Colors.orange.shade600, //<-- SEE HERE
//     child: IconButton(
//       icon: Icon(
//         Icons.file_copy,
//         color: Colors.white,
//       ),
//       onPressed: () {},
//     ),
//   ),
// )
