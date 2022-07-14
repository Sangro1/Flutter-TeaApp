import 'package:flutter/material.dart';


class CoffeeType extends StatelessWidget {

   final String coffeeType;
   final bool isSelected;
   final VoidCallback onTap;

   CoffeeType({required this.coffeeType,
    required this.isSelected, required this.onTap
   });

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 25.0),
      child: Text( coffeeType,
      style: TextStyle(
        fontSize: 18 ,
        fontWeight: FontWeight.bold,
        color: Colors.orange,
      ),
      ),
    );

  }
}
