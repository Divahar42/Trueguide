import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Language_Screen extends StatefulWidget {
  const Language_Screen({super.key});

  @override
  State<Language_Screen> createState() => _Language_ScreenState();
}

class _Language_ScreenState extends State<Language_Screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back,color: Colors.purple,)),
        title: Text("Select Language",style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 20,color: Colors.purple)),),
      ),
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
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(children: [
            Container(height: 200,width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage("assets/language.png"),fit: BoxFit.fill),
              ),
            ),
            SizedBox(height: 10),
            Text("Select Language",style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),),
            SizedBox(height: 10),
            Text("True Guide supports multiple languages to enhance your experience. Please select your preferred language to continue.",style: GoogleFonts.lato(fontSize: 12,fontWeight: FontWeight.bold),),
            SizedBox(height: 10),
            Container(
              child: ListTile(
                leading: CircleAvatar(
                  radius: 40,
                  backgroundColor: Color(0xffEAECF9),
                  child: Text("A",style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 32)),),
                ),
                title: Text("English",style:GoogleFonts.lato(textStyle: TextStyle(fontSize: 20,color: Colors.black)),),
                subtitle: Text("English",style:GoogleFonts.lato(textStyle: TextStyle(fontSize: 15,color: Color(0xff6F6666))),),
              ),
            )
          ],
          ),
        ),
        ),
    );
  }
}
