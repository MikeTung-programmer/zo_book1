import 'package:flutter/material.dart';
class LaPage extends StatefulWidget {
  @override
  _LaPageState createState() => _LaPageState();
}

class _LaPageState extends State<LaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('La',style: TextStyle(fontSize: 15.0,color: Colors.cyan),
        ),
        backgroundColor: Colors.brown,
      ),
      body:ListView.separated(

      itemCount: 10,
    itemBuilder: (context, index) {
    return ListTile(title: Text('$index. Ngai Ngam Keng Ing'),
    onTap:(){},
    );
    },
    separatorBuilder: (context, index) {
    return Divider();
    },
    ));
    }
  }

