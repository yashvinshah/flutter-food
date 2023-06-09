// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
// import 'item.dart';

// class Card extends StatelessWidget {
// final VoidCallback favourite;
// Card({super.key, required this.favourite,});

  // @override



  Widget card(String title) {
    return Card(
      margin: EdgeInsets.all(30),
      color: Colors.lightBlue[50],
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(90),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0,0,0,15),
            child: Text(title,style: TextStyle(fontSize: 20), ),
          ),
        ],
      ),
    );
  }
// }