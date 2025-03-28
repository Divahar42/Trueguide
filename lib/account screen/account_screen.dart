import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:true_guide/account%20screen/dashbord_screen.dart';
import 'package:true_guide/account%20screen/help%20and%20support.dart';
import 'package:true_guide/account%20screen/language_screen.dart';
import 'package:true_guide/account%20screen/message_screen.dart';
import 'package:true_guide/bottom%20navi/bottom_navigation.dart';
import 'package:true_guide/bottom%20navi/home_screen.dart';
import 'package:true_guide/login.dart';
import 'package:true_guide/special%20day%20poster/special%20day.dart';

class Account_Screen extends StatefulWidget {
  const Account_Screen({super.key});

  @override
  State<Account_Screen> createState() => _Account_ScreenState();
}

class _Account_ScreenState extends State<Account_Screen> {
  final List<Map<String, dynamic>> add = [
    {"title": "My Business"},
    {"title": "Add Business"},
    {"title": "Add Product"},
  ];
  final List<Map<String, dynamic>> menu = [
    {"title": "Account Setting", "icon": Icons.manage_accounts_outlined},
    {"title": "My Digital Card", "icon": Icons.credit_card},
    {"title": "Special Day Poster", "icon": Icons.image_outlined},
    {"title": "Wishlist", "icon": Icons.monitor},
    {"title": "My Message", "icon": Icons.monitor},
    {"title": "Dashboard", "icon": Icons.dashboard},
    {"title": "Languages", "icon": Icons.language},
    {"title": "Subscription Management", "icon": Icons.subscriptions_outlined},
    {"title": "Feedback & Support", "icon": Icons.feedback_outlined},
    {"title": "Logout", "icon": Icons.logout},
  ];
  List icon = [
    "assets/icon business.png",
    "assets/icon add.png",
    "assets/icon add pro.png"
  ];
  void _showLogoutDialog(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            title: Text(
              "Logout",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            content: Text(
              "Are you sure you want to log out?",
              style: TextStyle(fontSize: 16),
            ),
            actions: [
              TextButton(
                onPressed: () => Navigator.pop(context),
                child: Text(
                  "Cancel",
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.purple,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Login_Screen()))
                  ;

                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Logged out successfully")),
                  );
                },
                child: Text(
                  "Logout",
                  style: TextStyle(color: Colors.white, fontSize: 16),
                ),
              ),
            ],
          );
          },
        );
   }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Color(0xffFFFFFF),
                  Color(0xffF2A4A4)
                ]
            )
        ),
        child: Column(
          children: [
            Stack(
              alignment: Alignment.topCenter,
              children: [
                Container(
                  height: 310,
                ),
                Container(
                  height: 250, // Increased height for better spacing
                  width: double.infinity,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Colors.white,
                        Colors.red.shade300,
                      ],
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(50),
                      bottomRight: Radius.circular(50),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(bottom: 150),
                        child: IconButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Bottom_Navigation()));
                        }, icon:Icon(Icons.arrow_back,color: Color(0xff742B88),))
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 100),
                        child: CircleAvatar(
                          child: Text('S',style: TextStyle(fontSize: 40),),
                          radius: 40,
                          backgroundColor: Colors.white,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 45,right: 50),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text("Smart Global Solution",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.bold)),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 10),
                                  child: Icon(Icons.edit),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text("1122333444566",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 16)),),
                                SizedBox(height: 20,width: 90,
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: Colors.green,
                                      ),
                                      onPressed: (){}, child: Text("Active",style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 12,color: Colors.white)),)),
                                )
                              ],
                            ),
                            TextButton(onPressed: (){}, child: Text("View Full profile",style:GoogleFonts.poppins(textStyle: TextStyle(fontSize: 12,color: Colors.blue,decoration: TextDecoration.underline,decorationColor: Colors.blue))))

                          ],),
                      ),
                    ],),
                ),
                Positioned(
                  top: 150,
                  child: Container(
                    width: 350,
                    height: 150,
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.white,
                          Colors.red.shade300,
                        ],
                      ),
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: add.length,
                        itemBuilder: (BuildContext context, int index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Card(
                              child: Column(
                                children: [
                                  Container(
                                    height: 80,
                                    width: 82,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color:Color(0xffFFB790)
                                    ),
                                    child:  Image.asset(icon[index]),),
                                  Text(add[index]["title"],style: GoogleFonts.poppins(textStyle: TextStyle(fontSize: 12)),)
                                ],
                              ),
                            )
                          );
                        }),
                  ),
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: menu.length,
                  itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical:3),
                  child: Container(
                    height: 50,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      border: Border(
                      bottom: BorderSide(color: Colors.black,width: 1))
                    ),
                    child: ListTile(
                      leading: Icon(menu[index]["icon"], color: Colors.black, size: 20),
                      title: Text(menu[index]["title"]),
                      trailing: Icon(Icons.arrow_forward_ios),
                      onTap: (){
                        switch (menu[index]["title"]) {
                          case 'Languages':
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Language_Screen()));
                            break;
                          case 'Feedback & Support':
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Help_screen()));
                            break;
                          case 'Special Day Poster':
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Special_day()));
                            break;
                          case 'Logout':
                            _showLogoutDialog(context);
                            break;
                          case 'Dashboard':
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Dashboard_Screen()));
                            break;
                          case 'My Message':
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Message_Screen()));
                            break;
                          default:
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Coming Soon...')));
                        }

                      },
                    ),
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
