import 'package:flutter/material.dart';

import '../kyc/ver 1.dart';
import 'architecture_Screen.dart';
import 'new2.dart';



class business2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BusinessDetailScreen(),
    );
  }
}

class BusinessDetailScreen extends StatefulWidget {
  @override
  _BusinessDetailScreenState createState() => _BusinessDetailScreenState();
}

class _BusinessDetailScreenState extends State<BusinessDetailScreen> {
  final _formKey = GlobalKey<FormState>();

  String? selectedMonth;
  String? selectedYear;
  String? selectedcategories;
  List<String> categories = [
    "Architecture",
    "Land Promotors",
    "Engineers",
    "Real Estate Consultant",
    "Builders",
    "Contractors",
    "Registration Services",
    "Bank Loans",
  ];
  List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December'
  ];
  List<String> years =
  List.generate(50, (index) => (DateTime.now().year - index).toString());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>BusinessDetailScreen1()));
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.purple,)),
        title: Text("Business Detail",style: TextStyle(color: Colors.purple),),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child:
        SingleChildScrollView(
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                        ),
                        child: Text("Personal Detail"),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 12),
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border(bottom: BorderSide(color: Colors.black, width: 2)),
                        ),
                        child: Text("Business Detail", style: TextStyle(fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                SizedBox(height:12,child: LinearProgressIndicator(value: 10, color: Colors.purple)),
                SizedBox(height: 10),
                Text("Year of Establishment"),
                Row(
                  children: [
                    Expanded(
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(labelText: "Month"),
                        value: selectedMonth,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedMonth = newValue;
                          });
                        },
                        items: months.map((String month) {
                          return DropdownMenuItem<String>(
                            value: month,
                            child: Text(month),
                          );
                        }).toList(),
                      ),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: DropdownButtonFormField<String>(
                        decoration: InputDecoration(labelText: "Year"),
                        value: selectedYear,
                        onChanged: (String? newValue) {
                          setState(() {
                            selectedYear = newValue;
                          });
                        },
                        items: years.map((String year) {
                          return DropdownMenuItem<String>(
                            value: year,
                            child: Text(year),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Enter your Service",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Business Website",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Enter Email Address",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Social Media Links",
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 5),
                TextButton(
                  onPressed: () {},
                  child: Text("+ Add Another Social Media Link"),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: SizedBox(height: 50,width: 330,
                    child: DropdownButtonFormField<String>(
                      decoration: InputDecoration(labelText: "Categories"),
                      value: selectedcategories,
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedcategories = newValue;
                        });
                      },
                      items: categories.map((String categories) {
                        return DropdownMenuItem<String>(
                          value: categories,
                          child: Text(categories),
                        );
                      }).toList(),
                    ),
                  ),
                ),
                SizedBox(height: 20),
                Padding(
                  padding: const EdgeInsets.only(left:25),
                  child: SizedBox(height: 40,width: 330,
                    child: ElevatedButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => KYCVerificationScreen()));
                    }, child: Text("KYC Verification")),
                  ),
                ),
                SizedBox(height: 190),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.purple,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>architecture()));
                      if (_formKey.currentState!.validate()) {
                        // Save business details
                      }
                    },
                    child: Text("Saved Detail",style: TextStyle(color: Colors.white,fontSize: 20),),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}