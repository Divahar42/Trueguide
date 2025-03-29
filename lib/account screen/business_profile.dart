import 'package:flutter/material.dart';
import 'package:true_guide/account%20screen/account_screen.dart';



class BusinessProfileScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: (){
          Navigator.pop(context);
        }, icon: Icon(Icons.arrow_back_ios,color: Colors.purple,)),
        title: Text('Business Profile',style: TextStyle(color: Colors.purple),),

      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          buildListTile(
            icon: Icons.business,
            title: 'Business Name and Address',
            subtitle: 'Smart Global',
          ),
          buildListTile(
            icon: Icons.phone,
            title: 'Business Contact Detail and Timing',
            subtitle: '+91 1122334455',
          ),
          buildListTile(
            icon: Icons.language,
            title: 'Business Website and Social Media Links',
            subtitle: 'www.smartglobal.com',
          ),
          buildListTile(
            icon: Icons.category,
            title: 'Business Categories',
            subtitle: 'Architect',
          ),
          buildListTile(
            icon: Icons.local_offer,
            title: 'Add Offers',
            subtitle: '',
          ),
          buildListTile(
            icon: Icons.photo,
            title: 'Photos and Videos',
            subtitle: '',
          ),
        ],
      ),

    );
  }

  Widget buildListTile({required IconData icon, required String title, String? subtitle}) {
    return ListTile(
      leading:  Icon(icon, color: Colors.purple),
      title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
      subtitle: subtitle != null ? Text(subtitle) : null,
      trailing: Icon(Icons.arrow_forward_ios, size: 16),
      onTap: () {},
    );
  }
}