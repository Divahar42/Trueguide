import 'package:flutter/material.dart';



class LanguageSelectionScreen extends StatefulWidget {
  @override
  _LanguageSelectionScreenState createState() =>
      _LanguageSelectionScreenState();
}

class _LanguageSelectionScreenState extends State<LanguageSelectionScreen> {
  String _selectedLanguage = 'English';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Select Language"),
        backgroundColor: Colors.purple.shade100,
        elevation: 0,
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [Colors.white, Colors.pink.shade100],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Top Icon
              Image.asset(
                'assets/language.png', // Replace with your asset image
                height: 80,
              ),

              SizedBox(height: 16),

              // Title
              Text(
                "Select Language",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 8),

              // Subtitle
              Text(
                "True Guide supports multiple languages to enhance your experience. Please select your preferred language to continue.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 14, color: Colors.black54),
              ),

              SizedBox(height: 24),

              // Language Selection
              _buildLanguageTile('English', 'A', 'English'),
              _buildLanguageTile('தமிழ்', 'த', 'Tamil'),
              _buildLanguageTile('हिंदी', 'आ', 'Hindi'),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLanguageTile(String language, String iconText, String value) {
    return Card(
      elevation: 2,
      child: RadioListTile(
        title: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.black,
              child: Text(iconText, style: TextStyle(color: Colors.white)),
            ),
            SizedBox(width: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(language, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                Text(value, style: TextStyle(fontSize: 14, color: Colors.black54)),
              ],
            ),
          ],
        ),
        value: value,
        groupValue: _selectedLanguage,
        onChanged: (String? newValue) {
          setState(() {
            _selectedLanguage = newValue!;
          });
        },
        activeColor: Colors.purple,
      ),
    );
  }
}