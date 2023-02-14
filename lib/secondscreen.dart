import 'package:cafeapplication/bevergeslist.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'first_screen.dart';
import 'foodlist.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

Widget getCard(String img,String title,String $price) {
  return Container(
    margin: EdgeInsets.fromLTRB(17.5, 0, 0, 0),
    height: 250,
    width: 170,
    // color: Colors.red,
    child: Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
        //set border radius more than 50% of height and width to make circle
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(13.0),
            child: Image.asset(
              img,
              fit: BoxFit.cover,
              height: double.infinity,
              width: double.infinity,
            ),
          ),
          Container(
            margin: EdgeInsets.fromLTRB(10, 180, 0, 0),
            child: Text(
              title,
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          InkWell(
            onTap: (() {}),
            child: Container(
              margin: EdgeInsets.fromLTRB(90, 10, 0, 0),
              padding: EdgeInsets.fromLTRB(10, 6, 10, 6),
              decoration: BoxDecoration(
                  // border: Border.all(),
                  borderRadius: BorderRadius.circular(40),
                  // color: Color.from3ARGB(255, 4, 32, 55)
                  color: Colors.white),
              child: Text(
                $price,
                style: TextStyle(color: Colors.black),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}

var height, width = 0.0;
Color clr = Colors.white;
Color clr1 = Color.fromARGB(255, 225, 225, 225);
Color clr2 = Color.fromARGB(255, 225, 225, 225);
Color clr3 = Color.fromARGB(255, 225, 225, 225);
Color clr4 = Color.fromARGB(255, 225, 225, 225);
Color clr5 = Color.fromARGB(255, 225, 225, 225);
Color clr6 = Color.fromARGB(255, 225, 225, 225);

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Menu',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Column(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 30, 0, 20),
                      height: 50,
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color.fromARGB(255, 225, 225, 225),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 40,
                            width: 80,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: clr1,
                            ),
                            margin: EdgeInsets.only(left: 15),
                            child: InkWell(
                              onTap: (()  {
                                setState(() {
                                  clr1 = Color.fromARGB(255, 219, 136, 164);
                                  clr2 = Color.fromARGB(255, 225, 225, 225);
                                });
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const FoodList()),
                                );
                              }),
                              child: Text('Foods'),
                            ),
                          ),
                          Container(
                            height: 40,
                            width: 80,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: clr2,
                            ),
                            margin: EdgeInsets.only(right: 15),
                            child: InkWell(
                              onTap: (() {
                                setState(() {
                                  clr2 = Color.fromARGB(255, 219, 136, 164);
                                  clr1 = Color.fromARGB(255, 225, 225, 225);
                                });
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const BevergesList()),
                                );
                              }),
                              child: Text('Drinks'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.fromLTRB(0,0,0,20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 70,
                        width: 180,
                        // color: Colors.red,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: clr3,
                        ),
                        // margin: EdgeInsets.only(left: 15),
                        child: InkWell(
                          onTap: (() {
                            setState(() {
                              clr3 = Colors.black;
                              clr4 = Color.fromARGB(255, 225, 225, 225);
                              clr6 = Colors.black;
                              clr5 = Color.fromARGB(255, 225, 225, 225);
                            });
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const BevergesList()),
                            );
                          }),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(7),
                                margin: EdgeInsets.fromLTRB(10, 0, 20, 0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  color: Colors.white,
                                ),
                                height: 50,
                                width: 50,
                                child: Image.asset(
                                  'assets/images/iced-coffee-s.png',
                                  scale: 1,
                                ),
                              ),
                              Text(
                                'Signatured',
                                style: TextStyle(color: clr5,fontSize: 17),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        height: 70,
                        width: 180,
                        // color: Colors.red,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(60),
                          color: clr4,
                        ),
                        margin: EdgeInsets.only(left: 15),
                        child: InkWell(
                          onTap: (() {
                            setState(() {
                              clr4 = Colors.black;
                              clr3 = Color.fromARGB(255, 225, 225, 225);
                              clr5 = Colors.black;
                              clr6 = Color.fromARGB(255, 225, 225, 225);
                            });
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const BevergesList()),
                            );
                          }),
                          child: Row(
                            children: [
                              Container(
                                padding: EdgeInsets.all(7),
                                margin: EdgeInsets.fromLTRB(10, 0, 20, 0),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(60),
                                  color: Colors.white,
                                ),
                                height: 50,
                                width: 50,
                                child: Image.asset(
                                  'assets/images/iced-coffee-s.png',
                                  scale: 1,
                                ),
                              ),
                              Text(
                                'Iced Coffee',
                                style: TextStyle(color: clr6,fontSize: 17),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Expanded(
              child: Container(
                // width: 170,
                child: ListView(
                  scrollDirection: Axis.vertical,
                  physics: const BouncingScrollPhysics(),
                  children: [
                    Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [

                            getCard('assets/images/cold-coffee-1.jpg','Kupi Susu \nBrutal','\$ 2.05'),
                            getCard('assets/images/cold-coffee-2.jpg','Caramel\n Santuy','\$ 2.95')
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            getCard('assets/images/cold-coffee-3.jpg','Cappucino \nitaliano','\$ 2.15'),
                            getCard('assets/images/cold-coffee-4.jpg','Javachip \nFrappingo','\$ 2.75')
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            getCard('assets/images/cold-coffee-5.jpg','Espresso \nShot','\$ 2.75'),
                            getCard('assets/images/cold-coffee-1.jpg','Hot Velvet \nCoffee','\$3.24')
                          ],
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            getCard('assets/images/cold-coffee-2.jpg','French \nVanilla','\$ 1.98'),
                            getCard('assets/images/cold-coffee-3.jpg','Hazelnut \nCoffee','\$ 2.39')
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
