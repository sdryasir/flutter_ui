// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MemberProfileScreen extends StatelessWidget {
  const MemberProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Profile'),
        elevation: 6,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CircleAvatar(
              radius: 70,
              backgroundImage: AssetImage('assets/avatar.png'),
            ),
            SizedBox(height: 10),
            ListTile(
              title: Text('Yasir Ali'),
              subtitle: Text('Gold Member'),
              leading: Icon(Icons.person),
              trailing: Icon(Icons.diamond),
            ),
            SizedBox(height: 3),
            ListTile(
              title: Text('Gather Nowshehra'),
              subtitle: Text('Currently lives in Saudia Arabia'),
              leading: Icon(Icons.location_city),
            ),
            SizedBox(height: 10),
            DefaultTabController(
              length: 3,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const TabBar(
                    tabs: [
                      Tab(text: "Donations"),
                      Tab(text: "Suggestions"),
                    ],
                  ),
                  SizedBox(
                    //Add this to give height
                    height: MediaQuery.of(context).size.height * 0.50,
                    child: const TabBarView(
                      children: [
                        Text("Donation History"),
                        Text("Suggestions and Complaints"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
