// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'detailpage/detailpage.dart';
import '../model/itemlist.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.notifications_outlined),
            Image.network(
              'https://www.smart.com.kh/media/2021/03/TEN11-966x320.png',
              width: 70,
            ),
            Icon(Icons.shopping_bag_outlined)
          ],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: size.width,
          child: Column(
            children: [
              Container(
                height: size.height * 0.35,
                child: Image.asset('../../assets/images/promo.jpg',
                    fit: BoxFit.cover, package: 'ten11 clone'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 10.0),
                child: Center(
                  child: Column(
                    children: [
                      Text(
                        "Discover More Styles",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25.0),
                      ),
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "We've got something for everyone. Discover more styles with us!",
                          style: TextStyle(wordSpacing: 1),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5.0, vertical: 15.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          width: size.width * 0.45,
                          child: Image.asset(
                            '../../assets/images/women.jpg',
                            package: 'ten11 clone',
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.4,
                          child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  side: BorderSide(color: Colors.black),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0))),
                              onPressed: () {},
                              child: Text(
                                'Women Collection',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          width: size.width * 0.45,
                          child: Image.asset(
                            '../../assets/images/men.jpg',
                            package: 'ten11 clone',
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.4,
                          child: OutlinedButton(
                              style: OutlinedButton.styleFrom(
                                  side: BorderSide(color: Colors.black),
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0))),
                              onPressed: () {},
                              child: Text(
                                'Men Collection',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                ),
                              )),
                        )
                      ],
                    )
                  ],
                ),
              ),
              //this Week highlight
              Padding(
                padding: EdgeInsets.symmetric(vertical: 10.0),
                child: Center(
                    child: Text(
                  "This Week's Highlights",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
                )),
              ),

              GridView.builder(
                  physics: ScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  itemCount: newLIst.length,
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    mainAxisSpacing: 20,
                    childAspectRatio: 0.6,
                  ),
                  itemBuilder: (context, index) {
                    final item = newLIst[index];
                    print(newLIst.length);
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            PageRouteBuilder(
                                pageBuilder:
                                    (context, animation, secAnimation) =>
                                        DetailPage(item: item),
                                transitionsBuilder:
                                    (context, animation, secAnimation, child) {
                                  const begin = Offset(0.0, 1.0);
                                  const end = Offset.zero;
                                  const curve = Curves.ease;

                                  var tween = Tween(begin: begin, end: end)
                                      .chain(CurveTween(curve: curve));

                                  return SlideTransition(
                                    position: animation.drive(tween),
                                    child: child,
                                  );
                                }));
                      },
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                              width: size.width * .55,
                              padding: EdgeInsets.all(10),
                              child: Image.asset(item.path,
                                  package: 'Ten11 Clone',
                                  width: size.width * 0.45)),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    item.price,
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 15),
                                  ),
                                  Icon(Icons.bookmark_border_outlined)
                                ],
                              )),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10),
                              child: Text('Lorem Imsdfadsf dsafdsafdsafasd',
                                  overflow: TextOverflow.ellipsis))
                        ],
                      ),
                    );
                  })
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu_outlined),
            label: 'Menu',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code_scanner),
            label: 'QR',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          )
        ],
        currentIndex: _selectedIndex,
        fixedColor: Colors.black,
        unselectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}
