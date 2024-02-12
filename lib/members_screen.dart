// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_ui/member_profile_screen.dart';

class MembersScreen extends StatelessWidget {
  const MembersScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Members"),
          elevation: 6,
        ),
        body: ListView.builder(
            itemCount: 15,
            itemBuilder: (context, index) {
              return ListTile(
                leading: CircleAvatar(
                  backgroundImage: AssetImage('assets/avatar.png'),
                ),
                title: Text('Yasir Ali'),
                subtitle: Text('Gather'),
                trailing: Icon(Icons.keyboard_arrow_right_rounded),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MemberProfileScreen(),
                    ),
                  );
                },
              );
            }));
  }
}
