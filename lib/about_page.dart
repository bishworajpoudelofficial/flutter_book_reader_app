import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('About'),
         backgroundColor: Colors.teal,
      ),
      body: Text(
        'This is the about page. Write your about information here',
        style: Theme.of(context).textTheme.headline6,
      
      ),
    );
  }
}