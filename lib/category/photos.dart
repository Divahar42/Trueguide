import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';



class photos extends StatefulWidget {
  const photos({super.key});

  @override
  State<photos> createState() => _photosState();
}

class _photosState extends State<photos> {

  List imagess=[
    'assets/po_1.png',
    'assets/po_2.png',
    'assets/po_3.png',
    'assets/po_1.png',
    'assets/po_2.png',
    'assets/po_3.png',
    'assets/po_1.png',
    'assets/po_3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      SizedBox(
        height: 100,
        child: ListView.builder(
            itemCount: imagess.length,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context,index){
              return
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                        border: Border.all(),
                        image: DecorationImage(image: AssetImage(imagess[index]),fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(20)
                    ),
                  ),
                )
              ;

            }),
      ),
    );;
  }
}