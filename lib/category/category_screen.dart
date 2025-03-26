import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:true_guide/category/architecture_Screen.dart';

class Category_Screen extends StatefulWidget {
  const Category_Screen({super.key});

  @override
  State<Category_Screen> createState() => _Category_ScreenState();
}

class _Category_ScreenState extends State<Category_Screen> {
  final List<Map<String, dynamic>> categories = [
    {"title": "Architecture"},
    {"title": "Land Promoters"},
    {"title": "Engineers"},
    {"title": "Real Estate Consultant"},
    {"title": "Builders"},
    {"title": "Contractors"},
    {"title": "Registration Services"},
    {"title": "Bank Loans (NBFC/PVT)"},
  ];
  List images =[
    "assets/archi.png",
    "assets/land prom.png",
    "assets/engineer.png",
    "assets/real estate.png",
    "assets/builders.png",
    "assets/contract.png",
    "assets/register services.png",
    "assets/bank lone.png",
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading:IconButton(onPressed: (){}, icon: Icon(Icons.arrow_back)),
        title:Text("Category",style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 20,color: Color(0xff742B88)))),
        actions: [IconButton(onPressed: (){}, icon: Icon(Icons.search),color: Color(0xff742B88))]
        ),
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: <Color>[
                  Color(0xffFFFFFF),
                  Color(0xffF2A4A4),]
            )
        ),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Container(
            child: ListView.builder(
              itemCount: categories.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical:10),
                  child: Container(height: 60,width: 330,
                    decoration: BoxDecoration(
                      border: Border.all(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: ListTile(
                      leading: ConstrainedBox(
                        constraints: BoxConstraints(
                          minWidth: 44,
                          minHeight: 44,
                          maxWidth: 64,
                          maxHeight: 64,
                        ),
                        child: Image.asset(images[index], fit: BoxFit.cover),
                      ),
                      title: Text(categories[index]["title"],
                        style: GoogleFonts.lato(textStyle: TextStyle(fontSize: 20,color: Colors.black)),
                      ),
                      trailing: Icon(Icons.arrow_forward_ios,color: Colors.black,),
                      onTap: (){
                        switch (categories[index]["title"]) {
                          case 'Architecture':
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => architecture()));
                            break;
                          case 'Land Promoters':
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => architecture()));
                            break;

                          default:
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Coming Soon...')));
                        }

                        },
                    ),
                  ),
                );

              },
            ),
          ),
        ),
      )
    );
  }
}
