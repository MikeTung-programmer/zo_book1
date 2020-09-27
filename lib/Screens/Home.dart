import 'package:flutter/material.dart';
import 'package:zo_book/Screens/ZoLaPage.dart';
class Inn extends StatefulWidget {
  @override
  _InnState createState() => _InnState();
}

class _InnState extends State<Inn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      appBar: AppBar(
        title: Text('Zo La Bu'),
        backgroundColor: Colors.green,
      ),
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                  gradient: LinearGradient(colors: <Color>[
                    Colors.green,
                    Colors.teal,
                  ])
              ),
              child: Text('Header'),
            ),
            ZoDrawerList(Icons.contact_mail,'Contact',()=>{}),
            ZoDrawerList(Icons.details,'About',()=>{}),
            ZoDrawerList(Icons.settings,'Setting',()=>{}),
            ZoDrawerList(Icons.developer_mode,'App Bawl',()=>{}),
            ZoDrawerList(Icons.edit,'ZoLa Edit teng',()=>{}),],
        ),
      ),

      body: new Container(
        //margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 16.0),
        child: Column(
          children: <Widget>[
            new Card(
              margin: EdgeInsets.only(right: 270.0),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context,MaterialPageRoute(builder: (context)=>LaPage()),);
                },
                child: Expanded(
                  child: Text(
                    'Zo La',
                    textDirection: TextDirection.ltr,
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.lightGreen,
                      fontSize: 30.0,
                      backgroundColor: Colors.black45,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 30.0,),
            new Card(
              margin: EdgeInsets.only(right: 240.0),
              child: RaisedButton(
                  onPressed: () {},
                  child: Expanded(
                    child: Text(
                      'La Kam',
                      textDirection: TextDirection.ltr,
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        color: Colors.lightGreen,
                        fontSize: 30.0,
                        backgroundColor: Colors.black45,
                      ),
                    ),)

              ),
            ),
            SizedBox(height: 30.0,),
            new Card(
              margin: EdgeInsets.only(right: 160.0),
              child: RaisedButton(
                onPressed: () {},
                child: Expanded(
                  child: Text(
                    'Guitar Chords',
                    textDirection: TextDirection.ltr,
                     style: TextStyle(
                      decoration: TextDecoration.none,
                      color: Colors.lightGreen,
                      fontSize: 30.0,
                      backgroundColor: Colors.black45,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),

      ),
    );
  }
}
// ignore: must_be_immutable
class ZoDrawerList extends StatelessWidget {
  IconData icon;
  String text;
  Function onTap;
  ZoDrawerList(this.icon,this.text,this.onTap);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        splashColor: Colors.deepPurpleAccent,
        onTap:()=>{},
        focusColor: Colors.lightGreen,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                Icon(icon),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(text,style: TextStyle(
                    fontSize: 16.0,
                  ),),
                ),

              ],
            ),
            Icon(Icons.arrow_right),
          ],

        ),
      ),
    );
  }
}

