import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Message_Screen(),
  ));
}

class Message_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        elevation: 1,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.purple, size: 30),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text('Messages', style: TextStyle(color: Colors.purple)),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Search Bar
            TextField(
              decoration: InputDecoration(
                hintText: "Search in Message",
                prefixIcon: Icon(Icons.search, color: Colors.grey),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25.0),
                  borderSide: BorderSide(color: Colors.grey),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
            SizedBox(height: 10),

            // Filter Buttons
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildFilterButton("All Messages", Colors.purple),
                _buildFilterButton("Leads Messages", Colors.grey.shade300),
                _buildFilterButton("Customer Inquires", Colors.grey.shade300),
              ],
            ),
            SizedBox(height: 15),

            // Messages List
            Expanded(
              child: ListView(
                children: [
                  _buildMessageCard(
                    title: "Lead Messages",
                    message:
                    "You have a new lead from the Architect category.\nName: Rajesh Sharma\nContact: +91 9876543210\nRequirement: Residential Design Consultation.",
                    time: "2 hours ago",
                    color: Colors.red,
                  ),
                  _buildMessageCard(
                    title: "Customer Inquires",
                    message:
                    "From: Priya Verma\nHi, I am interested in the land promotion services.\nCould you provide details about your pricing?",
                    time: "5 mins ago",
                    color: Colors.green,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // Widget for Filter Buttons
  Widget _buildFilterButton(String text, Color color) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 4),
        child: ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            foregroundColor: color == Colors.purple ? Colors.white : Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: Text(text, textAlign: TextAlign.center),
        ),
      ),
    );
  }

  // Widget for Message Cards
  Widget _buildMessageCard({
    required String title,
    required String message,
    required String time,
    required Color color,
  }) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Header with colored label
            Container(
              padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(5),
              ),
              child: Text(title, style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold)),
            ),
            SizedBox(height: 8),

            // Message Content
            Text(message, style: TextStyle(fontSize: 14, color: Colors.black)),
            SizedBox(height: 8),

            // Timestamp
            Align(
              alignment: Alignment.bottomRight,
              child: Text(time, style: TextStyle(fontSize: 12, color: Colors.grey)),
            ),
          ],
        ),
      ),
    );
  }
}