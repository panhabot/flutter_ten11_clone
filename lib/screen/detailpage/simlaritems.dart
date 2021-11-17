// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:ten11_clone/model/itemlist.dart';

import 'detailpage.dart';



class SimilarItems extends StatelessWidget {
  const SimilarItems({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return ListView.builder(
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemCount: newLIst.length,
      itemBuilder: (context, index) {
        final item = newLIst[index];
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
                              width: size.width * .60,
                              padding: EdgeInsets.symmetric(horizontal:5),
                              child: Image.asset(item.path,
                                  package: 'Ten11 Clone',
                                  )),
                          Padding(
                              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
      },
    );
  }
}