import 'package:flutter/material.dart';

class ListViewPage extends StatelessWidget {
  String? name, email, mobile,city;

  ListViewPage(this.name, this.email, this.mobile, this.city);
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('User Info'),
      ),
      body: Card(
        color: Colors.blue,
        elevation: 4, // Card elevation (shadow)
        margin: EdgeInsets.only(top: 16, bottom: 600 , left: 16 , right: 16), // Card margin
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ListTile(
              title: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Text(name.toString(),
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              subtitle: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(email.toString(),
                      style: TextStyle(fontSize: 18),textAlign: TextAlign.start,),
                Text(mobile.toString() ,
                      style: TextStyle(fontSize: 18),textAlign: TextAlign.start),
                  Text(city.toString(),
                    style: TextStyle(fontSize: 18),textAlign: TextAlign.start),
                ],
              ),
              leading: CircleAvatar(
                child: Icon (Icons.person),
              ),
              // trailing: Text(mobile.toString()), // Text at the left side of the card
            ),],
        ),
      ),
    );
  }
}
