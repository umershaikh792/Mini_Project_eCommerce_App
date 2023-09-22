import 'package:flutter/material.dart';

class GridA extends StatefulWidget {
  const GridA({super.key});

  @override
  State<GridA> createState() => _GridAState();
}

class _GridAState extends State<GridA> {
  final List<Map<String, dynamic>> products = [
    {
      "Product": "Fuits",
      "Text": "Tasty and Yummy",
      "Price": "USD 10:00",
      "ImageURL":
          "https://freeiconshop.com/wp-content/uploads/edd/image-outline-filled.png",
    },
    {
      "Product": "Fuits",
      "Text": "Tasty and Yummy",
      "Price": "USD 10:00",
      "ImageURL":
          "https://freeiconshop.com/wp-content/uploads/edd/image-outline-filled.png",
    },
    {
      "Product": "Fuits",
      "Text": "Tasty and Yummy",
      "Price": "USD 10:00",
      "ImageURL":
          "https://freeiconshop.com/wp-content/uploads/edd/image-outline-filled.png",
    },
    {
      "Product": "Fuits",
      "Text": "Tasty and Yummy",
      "Price": "USD 10:00",
      "ImageURL":
          "https://freeiconshop.com/wp-content/uploads/edd/image-outline-filled.png",
    },
    {
      "Product": "Fuits",
      "Text": "Tasty and Yummy",
      "Price": "USD 10:00",
      "ImageURL":
          "https://freeiconshop.com/wp-content/uploads/edd/image-outline-filled.png",
    },
    {
      "Product": "Fuits",
      "Text": "Tasty and Yummy",
      "Price": "USD 10:00",
      "ImageURL":
          "https://freeiconshop.com/wp-content/uploads/edd/image-outline-filled.png",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      // physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        mainAxisExtent: 260,
      ),
      itemCount: products.length,
      itemBuilder: (BuildContext context, int i) {
        // Use 'i' instead of 'index'
        return Container(
          padding: EdgeInsets.only(top: 10, left: 15, right: 15),
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.yellow,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  blurRadius: 5,
                  spreadRadius: 1,
                )
              ]),
          child: Column(
            children: [
              InkWell(
                  onTap: () {},
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Image.network(
                        "${products[i]['ImageURL']}",
                        height: 130,
                        width: 130,
                      ),
                    ),
                  )),
              Padding(
                padding: EdgeInsets.only(bottom: 2),
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text("${products[i]['Product']}",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.w500)),
                ),
              ),
              Container(
                  alignment: Alignment.centerLeft,
                  child: Text("${products[i]['Text']}",
                      style: TextStyle(color: Colors.black, fontSize: 12))),
              Container(
                padding: EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "${products[i]['Price']}",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        padding: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: Color(0xff2a4ba0),
                          borderRadius: BorderRadius.circular(50),
                        ),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
 
// ClipRRect(
//   borderRadius: BorderRadius.only(
//       topLeft: Radius.circular(20),
//       topRight: Radius.circular(20)),
//   child: Image.network("${products[i]['ImageURL']}",
//       fit: BoxFit.contain,),
// ),

