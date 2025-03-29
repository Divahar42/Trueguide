import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:true_guide/category/product_1.dart';
import 'package:true_guide/category/product_2.dart';



class Ourproducts extends StatefulWidget {
  const Ourproducts({super.key});

  @override
  State<Ourproducts> createState() => _OurproductsState();
}

class _OurproductsState extends State<Ourproducts> {

  List imagess=[
    'assets/pr_1.png',
    'assets/pr_2.png',
    'assets/pr_3.png',
    'assets/pr_1.png',
    'assets/pr_2.png',
    'assets/pr_3.png',
    'assets/pr_1.png',
    'assets/pr_3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return
        SizedBox(
          height: 100,
          child: ListView.builder(
              itemCount: imagess.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context,index){
                return
                  GestureDetector(
                    onTap: (){
                      switch (imagess[index]) {
                        case 'assets/product3.png':
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Product1()));
                          break;
                        case 'assets/product2.png':
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Product2()));
                          break;

                        default:
                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Coming Soon...')));
                      }
                    },

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 100,
                        decoration: BoxDecoration(
                            border: Border.all(),
                            image: DecorationImage(image: AssetImage(imagess[index]),fit: BoxFit.cover),
                            borderRadius: BorderRadius.circular(20)
                        ),
                      ),
                    ),
                  );
              }),
        );

  }
}