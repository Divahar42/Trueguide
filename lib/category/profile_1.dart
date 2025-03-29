import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:true_guide/category/photos.dart';

import 'ourproduct.dart';
import 'ourservice.dart';


class profile_1 extends StatefulWidget {
  const profile_1({super.key});

  @override
  State<profile_1> createState() => _profile_1State();
}

class _profile_1State extends State<profile_1> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:  AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,color: Colors.purple,size: 30,)),
        title: Text("SRI VISHAKHA FIELDS",style: GoogleFonts.lato(fontSize: 22,fontWeight: FontWeight.w400,color: Colors.purple),),

      ),
      body: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(children: [
              Image(image: AssetImage('assets/svf.png')),
              Text("ASHOK.K.S",style: GoogleFonts.lato( fontSize: 14,fontWeight: FontWeight.bold,color: Colors.purple),),
              Row(children: [
                Icon(Icons.handshake,size: 15,),
                Text("Architecture",style: TextStyle(fontSize: 9),)
              ],)
            ],),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(

                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text('SRI VISHAKHA FIELDS',style: GoogleFonts.lato(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.purple),),
                      SizedBox(width: 19,),
                      Icon(Icons.arrow_outward,size: 19,)
                    ],
                  ),
                  Text('Verified Listing',style: GoogleFonts.lato(fontSize: 8,fontWeight: FontWeight.bold,),),
                  Text('05 Years in Business',style: GoogleFonts.lato(fontSize: 13,fontWeight: FontWeight.bold,),),
                  Text('Property Serviced',style: GoogleFonts.lato(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.purple),),
                  Text('Real Estate Development, Construction',style: GoogleFonts.lato(fontSize: 10,fontWeight: FontWeight.bold,),),
                  Text('Plotted Development',style: GoogleFonts.lato(fontSize: 10,fontWeight: FontWeight.bold,),),


                ],
              ),
            )
          ],),
        Expanded(child: tapbar()),
      ],),
    );
  }
}


class tapbar extends StatefulWidget {
  const tapbar({super.key});

  @override
  State<tapbar> createState() => _tapbarState();
}

class _tapbarState extends State<tapbar> with TickerProviderStateMixin{
 late TabController a ;

 @override
  void initState() {
   a = TabController(length: 4, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return
      Scaffold(
        appBar: AppBar(
          leading:SizedBox() ,
          bottom: TabBar(
            controller: a,
            labelColor: Colors.purple,
            tabs: [
              Tab(text: "Our Services", ),
              Tab(text: "Our Products", ),
              Tab(text: "Photos", ),
              Tab(text: "Contact Info",)
            ],
          ),
        ),
        body: Expanded(
          child: TabBarView(
            controller: a,
            children: [
              Ourservice(),
              Container(),
              Container(),
              Container()
            ],
            
          ),
        ),
      );
  }
}