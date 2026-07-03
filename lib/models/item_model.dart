import 'package:flutter/material.dart';

class Item {
  final String title;
  final String subtitle;
  final String imageUrl;

  Item({required this.title, required this.subtitle, required this.imageUrl});
}

class ItemCard extends StatelessWidget {
 final String title;
 final String subtitle;
 final VoidCallback onTap;

  // ignore: prefer_const_constructors_in_immutables
  ItemCard({super.key, required this.title, required this.subtitle, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: EdgeInsets.all(8.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blueAccent,
          child: Text(title[0]),
        ),
        title: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        subtitle: Text(subtitle),
        trailing: Icon(Icons.arrow_forward_ios, size: 16),
        onTap: onTap,
      ),
    );
  }
}
