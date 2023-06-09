// ignore_for_file: prefer_const_constructors, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'card.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        drawer: Drawer(
          child: SingleChildScrollView(
            scrollDirection: Axis.vertical,
          child: Column(children: <Widget>[
            ListView(
              shrinkWrap: true,
              padding: EdgeInsets.zero,
              children: [
                Container(
                  child: DrawerHeader(child: Text('Profile'),
                  decoration:BoxDecoration(
                    color: Colors.blueGrey[200],
                ),
                ),
                ),
                ListTile(
                  title: Text('favourites'),
                  onTap: () {},
                ),
                ListTile(
                  title: Text('title'),
                  onTap: () {},
                ),
              ],
            ),
          ],),
          ),
        ),
        backgroundColor: Colors.white,
        appBar: AppBar(
          leading: Builder(
            builder: (context) => IconButton(
              icon: Icon(Icons.menu_rounded),
              iconSize: 30,
              color: Colors.blueGrey[700],
              onPressed: () => Scaffold.of(context).openDrawer(),
            ),
          ),
          title: Text('Home page'),
          titleTextStyle: TextStyle(color: Colors.blueGrey[700], fontSize: 25, fontWeight: FontWeight.bold),
          centerTitle: true,
          backgroundColor: Colors.white70, 
            ),
            floatingActionButton: FloatingActionButton(onPressed: () {
              Navigator.pushNamed(context, '/');
            },),
      body: Padding(padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 300,
            child: ListView.separated(
              itemCount: 10,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, int index) {
                return card('pancakes');
            }, 
              separatorBuilder: (BuildContext context, int index) {
                return const Divider(
                  thickness: 20,
            );
            },
            ),

          ),
          Divider(height: 20,),
          Container(
            height: 800,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 200,
                childAspectRatio: 3/2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20), 
              itemCount: 6,
              scrollDirection: Axis.vertical,
              itemBuilder: (context, index) {
                return Container(
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    color: Colors.blue[50],
                    borderRadius: BorderRadius.circular(15)),);
              },
            ),

          )
        ],
      ),
      ),
      //ListView( 
      //   shrinkWrap: true,
      //   scrollDirection: Axis.vertical,
      //   physics: AlwaysScrollableScrollPhysics(),
      //   children: [
      //     Text('Cuisines', style: TextStyle(
      //     fontSize: 30, fontWeight: FontWeight.w600, color: Colors.blueGrey[700]),),
      //     card('pancake'),
      //     card('pasta'),
      //      card('biryani'),
      //     card('2'),
      //      card('1'),
      //     card('2'),
      //      card('1'),
      //     card('2'),
      //      card('1'),
      //     card('2'),
      //      card('1'),
      //     card('2'),

      //   ],
      //   ),),
    ),);
  }
}