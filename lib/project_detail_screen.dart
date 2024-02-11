// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class ProjectDetailScreen extends StatelessWidget {
  const ProjectDetailScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Project Detail"),
      ),
      body: Column(
        children: [
          Image.asset('assets/projects/girlwriting.jpg'),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 15),
                  Text(
                    "Winter Camp 2024",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 22),
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(6),
                          color: Colors.green),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 0),
                      child: Text(
                        "Budget : 58000",
                        style: TextStyle(color: Colors.white, fontSize: 12),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                      "In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content. In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content."),
                  SizedBox(height: 15),
                  Column(
                    children: [
                      Row(
                        children: [
                          Text("Start Date"),
                          SizedBox(width: 8),
                          Text("22/12/2018")
                        ],
                      ),
                      Row(
                        children: [
                          Text("Locations"),
                          SizedBox(width: 8),
                          Text("Maddar, Gather, Tandi")
                        ],
                      ),
                      Row(
                        children: [
                          Text("Supervisor"),
                          SizedBox(width: 8),
                          Text("Mr. Qaiser, Mr.Yasir, Mr. Basit")
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

Widget _tag(String tag, VoidCallback onPressed) {
  return InkWell(
    onTap: onPressed,
    child: Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6), color: Colors.green),
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
      child: Text(
        tag,
        style: TextStyle(color: Colors.white, fontSize: 12),
      ),
    ),
  );
}
