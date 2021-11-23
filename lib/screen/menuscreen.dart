// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: Colors.white,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                  flex: 2,
                  child: TabBar(
                    tabs: [
                      Tab(child: Text('Women', style: TextStyle(fontSize: 17, fontWeight:FontWeight.bold) ),),
                      Tab(child: Text('Men',style: TextStyle(fontSize: 17, fontWeight:FontWeight.bold)),),
                    ],
                  ),
                ),
                Expanded(
                  flex: 2,
                     child: Align(
                      alignment: Alignment.centerRight,
                      child: IconButton(
                          onPressed: () => Navigator.of(context).pop(),
                          icon: Icon(Icons.close, size: 30)),
                    ),
                  
                )
              ],
            )),
        body: const TabBarView(
          children: [
            Icon(Icons.directions_car),
            Icon(Icons.directions_transit),
          ],
        ),
      ),
    );
  }
}
