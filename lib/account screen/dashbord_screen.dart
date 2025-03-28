import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Dashboard_Screen extends StatefulWidget {
  const Dashboard_Screen({super.key});

  @override
  State<Dashboard_Screen> createState() => _Dashboard_ScreenState();
}

class _Dashboard_ScreenState extends State<Dashboard_Screen> {

  final List<Map<String, dynamic>> dashbord = [
    {"title": "Enquiries Received","subtitle":"100"},
    {"title": "Lead Generated","subtitle":"55"},
    {"title": "Number of Views(Today)","subtitle":"100"},
    {"title": "Mini Website Visits","subtitle":"100"},
  ];
  List colors = [
  Color(0xffDD4545),
  Color(0xff45DDB2),
  Color(0xff742B88),
  Color(0xff040545),
   ];
  List images = [
    "assets/enquiries.png",
    "assets/lead.png",
    "assets/eye.png",
    "assets/mini.png"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.purple, size: 30),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Dashboard",
          style: GoogleFonts.lato(
              fontSize: 22, fontWeight: FontWeight.w400, color: Colors.purple),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        color: Colors.purple,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(
                      child: Text(
                        "S",
                        style: TextStyle(fontSize: 24, color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    "Smart Global",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Text("My Business Insights",
                  style: GoogleFonts.lato(
                      fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            Container(
              height: 400,
              child:GridView.builder(
                  itemCount: dashbord.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 15,
                      mainAxisSpacing: 15,
                      crossAxisCount: 2),
                  itemBuilder: (BuildContext context, int index) {
                    return Container(
                      height: 150,width: 150,
                      decoration: BoxDecoration(
                        color: colors[index],
                        borderRadius: BorderRadius.circular(20)
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                minWidth: 44,
                                minHeight: 44,
                                maxWidth: 64,
                                maxHeight: 64,
                              ),
                              child: Image.asset(images[index], fit: BoxFit.cover),),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(2),
                            child: Text(dashbord[index]["title"],
                              style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 16,color: Colors.white)),
                            ),
                          ),
                          Text(dashbord[index]["subtitle"],
                            style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 32,color: Colors.white)),
                          ),
                        ],
                      ),
                    );
                  }),
            ),
            SizedBox(height: 20),
            Text("Customer Ratings & Reviews",style: GoogleFonts.lato(fontSize: 16,color: Colors.black),),
            SizedBox(height: 10),
            Container(
                height: 100,
                width: double.infinity,
                child: Row(children: [
                  Container(
                    width:100,
                    child: Image(image: AssetImage('assets/cus.png')),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            bottomLeft: Radius.circular(20)
                        ),
                        color: Colors.red
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Customer Ratings & Reviews',style: GoogleFonts.lato(fontSize: 16)),
                        Text('Average rating (e.g., ★★★★☆) and the ',style:GoogleFonts.lato(fontSize: 12)),
                        Text('number of reviews.',style:GoogleFonts.lato(fontSize: 12)),
                      ],),
                  ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_ios))
                ],),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    border: Border.all()
                    ),
                ),
          ],
        ),
      ),
    );
  }
}