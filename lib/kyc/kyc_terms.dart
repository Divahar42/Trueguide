import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:bulleted_list/bulleted_list.dart';

class Kyc_Terms extends StatefulWidget {
  const Kyc_Terms({super.key});

  @override
  State<Kyc_Terms> createState() => _Kyc_TermsState();
}

class _Kyc_TermsState extends State<Kyc_Terms> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffFBF8F8),
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back,color: Color(0xff742B88),)),
        title: Text("KYC Terms & Conditions",style: GoogleFonts.lato(fontSize: 16,color: Color(0xff834394)),),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            child: Column(children: [
              Center(
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right:240),
                        child: Text("KYC Process",style: GoogleFonts.lato(fontSize: 15,fontWeight: FontWeight.bold),),
                      ),
                      BulletedList(
                          bullet: Icon(Icons.circle,color: Colors.black,size: 15,),
                          listItems: [
                            Text("Documents Required: You must submit accurate and valid identification documents, which may include:",style: GoogleFonts.lato(fontSize: 12),),
                            Text("Government-issued ID (e.g., Aadhaar, PAN, Passport, Voter ID).",style: GoogleFonts.lato(fontSize: 12),),
                            Text("Proof of Address (e.g., Utility Bill, Rent Agreement, Bank Statement).",style: GoogleFonts.lato(fontSize: 12),),
                            Text("Business Registration Documents (e.g., GST Registration, Certificate of Incorporation, Trade License).",style: GoogleFonts.lato(fontSize: 12),),
                            Text("Bank Account Proof for the business (e.g., canceled cheque, bank statement).",style: GoogleFonts.lato(fontSize: 12),),
                            Text("Verification Process: TrueGuide reserves the right to verify the authenticity of the submitted documents and request additional information if necessary.",style: GoogleFonts.lato(fontSize: 12),),

                          ]),
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right:200),
                        child: Text("Obligations of the User",style: GoogleFonts.lato(fontSize: 15,fontWeight: FontWeight.bold),),
                      ),
                      BulletedList(
                          bullet: Icon(Icons.circle,color: Colors.black,size: 15,),
                          crossAxisAlignment: CrossAxisAlignment.start,
                          listItems: [
                            Text("All information and documents provided during the KYC process must be true, accurate, and up-to-date.",style: GoogleFonts.lato(fontSize: 12),),
                            Text("Users are responsible for notifying TrueGuide of any changes to their KYC details (e.g., address, ownership, etc.).",style: GoogleFonts.lato(fontSize: 12),),
                            Text("Failure to provide accurate information may result in suspension or termination of account access",style: GoogleFonts.lato(fontSize: 12),),
                          ]),
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right:150),
                        child: Text("Confidentiality of Information",style: GoogleFonts.lato(fontSize: 15,fontWeight: FontWeight.bold),),
                      ),
                      BulletedList(
                          bullet: Icon(Icons.circle,color: Colors.black,size: 15,),
                          crossAxisAlignment: CrossAxisAlignment.start,
                          listItems: [
                            Text("TrueGuide ensures the confidentiality and security of the information provided during the KYC process.",style: GoogleFonts.lato(fontSize: 12),),
                            Text("Your data will only be used for verification purposes and shared with regulatory authorities, if legally mandated",style: GoogleFonts.lato(fontSize: 12),),
                          ]),
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right:150),
                        child: Text("Rejection and Re-verification",style: GoogleFonts.lato(fontSize: 15,fontWeight: FontWeight.bold),),
                      ),
                      BulletedList(
                          bullet: Icon(Icons.circle,color: Colors.black,size: 15,),
                          crossAxisAlignment: CrossAxisAlignment.start,
                          listItems: [
                            Text("TrueGuide reserves the right to reject incomplete or unverifiable KYC submissions.",style: GoogleFonts.lato(fontSize: 12),),
                            Text("Periodic re-verification of KYC details may be required to ensure compliance with laws.",style: GoogleFonts.lato(fontSize: 12),),
                          ]),
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right:220),
                        child: Text("Updates to Terms",style: GoogleFonts.lato(fontSize: 15,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Container(
                            height: 60,width: 330,
                            child: Text("TrueGuide reserves the right to modify these KYC Terms and Conditions at any time. Changes will be notified through the app or email, and continued use of the platform constitutes acceptance",
                        style: GoogleFonts.lato(fontSize: 12),
                        )),
                      )
                    ],
                  ),
                ),
              ),
              Center(
                child: Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right:190),
                        child: Text("Contact Information",style: GoogleFonts.lato(fontSize: 15,fontWeight: FontWeight.bold),),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 40),
                        child: Text("For any queries regarding the KYC process, users may contact:",style: GoogleFonts.lato(fontSize: 10),),
                      ),
                     Padding(
                       padding: const EdgeInsets.only(right: 185),
                       child: RichText(text: TextSpan(children: [
                         TextSpan(text: "Email:[",style: GoogleFonts.lato(fontSize: 10)),
                         TextSpan(text: "support@trueguide.com",style: GoogleFonts.lato(fontSize: 10,color: Color(0xff1300BB),decoration: TextDecoration.underline,decorationColor: Color(0xff1300BB))),
                         TextSpan(text: "]",style: GoogleFonts.lato(fontSize: 10))
                       ])),
                     ),
                      Padding(
                        padding: const EdgeInsets.only(right: 195),
                        child: Text("Phone: [+91-XXXXXXXXXX]",style: GoogleFonts.lato(fontSize: 10),),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30)
            ],),
          ),
        ),
      ),
    );
  }
}
