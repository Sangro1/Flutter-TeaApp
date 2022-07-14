import 'package:flutter/material.dart';


class CoffeeTile extends StatelessWidget {
  const CoffeeTile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 25.0, bottom: 25),
      child: Container(
        padding: EdgeInsets.all(12),
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.black54,
        ),
        child:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Coffee image
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset('assets/images/latte1.jpeg'),
            ),
            //Coffee name
            Padding(padding: const EdgeInsets.symmetric
              (vertical:12.0, horizontal:8),
            child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
                children: [
              Text('Latte', style: TextStyle(fontSize: 20),
            ),
              Text('With Almond milk',
                style:TextStyle(
                    color:Colors.grey[700]),
            ),

          ],),
            ),

            //pricing
             Padding(padding: const EdgeInsets.symmetric(horizontal:10.0),
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Text('\₹40.00'),
                 Container(
                   padding: EdgeInsets.all(4),
                   decoration: BoxDecoration(color: Colors.orange,
                     borderRadius:BorderRadius.circular(12),
                   ),
                   child:  Icon(Icons.add),

                 )
               ],
             ),

             ),
          ],
        ),
      ),
    );


  }
}
