import 'package:flutter/material.dart';
import 'package:sliding_up_panel/sliding_up_panel.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

var i = 1;
var p = 2.95;
var m = p;
var a = "2.95";
Color clr = Colors.white;
Color clr1 = Colors.white;
Color clr2 = Colors.white;
Color clr3 = Colors.white;
Color clr4 = Colors.white;
Color clr5 = Colors.white;
Color clr6 = Colors.white;

class _ThirdPageState extends State<ThirdPage> {
  BorderRadiusGeometry radius = const BorderRadius.only(
    topLeft: Radius.circular(24.0),
    topRight: Radius.circular(24.0),
  );

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: height - 100,
              child: SlidingUpPanel(
                panel: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    // color: Colors.grey.shade200,
                  ),
                  child: Column(
                    // scrollDirection: Axis.vertical,
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 5,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black38,
                        ),
                      ),
                      Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.fromLTRB(20, 30, 0, 0),
                          child: Text(
                            'Drink Size',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 10, 10, 0),
                            child: InkWell(
                              onTap: (() {
                                setState(() {
                                  clr = Color.fromARGB(255, 233, 158, 183);
                                  clr1 = Colors.white;
                                  clr2 = Colors.white;
                                });
                              }),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(80),
                                ),
                                color: clr,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                                  child: Column(children: [
                                    Container(
                                        height: 40,
                                        width: 40,
                                        child: Image.asset(
                                            'assets/images/iced-coffee-s.png')),
                                    Container(
                                      child: Text('Basic'),
                                    )
                                  ]),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                            child: InkWell(
                              onTap: (() {
                                setState(() {
                                  clr = Colors.white;
                                  clr2 = Colors.white;
                                  clr1 = Color.fromARGB(255, 233, 158, 183);
                                });
                              }),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(80),
                                ),
                                color: clr1,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                                  child: Column(children: [
                                    Container(
                                        height: 40,
                                        width: 40,
                                        child: Image.asset(
                                            'assets/images/iced-coffee-s.png')),
                                    Container(
                                      child: Text('Middle'),
                                    )
                                  ]),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
                            child: InkWell(
                              onTap: (() {
                                setState(() {
                                  clr = Colors.white;
                                  clr1 = Colors.white;
                                  clr2 = Color.fromARGB(255, 233, 158, 183);
                                });
                              }),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(80),
                                ),
                                color: clr2,
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(20, 15, 20, 15),
                                  child: Column(children: [
                                    Container(
                                        height: 40,
                                        width: 40,
                                        child: Image.asset(
                                            'assets/images/iced-coffee-s.png')),
                                    Container(
                                      child: Text('Large'),
                                    )
                                  ]),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.fromLTRB(20, 30, 0, 0),
                          child: Text(
                            'Toppings',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                      Container(
                        height: 60,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            InkWell(
                              onTap: (() {
                                setState(() {
                                  clr6 = Colors.white;
                                  clr5 = Colors.white;
                                  clr4 = Colors.white;
                                  clr3 = Color.fromARGB(255, 233, 158, 183);
                                });
                              }),
                              child: Container(
                                width: 90,
                                margin: EdgeInsets.fromLTRB(20, 20, 10, 0),
                                decoration: BoxDecoration(
                                    color: clr3,
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: Center(child: Text('boba')),
                              ),
                            ),
                            InkWell(
                              onTap: (() {
                                setState(() {
                                  clr6 = Colors.white;
                                  clr5 = Colors.white;
                                  clr3 = Colors.white;
                                  clr4 = Color.fromARGB(255, 233, 158, 183);
                                });
                              }),
                              child: Container(
                                width: 90,
                                margin: EdgeInsets.fromLTRB(0, 20, 10, 0),
                                decoration: BoxDecoration(
                                    color: clr4,
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: Center(child: Text('Almond')),
                              ),
                            ),
                            InkWell(
                              onTap: (() {
                                setState(() {
                                  clr6 = Colors.white;
                                  clr3 = Colors.white;
                                  clr4 = Colors.white;
                                  clr5 = Color.fromARGB(255, 233, 158, 183);
                                });
                              }),
                              child: Container(
                                width: 90,
                                margin: EdgeInsets.fromLTRB(0, 20, 10, 0),
                                decoration: BoxDecoration(
                                    color: clr5,
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: Center(child: Text('Cheese')),
                              ),
                            ),
                            InkWell(
                              onTap: (() {
                                setState(() {
                                  clr3 = Colors.white;
                                  clr5 = Colors.white;
                                  clr4 = Colors.white;
                                  clr6 = Color.fromARGB(255, 233, 158, 183);
                                });
                              }),
                              child: Container(
                                width: 90,
                                margin: EdgeInsets.fromLTRB(0, 20, 10, 0),
                                decoration: BoxDecoration(
                                    color: clr6,
                                    borderRadius: BorderRadius.circular(20.0)),
                                child: Center(child: Text('Caramel')),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                          alignment: Alignment.topLeft,
                          margin: EdgeInsets.fromLTRB(20, 30, 0, 0),
                          child: Text(
                            'Additional Req',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          )),
                      Container(
                        margin: EdgeInsets.fromLTRB(25, 30, 25, 0),
                        child: Container(
                            decoration: BoxDecoration(
                                // color: Colors.white,
                                border: Border.all(),
                                borderRadius: BorderRadius.circular(40.0)),
                            padding: EdgeInsets.fromLTRB(20, 5, 0, 5),
                            child: TextFormField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Add Your Additional Req',
                              ),
                            )),
                      ),
                    ],
                  ),
                ),
                collapsed: Container(
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 207, 206, 206),
                      // changing radius that we define above
                      borderRadius: radius),
                  // collapsed text
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.only(top: 10),
                        height: 5,
                        width: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.grey,
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 20),
                        child: Text(
                          "Customize Your Drink",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                ),
                // main body or content behind the panel
                body: ListView(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.arrow_back, size: 25),
                          onPressed: () {
                            // ...
                            Navigator.of(context).pop();
                          },
                        ),
                        IconButton(
                          icon: const Icon(Icons.close, size: 25),
                          onPressed: () {
                            // ...
                          },
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          height: 140,
                          width: 120,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              'assets/images/cold-coffee-1.jpg',
                              fit: BoxFit.cover,
                              height: double.infinity,
                              width: double.infinity,
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 20),
                          child: Text(
                            'Caramel Santuy',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10),
                          child: Text(
                            'Buttery caramel syrup meets coffee, milk\nand ice for a rendezvous in the blender.\nThe cream and caramel enjoy with santuy',
                            style: TextStyle(
                                fontSize: 13, fontWeight: FontWeight.w200),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                borderRadius: radius,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                // alignment: Alignment.bottomCenter,
                // color: Colors.black,
                height: 100,
                width: width,
                child: Card(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        // color: Colors.,
                        ),
                    borderRadius: BorderRadius.circular(35.0),
                  ),
                  color: Colors.black,
                  child: Row(
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 10, 0),
                        child: Ink(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                              ),
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(50.0)),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(100.0),
                            onTap: () {
                              setState(() {
                                if (i > 1) {
                                  i = i - 1;
                                  m = m - p;
                                  a = m.toStringAsFixed(2);
                                } else {
                                  i = 1;
                                }
                              });
                            },
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.remove,
                                size: 25.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        height: 30,
                        width: 30,
                        alignment: Alignment.center,
                        // color: Colors.red,
                        child: Text(
                          '$i',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(10, 0, 0, 0),
                        child: Ink(
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                              ),
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(50.0)),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(100.0),
                            onTap: () {
                              setState(() {
                                i = i + 1;
                                m = m + p;
                                a = m.toStringAsFixed(2);
                              });
                            },
                            child: Padding(
                              padding: EdgeInsets.all(10.0),
                              child: Icon(
                                Icons.add,
                                size: 25.0,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(20, 0, 10, 0),
                        child: Ink(
                          decoration: BoxDecoration(
                              // border: Border.all(
                              //   color: Colors.white,
                              // ),
                              color: Color.fromARGB(255, 234, 125, 161),
                              borderRadius: BorderRadius.circular(50.0)),
                          child: InkWell(
                            borderRadius: BorderRadius.circular(100.0),
                            onTap: () {},
                            child: Padding(
                                padding: EdgeInsets.fromLTRB(25, 15, 25, 15),
                                child: Row(
                                  children: [
                                    Text(
                                      'Add To Bag   ',
                                      style: TextStyle(color: Colors.black),
                                    ),
                                    Text(
                                      '\$$a',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                )),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
