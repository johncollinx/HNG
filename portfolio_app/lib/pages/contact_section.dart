import 'package:flutter/material.dart';

class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Contact Me',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ListTile(
              leading: Icon(Icons.email),
              title: Text('john.doe@example.com'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('+1 234 567 8901'),
            ),
            ListTile(
              leading: Icon(Icons.web),
              title: Text('www.johndoe.dev'),
            ),
          ],
        ),
      ),
    );
  }
}
