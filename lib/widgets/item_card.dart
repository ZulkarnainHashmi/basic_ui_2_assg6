// lib/widgets/item_card.dart
import 'package:flutter/material.dart';

class ItemCard extends StatelessWidget {
  final String title;
  final String subtitle;
  final VoidCallback onTap; // Point 3: User interaction ke liye function

  // Constructor: Jo data HomeScreen se aayega use receive karne ke liye
  const ItemCard({
    Key? key,
    required this.title,
    required this.subtitle,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Point 1: Card Widget ka use kiya hai proper shadow ke sath
    return Card(
      elevation: 3, // Card ki shadow depth
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6), // Point 4: Proper Spacing
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10), // Rounded corners
      ),
      child: ListTile(
        // Leading: Item ke naam ka pehla akshar gol circle me dikhega
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).primaryColor,
          foregroundColor: Colors.white,
          child: Text(title[0].toUpperCase()),
        ),
        // Title: Bold text me task ka naam
        title: Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 16,
          ),
        ),
        // Subtitle: Chote aksharon me description
        subtitle: Text(
          subtitle,
          maxLines: 1,
          overflow: TextOverflow.ellipsis, // Agar text bada ho toh ... dikhega
        ),
        // Trailing: Right side me ek chota arrow icon
        trailing: const Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: Colors.grey,
        ),
        // Point 3: Item Tap Handling
        onTap: onTap, 
      ),
    );
  }
}