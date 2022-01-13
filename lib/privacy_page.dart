import 'package:flutter/material.dart';

class PolicyPage extends StatelessWidget {
  const PolicyPage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Policy'),
         backgroundColor: Colors.teal,
      ),
      body: Text(
        'This is the about page. Write your policy information here',
        style: Theme.of(context).textTheme.headline6,
      
      ),
    );
  }
}