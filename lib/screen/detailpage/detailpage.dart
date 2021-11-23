// ignore_for_file: prefer_const_constructors, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:ten11_clone/model/itemlist.dart';
import 'package:ten11_clone/screen/detailpage/simlaritems.dart';
import 'package:ten11_clone/screen/homepage.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key, required this.item}) : super(key: key);
  final item;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    print(item);
    return Scaffold(
      body: CustomScrollView(slivers: [
        SliverAppBar(
          elevation: 0,
          title: Align(
            alignment: Alignment.topRight,
            child: Icon(Icons.shopping_bag_outlined),
          ),
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
          leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: (){Navigator.popUntil(context, ModalRoute.withName('/'));}),
          flexibleSpace: FlexibleSpaceBar(
            background: Image.asset(
              item.path,
              package: 'Ten11 Clone',
              fit: BoxFit.cover,
            ),
          ),
          pinned: true,
          expandedHeight: MediaQuery.of(context).size.height * 0.75,
        ),
        SliverList(
            delegate: SliverChildListDelegate([
          Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              color: Colors.white,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "New In",
                        style: TextStyle(
                            fontSize: 17, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text("US ${item.price}",
                              style: TextStyle(
                                  fontSize: 17, fontWeight: FontWeight.bold)),
                          Icon(Icons.bookmark_border_outlined)
                        ],
                      )
                    ],
                  ),
                  Text(
                    'Men Short Sleeves Loose Shirt',
                    textAlign: TextAlign.left,
                  ),
                  Container(
                    margin: EdgeInsets.only(top: 10),
                    width: MediaQuery.of(context).size.width,
                    height: 130,
                    child: ListView(
                        physics: AlwaysScrollableScrollPhysics(),
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 10),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 60,
                                  child: Image.asset(
                                    item.path,
                                    package: 'Ten11 Clone',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Text('Blue'),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 10),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 60,
                                  child: Image.asset(
                                    item.path,
                                    package: 'Ten11 Clone',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Text('Red')
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 10),
                            child: Column(
                              children: [
                                SizedBox(
                                  width: 60,
                                  child: Image.asset(
                                    item.path,
                                    package: 'Ten11 Clone',
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                Text('Gray')
                              ],
                            ),
                          ),
                        ]),
                  ),
                  Center(
                    child: Text(
                      '5 Colors available',
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                      margin: EdgeInsets.only(
                        top: 10,
                      ),
                      child: Text('Code. 2238494557')),
                  Text(
                      'Stretch Cotton T-shirt Featuring A crew-Neck and Short Sleeves'),
                  Container(
                    margin: EdgeInsets.only(top: 20, bottom: 10),
                    child: Text('Similar items',
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.bold)),
                  ),
                  SizedBox(height: size.height * 0.5, child: SimilarItems()),
                ],
              )),
        ]))
      ]),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.08,
        padding: EdgeInsets.symmetric(horizontal: 5.0),
        color: Colors.white,
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              InkWell(
                  onTap: () {},
                  child: Container(
                      color: Colors.black,
                      height: MediaQuery.of(context).size.height * 0.06,
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Center(
                          child: Text(
                        'Add to bag',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold),
                      )))),
              InkWell(
                onTap: () {},
                child: Container(
                    width: MediaQuery.of(context).size.height * 0.06,
                    height: MediaQuery.of(context).size.height * 0.06,
                    decoration: BoxDecoration(border: Border.all(width: 1)),
                    child: Icon(
                      Icons.share_outlined,
                      size: 17,
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}
