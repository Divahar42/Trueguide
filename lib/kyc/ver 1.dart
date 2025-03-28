import 'package:flutter/material.dart';
import 'package:true_guide/category/new3.dart';
import 'package:true_guide/kyc/kyc_terms.dart';
import 'package:true_guide/kyc/ver%202.dart';



class KYCVerificationScreen extends StatefulWidget {
  @override
  _KYCVerificationScreenState createState() => _KYCVerificationScreenState();
}

class _KYCVerificationScreenState extends State<KYCVerificationScreen> {
  TextEditingController businessNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("KYC Verification"),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context)=>business2()));
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image or illustration
            Center(
              child: Container(
                height: 200,width: 200,
                child: Image.asset(
                  "assets/kyc.png", // Add your image in assets folder
                fit: BoxFit.fill,),
              ),
            ),
            SizedBox(height: 16),

            // Title
            Center(
              child: Text(
                "Let's Verify KYC",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(height: 16),

            // Business Name Input
            Text("Business Name"),
            SizedBox(height: 4),
            TextField(
              controller: businessNameController,
              decoration: InputDecoration(
                hintText: "Enter Your Name",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
              ),
            ),
            SizedBox(height: 16),

            // Contract Status
            Text(
              "Completed the steps below to get verified",
              style: TextStyle(fontSize: 14),
            ),
            SizedBox(height: 4),
            Row(
              children: [
                Text(
                  "Contract Status : ",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text(
                  "Pending",
                  style: TextStyle(fontSize: 14,color: Colors.red),
                ),
              ],
            ),

            SizedBox(height: 16),

            // Verification Steps
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Colors.grey.shade300
                            ,
                            Colors.lime.shade300]

                      ),borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Icon(Icons.note_alt_rounded, size: 30, color: Colors.black),
                        SizedBox(height: 8),
                        Text("ID & Address Verfication", textAlign: TextAlign.center),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [Colors.grey.shade300,
                            Colors.indigo.shade300]

                      ),borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Icon(Icons.business, size: 30, color: Colors.orange),
                        SizedBox(height: 8),
                        Text("Business Verification", textAlign: TextAlign.center),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 30),

            // Terms & Conditions
            Center(
              child: TextButton(onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Kyc_Terms()));
              }, child: Text("Read KYC Terms & Conditions"))
            ),
            SizedBox(height: 130),

            // Get Verified Button
            Center(
              child: SizedBox(
                width: 330,
                height: 60,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>kyc2()));
                  },
                  child: Text(
                    "Get Verified",
                    style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}