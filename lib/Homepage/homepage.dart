import 'package:mini_project/Homepage/products_data.dart';
// import 'package:mini_project/Homepage/products1.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int currentIndex = 0;
  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Container(
            height: 250,
            width: MediaQuery.of(context).size.width * 1,
            color: Color(0xff2A4BA0),
            child: Column(children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.only(top: 50, left: 20),
                    child: const Text(
                      "Hey, Umer",
                      style: TextStyle(
                          fontSize: 20,
                          fontFamily: "Manrope",
                          color: Colors.white),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    margin: EdgeInsets.only(top: 40, right: 15),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.shopping_bag_outlined,
                        color: Colors.white,
                        size: 26,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                padding:
                    EdgeInsets.only(left: 12, right: 12, top: 14, bottom: 10),
                // margin: EdgeInsets.all(25),
                height: 75,
                width: double.infinity,
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      borderSide: BorderSide.none,
                    ),
                    hintStyle: TextStyle(color: Color(0xff8891A5)),
                    hintText: "Search your things here...",
                    prefixIcon: Icon(
                      Icons.search_rounded,
                      size: 20.0,
                      color: Colors.white,
                    ),
                    filled: true,
                    fillColor: Color(0xff153075),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 5.0,
                      horizontal: 5.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding:
                    EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
                child: ListTile(
                  title: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 20),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "DELIVER TO",
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.white60,
                                fontFamily: "Manrope",
                              ),
                            ),
                            Text(
                              " WITHIN",
                              style: TextStyle(
                                fontSize: 11,
                                color: Colors.white60,
                                fontFamily: "Manrope",
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 4),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: Row(
                              children: [
                                Text(
                                  "Green Way 3000, Sylhet",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontFamily: "Manrope",
                                  ),
                                ),
                                SizedBox(width: 10),
                                Transform.rotate(
                                  angle: 4.70,
                                  child: Icon(
                                    Icons.arrow_back_ios_new,
                                    color: Colors.white,
                                    size: 10,
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: Row(
                              children: [
                                Text(
                                  "1 HOUR",
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.white,
                                    fontFamily: "Manrope",
                                  ),
                                ),
                                SizedBox(width: 10),
                                Transform.rotate(
                                  angle: 4.70,
                                  child: Icon(
                                    Icons.arrow_back_ios_new,
                                    color: Colors.white,
                                    size: 10,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ])),
        Padding(
          padding:
              const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16),
                        color: Colors.amber[300],
                      ),
                      width: 250,
                      height: 120,
                    ),
                    Positioned(
                      left: 20,
                      bottom: 20,
                      top: 20,
                      child: Container(
                        width: 70,
                        height: 10,
                        child: Image.network(
                            "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQH0kUDNYvhHwx6OW1jg7_6TYNkSeoZV7xFO3i5P8cYNms3T6mcGSLQVjNcr72h6GyjPsY&usqp=CAU"),
                      ),
                    ),
                    Positioned(
                      left: 110,
                      bottom: 20,
                      top: 20,
                      child: Container(
                        child: Column(
                          children: [
                            Text(
                              "Get ",
                              style: TextStyle(fontSize: 15),
                            ),
                            Text("50% OFF",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold)),
                            Text(
                              "on first 3 orders",
                              style: TextStyle(fontSize: 15),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 10,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xffffc83a),
                  ),
                  height: 120,
                  width: 200,
                  child: Text(
                    "346 USD                your total saving",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
                Padding(padding: EdgeInsets.only(left: 10)),
                Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16),
                    color: Color(0xffe4ddcb),
                  ),
                  height: 120,
                  width: 200,
                  child: Text(
                    "215 HRS                your time saved",
                    style: TextStyle(fontSize: 20),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 10, right: 180, bottom: 15),
          child: Text(
            "Recommended",
            textAlign: TextAlign.right,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontFamily: "Manrope",
                fontSize: 30),
          ),
        ),
        Expanded(
          child: GridB(),
        ),
      ]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        selectedItemColor: Colors.black, // Set the selected item color
        unselectedItemColor: Colors.black,
        onTap: onTabTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.more_horiz),
            label: 'More',
          ),
        ],
      ),
    );
  }
}
