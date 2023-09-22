import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Column(children: [
      Expanded(
          flex: 3, // Add flex property here
          child: Container(
              color: Color(0xff2A4BA0),
              child: Column(children: [
                Padding(
                    padding: EdgeInsets.only(top: 10, left: 10, right: 10),
                    child: ListTile(
                      leading: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            "Hey, Umer",
                            style: TextStyle(
                              fontSize: 18,
                              color: Colors.white,
                              fontFamily: "Manrope",
                            ),
                          ),
                        ],
                      ),
                      title: SizedBox(width: 100),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(
                            Icons.search_off_rounded,
                            color: Colors.white,
                            size: 26,
                          ),
                          SizedBox(width: 10), // Add spacing
                          Icon(
                            Icons.shopping_bag_outlined,
                            color: Colors.white,
                            size: 26,
                          ),
                        ],
                      ),
                    )),
                SizedBox(height: 8),
                Container(
                    margin: EdgeInsets.only(left: 25, right: 25),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Shop",
                            style: TextStyle(
                              fontSize: 50,
                              color: Colors.white,
                              fontFamily: 'Manrope',
                              fontWeight: FontWeight.normal
                            ),
                          ),
                          Row(children: [
                            Text("By Category",
                                style: TextStyle(
                                  fontSize: 50,
                                  color: Colors.white,
                                  fontFamily: 'Manrope',
                                  fontWeight: FontWeight.bold
                                ))
                          ])
                        ]))
              ])))
    ])));
  }
}
