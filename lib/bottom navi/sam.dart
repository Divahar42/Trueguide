import 'package:flutter/material.dart';


class BusinessProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sri Vishakha Fields'),
        backgroundColor: Colors.purple,
        actions: [
          IconButton(
            icon: Icon(Icons.phone),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.message),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Business Logo and Name
              Row(
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage('https://placeimg.com/100/100/tech'),
                    radius: 30,
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Sri Vishakha Fields',
                        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Verified Listing',
                        style: TextStyle(color: Colors.green),
                      ),
                      Text('5 years in Business'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 10),
              Divider(),
        
              // Services Section
              Text(
                'Our Services',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Chip(label: Text('Real Estate Development')),
                  Chip(label: Text('Construction')),
                  Chip(label: Text('Plotted Development')),
                  Chip(label: Text('Interior Designs')),
                ],
              ),
              SizedBox(height: 10),
              Divider(),
        
              // Products Section
              Text(
                'Our Products',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: [
                  Image.network('https://placeimg.com/200/200/tech'),
                  Image.network('https://placeimg.com/200/200/tech'),
                  Image.network('https://placeimg.com/200/200/tech'),
                  Image.network('https://placeimg.com/200/200/tech'),
                ],
              ),
              SizedBox(height: 10),
              Divider(),
        
              // Photos Section
              Text(
                'Photos',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Image.network('https://placeimg.com/100/100/tech'),
                  SizedBox(width: 5),
                  Image.network('https://placeimg.com/100/100/tech'),
                  SizedBox(width: 5),
                  Image.network('https://placeimg.com/100/100/tech'),
                ],
              ),
              SizedBox(height: 10),
              Divider(),
        
              // Contact Info Section
              Text(
                'Contact Info',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Text('6/125, Poothottam, Ponnegoundenpudur (PO), SS Kulam (via), Coimbatore-641107'),
              SizedBox(height: 5),
              Text('Email: info@srivishakhafields.com'),
              Text('Website: www.srivishakhafields.com'),
              SizedBox(height: 10),
              Divider(),
        
              // Reviews Section
              Text(
                'Reviews',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 5),
              Row(
                children: [
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star, color: Colors.amber),
                  Icon(Icons.star_border),
                  SizedBox(width: 5),
                  Text('4.5/5'),
                ],
              ),
              SizedBox(height: 5),
              Text(
                '“I had a great experience with srivishakhafields. They completed my home renovation on time and exceeded my expectations. Highly professional and transparent in their pricing!”',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              SizedBox(height: 10),
        
              // Inquiry Buttons
              Row(
                children: [
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Send Inquiry'),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('Call Now'),
                  ),
                  SizedBox(width: 10),
                  ElevatedButton(
                    onPressed: () {},
                    child: Text('WhatsApp'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}