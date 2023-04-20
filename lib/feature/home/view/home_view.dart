import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:task_quantum/feature/home/controller/home_controller.dart';


class HomeView extends GetView<HomeController>{
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => Get.focusScope!.unfocus(),
    child:   Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: const Text('Social X',
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700
          ),
        ),
        actions: [
          IconButton(onPressed: (){

          }, icon: const Icon(Icons.more_vert)),
        ],
      ),
       body: Center(
         child: Column(
           children:   [

              const SizedBox(height: 10,),

             const SizedBox(
               height: 50,
               child: TextField(
                 cursorHeight: 25,
                 decoration: InputDecoration(
                     prefixIcon: Icon(Icons.search),
                     fillColor: Colors.white,
                     filled: true,
                     hintText: 'Search Here...'),
               ),
             ),

              Card(
                elevation: 0,
                shape: const RoundedRectangleBorder(
                  side: BorderSide(
                    color: Colors.black26,
                    width: 2.0,
                  ),
                ),
                child: SizedBox(
                  height: 100,
                  width: 400,
    child: Padding(
    padding: const EdgeInsets.all(20.0),
    child: Row(
      children:  [
        Column(
          children: const [
            Text("2 hour ago BBC New's"),
            Text("Apple admits slowing "),
            Text("Older Iphone's "),
          ],
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Image(image: AssetImage('images/error.png'),),
        )
      ],
                    ),
                  ),

                ),
             ),

             Card(
               elevation: 0,
               shape: const RoundedRectangleBorder(
                 side: BorderSide(
                   color: Colors.black26,
                   width: 2.0,
                 ),
               ),
               child: SizedBox(
                 height: 100,
                 width: 350,
                 child: Padding(
                   padding: const EdgeInsets.all(20.0),
                   child: Row(
                     children:  [
                       Column(
                         children: const [
                           Text("2 hour ago BBC New's"),
                           Text("Apple admits slowing "),
                           Text("Older Iphone's "),
                         ],
                       ),
                       const Padding(
                         padding: EdgeInsets.symmetric(horizontal: 50),
                         child: Image(image: AssetImage('images/error.png'),),
                       )
                     ],
                   ),
                 ),

               ),
             ),
             Card(
               elevation: 0,
               shape: const RoundedRectangleBorder(
                 side: BorderSide(
                   color: Colors.black26,
                   width: 2.0,
                 ),
               ),
               child: SizedBox(
                 height: 100,
                 width: 350,
                 child: Padding(
                   padding: const EdgeInsets.all(20.0),
                   child: Row(
                     children:  [
                       Column(
                         children: const [
                           Text("2 hour ago BBC New's"),
                           Text("Apple admits slowing "),
                           Text("Older Iphone's "),
                         ],
                       ),
                       const Padding(
                         padding: EdgeInsets.symmetric(horizontal: 50),
                         child: Image(image: AssetImage('images/error.png'),),
                       )
                     ],
                   ),
                 ),

               ),
             ),
           ],
         ),
         ),
       ),
    );
  }

}