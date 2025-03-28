import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Business_profile extends StatefulWidget {
  const Business_profile({super.key});

  @override
  State<Business_profile> createState() => _Business_profileState();
}

class _Business_profileState extends State<Business_profile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFBF8F8),
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: Colors.purple,)),
        title: Text("SRI VISHAKHA FIELDS",style: GoogleFonts.poppins(fontSize: 14,color: Colors.purple),),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                          Container(
                            height: 22,width: 23,
                            decoration: BoxDecoration(
                              image: DecorationImage(image: AssetImage("assets/rating.png"),fit: BoxFit.fill)
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 12,width: 14,
                            decoration: BoxDecoration(
                                image: DecorationImage(image: AssetImage("assets/backarrow.png"),fit: BoxFit.fill)
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text('Verified Listing',style: GoogleFonts.lato(fontSize: 8,fontWeight: FontWeight.bold,),),
                          Icon(Icons.verified,color: Colors.blue,)
                        ],
                      ),
                      Text('05 Years in Business',style: GoogleFonts.lato(fontSize: 13,fontWeight: FontWeight.bold,),),
                      Text('Property Serviced',style: GoogleFonts.lato(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.purple),),
                      Text('Real Estate Development, Construction',style: GoogleFonts.lato(fontSize: 10,fontWeight: FontWeight.bold,),),
                      Text('Plotted Development',style: GoogleFonts.lato(fontSize: 10,fontWeight: FontWeight.bold,),),
                      Row(
                        children: [
                          Icon(Icons.alarm,color: Colors.purple,),
                          Text('09:00am - 08:00pm',style: GoogleFonts.lato(fontSize: 10,fontWeight: FontWeight.bold,),),
                        ],
                      ),
                      Row(children: [
                        Icon(Icons.location_on_outlined,color: Colors.purple,),
                        Text("Coimatore , tamilnadu",style: GoogleFonts.lato(),)
                      ],),
                    ],
                  ),
                )
              ],),
            Container(
              width: 400,
              height: 0.5,
              color:  Color(0xffAAA5A5),
            ),
            Row(children: [
              Text("data")
            ],)
          ],
        ),
      ),
    );
  }
}
