import 'package:flutter/material.dart';


class SpecialDayPosterScreen extends StatefulWidget {
  @override
  _SpecialDayPosterScreenState createState() => _SpecialDayPosterScreenState();
}

class _SpecialDayPosterScreenState extends State<SpecialDayPosterScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Special Day Poster"),
        backgroundColor: Colors.purple[100],
        actions: [
          IconButton(icon: Icon(Icons.favorite), onPressed: () {}),
          IconButton(icon: Icon(Icons.archive), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildSearchBar(),
              SizedBox(height: 20),
              _buildSectionTitle("Today Poster"),
              _buildPosterCard(context, "Human Rights Day", "10-12-2024", "assets/img.png"),
              _buildSectionTitle("Yesterday Poster"),
              _buildPosterCard(context, "International Corruption Day", "09-12-2024", "assets/img.png"),
              _buildSectionTitle("Older Poster"),
              Row(
                children: [
                  Expanded(child: _buildSmallPoster(context, "assets/img.png")),
                  SizedBox(width: 10),
                  Expanded(child: _buildSmallPoster(context, "assets/img.png")),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildSearchBar() {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: "Enter Date",
              border: OutlineInputBorder(),
            ),
          ),
        ),
        SizedBox(width: 10),
        ElevatedButton(
          onPressed: () {},
          child: Text("Search"),
        )
      ],
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
    );
  }

  Widget _buildPosterCard(BuildContext context, String title, String date, String imagePath) {
    return Card(
      elevation: 4,
      child: ListTile(
        leading: Image.asset(imagePath, width: 50, height: 50, fit: BoxFit.cover),
        title: Text(title),
        subtitle: Text(date),
        trailing: IconButton(
          icon: Icon(Icons.download),
          onPressed: () => _showPosterDialog(context, title, imagePath),
        ),
        onTap: () => _showPosterDialog(context, title, imagePath),
      ),
    );
  }

  Widget _buildSmallPoster(BuildContext context, String imagePath) {
    return GestureDetector(
      onTap: () => _showPosterDialog(context, "Older Poster", imagePath),
      child: Image.asset(imagePath, width: 100, height: 100),
    );
  }

  void _showPosterDialog(BuildContext context, String title, String imagePath) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Column(
            children: [
              Image.asset(imagePath, width: 100, height: 150),
              Text(title, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ],
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("With Logo"),
                  Radio(value: true, groupValue: true, onChanged: (value) {}),
                  Text("Without Logo"),
                  Radio(value: false, groupValue: true, onChanged: (value) {}),
                ],
              ),
              TextField(
                decoration: InputDecoration(labelText: "Enter Your Name"),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text("Cancel"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text("Download Image"),
            ),
          ],
        );
      },
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.category), label: "Category"),
        BottomNavigationBarItem(icon: Icon(Icons.featured_play_list), label: "Features"),
        BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: "Account"),
      ],
      selectedItemColor: Colors.purple,
    );
  }
}