import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:maker_coffee/utils/coffee_types.dart';

import '../utils/coffee_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List coffeeType = [
//[coffee Type, isSelected]
    [  'Cappuccino',
      true,
    ],
    [
      'Latte',
      false,
    ],
    [
      'Black',
      false,
    ],

  ];
//user typed on coffee type
 void coffeeTypeSelected(int index) {
   setState((){
     for(int i=0;i<coffeeType.length; i++){
       coffeeType[i][1] = false;
     }
      coffeeType[index][1] = true;
   });
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 25.0),
            child:Icon(Icons.person),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar (
        items: [
              BottomNavigationBarItem(icon:Icon(Icons.home_filled),
              label:   ''
              ),

              BottomNavigationBarItem(icon:Icon(Icons.favorite),
                label: ''
              ),

              BottomNavigationBarItem(icon:Icon(Icons.notification_add_sharp),
                label: ''
              ),
      ],),
      body: Column(
        children: [
          //find the best coffee for you
          Padding( padding: EdgeInsets.symmetric(horizontal: 25.0),
          child:Text("Find the best\ncoffee for you",
            style: GoogleFonts.bebasNeue(
              fontSize: 40,
            ),
          ),
          ),
            SizedBox(height: 40,),

          //Search bar
          Padding(padding: const EdgeInsets.symmetric(horizontal: 25.0),
           child: TextField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.search, ),
              hintText: 'Find your coffee..',
              focusedBorder: OutlineInputBorder(
                borderSide:BorderSide(color: Colors.grey.shade600),
              ),
              enabledBorder:  OutlineInputBorder(
                borderSide:BorderSide(color: Colors.grey.shade600),
              ),
            ),
          ),
          ),

          //horizontal listview of coffee types
          Container(
            height: 50,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
                itemCount: coffeeType.length,
                itemBuilder: (context, index) {
              return CoffeeType(
                coffeeType: coffeeType[index][0],
                isSelected: coffeeType[index][1],
                onTap: (){
                  coffeeTypeSelected(index);
                }

              );
            }
            ),
          ),


          //horizontal listview of tiles
          Expanded(
             child: ListView(
               scrollDirection: Axis.horizontal,
                children: [
                  CoffeeTile(),
                ],
          ),
          ),
        ],
      ),
    );
  }
}
