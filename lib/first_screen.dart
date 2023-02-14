import 'package:cafeapplication/bevergeslist.dart';
import 'package:cafeapplication/foodlist.dart';
import 'package:cafeapplication/secondscreen.dart';
import 'package:cafeapplication/third_page.dart';
import 'package:carousel_indicator/carousel_indicator.dart';
import 'package:floating_bottom_navigation_bar/floating_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';

class FirstScreen extends StatefulWidget {
  const FirstScreen({Key? key}) : super(key: key);

  @override
  State<FirstScreen> createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  int pageIndex = 0;

  List<Widget> _demo = [
    Container(
      height: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          "assets/images/carousal_1.jpg",
          fit: BoxFit.cover,
        ),
      ),
    ),
    Container(
      height: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          "assets/images/carousal_2.jpg",
          fit: BoxFit.cover,
        ),
      ),
    ),
    Container(
      height: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          "assets/images/carousal_3.jpg",
          fit: BoxFit.cover,
        ),
      ),
    ),
    Container(
      height: 200,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.asset(
          "assets/images/carousal_4.jpg",
          fit: BoxFit.cover,
        ),
      ),
    ),
  ];

  // int _selectedIndex = 0;

  // void _onItemTapped(int index) {
  //   setState(() {
  //     _selectedIndex = index;
  //   });
  // }

  // List<Widget> widgetOptions = <Widget>[
  //   Container(
  //     color: Colors.yellow,
  //     height: 300,
  //     width: 300,
  //   ),
  //   Container(
  //     color: Colors.green,
  //     height: 300,
  //     width: 300,
  //   ),
  // ];
  // List<Widget> screen = [
  //   FirstScreen(),
  //   SecondScreen(),
  //   FirstScreen(),
  //   SecondScreen(),
  // ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // bottomNavigationBar: FloatingNavbar(
        //   items: [
        //     FloatingNavbarItem(icon: Icons.home, title: 'Home'),
        //     FloatingNavbarItem(icon: Icons.menu_book_outlined, title: 'Menu'),
        //     FloatingNavbarItem(
        //         icon: Icons.wallet_giftcard_rounded, title: 'Gift'),
        //     FloatingNavbarItem(icon: Icons.person, title: 'User'),
        //   ],
        //   currentIndex: _selectedIndex,
        //   onTap: _onItemTapped,
        // ),
        body: Stack(
          children: [
            ListView(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(30, 10, 0, 0),
                          child: const Text(
                            'Good Morning',
                            style: TextStyle(
                                fontSize: 15, fontFamily: 'RobotoSlab'),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 5, 0, 0),
                          child: const Text(
                            'Jimmy Sullivan',
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'RobotoSlab'),
                          ),
                        ),
                      ],
                    ),
                    Container(
                      margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                      child: RawMaterialButton(
                        onPressed: () {},
                        elevation: 3,
                        fillColor: Colors.white,
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(10),
                        child: const Icon(
                          Icons.email_outlined,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 200,
                      width: 500,
                      child: Stack(
                        children: [
                          Container(
                            height: 200,
                            width: 500,
                            child: PageView(
                              children: _demo,
                              onPageChanged: (index) {
                                setState(() {
                                  pageIndex = index;
                                });
                              },
                            ),
                          ),
                          Container(
                            // margin: EdgeInsets.fromLTRB(10,190, 10,70),
                            padding: EdgeInsets.fromLTRB(12, 0, 10, 70),
                            child: CarouselIndicator(
                              width: 70,
                              space: 20,
                              count: _demo.length,
                              index: pageIndex,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                          padding: EdgeInsets.only(left: 20),
                          child: Text(
                            'Beverages',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                fontFamily: 'RobotoSlab'),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const BevergesList()),
                                );
                              },
                              child: Text(
                                'View All',
                                style: TextStyle(
                                    color: Colors.pinkAccent.withAlpha(70)),
                              )),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
                          child: TextButton.icon(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                    const BevergesList()),
                              );
                            },
                            style: TextButton.styleFrom(
                              fixedSize: const Size(165, 70),
                              foregroundColor: Colors.black54,
                              backgroundColor: Colors.black12.withAlpha(10),
                              shape: const StadiumBorder(),
                            ),
                            icon: const Icon(Icons.coffee),
                            label: const Text(
                              'Signatured',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black54,
                                  fontFamily: 'RobotoSlab'),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
                          child: TextButton.icon(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const BevergesList()),
                              );
                            },
                            style: TextButton.styleFrom(
                              fixedSize: const Size(165, 70),
                              foregroundColor: Colors.black54,
                              backgroundColor: Colors.black12.withAlpha(10),
                              shape: const StadiumBorder(),
                            ),
                            icon: const Icon(Icons.coffee),
                            label: const Text(
                              'Iced Coffee',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black54,
                                  fontFamily: 'RobotoSlab'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
                          child: TextButton.icon(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const BevergesList()),
                              );
                            },
                            style: TextButton.styleFrom(
                              fixedSize: const Size(165, 70),
                              foregroundColor: Colors.black54,
                              backgroundColor: Colors.black12.withAlpha(10),
                              shape: const StadiumBorder(),
                            ),
                            icon: const Icon(Icons.coffee),
                            label: const Text(
                              'Hot Coffee',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black54,
                                  fontFamily: 'RobotoSlab'),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
                          child: TextButton.icon(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const BevergesList()),
                              );
                            },
                            style: TextButton.styleFrom(
                              fixedSize: const Size(165, 70),
                              foregroundColor: Colors.black54,
                              backgroundColor: Colors.black12.withAlpha(10),
                              shape: const StadiumBorder(),
                            ),
                            icon: const Icon(Icons.coffee),
                            label: const Text(
                              'Chocolate',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black54,
                                  fontFamily: 'RobotoSlab'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          // padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                          padding: EdgeInsets.only(left: 20),
                          child: const Text(
                            'Foods',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                fontFamily: 'RobotoSlab'),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(0, 0, 10, 0),
                          child: TextButton(
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const FoodList()),
                                );
                              },
                              child: Text(
                                'View All',
                                style: TextStyle(
                                    color: Colors.pinkAccent.withAlpha(70)),
                              )),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
                          child: TextButton.icon(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const FoodList()),
                              );
                            },
                            style: TextButton.styleFrom(
                              fixedSize: const Size(165, 70),
                              foregroundColor: Colors.black54,
                              backgroundColor: Colors.black12.withAlpha(10),
                              shape: const StadiumBorder(),
                            ),
                            icon: const Icon(Icons.coffee),
                            label: const Text(
                              'Signatured',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black54,
                                  fontFamily: 'RobotoSlab'),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
                          child: TextButton.icon(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const FoodList()),
                              );
                            },
                            style: TextButton.styleFrom(
                              fixedSize: const Size(165, 70),
                              foregroundColor: Colors.black54,
                              backgroundColor: Colors.black12.withAlpha(10),
                              shape: const StadiumBorder(),
                            ),
                            icon: const Icon(Icons.coffee),
                            label: const Text(
                              'Bakery',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black54,
                                  fontFamily: 'RobotoSlab'),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
                          child: TextButton.icon(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const FoodList()),
                              );
                            },
                            style: TextButton.styleFrom(
                              fixedSize: const Size(165, 70),
                              foregroundColor: Colors.black54,
                              backgroundColor: Colors.black12.withAlpha(10),
                              shape: const StadiumBorder(),
                            ),
                            icon: const Icon(Icons.coffee),
                            label: const Text(
                              'Salad',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black54,
                                  fontFamily: 'RobotoSlab'),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 10, 10, 10),
                          child: TextButton.icon(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const FoodList()),
                              );
                            },
                            style: TextButton.styleFrom(
                              fixedSize: const Size(165, 70),
                              foregroundColor: Colors.black54,
                              backgroundColor: Colors.black12.withAlpha(10),
                              shape: const StadiumBorder(),
                            ),
                            icon: const Icon(Icons.coffee),
                            label: const Text(
                              'Yogurt',
                              style: TextStyle(
                                  fontSize: 15,
                                  color: Colors.black54,
                                  fontFamily: 'RobotoSlab'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(20, 0, 0, 0),
                          height: 250,
                          width: 170,
                          // color: Colors.red,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40),
                              //set border radius more than 50% of height and width to make circle
                            ),
                            child: Stack(
                              children: [
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(13.0),
                                  child: Image.asset(
                                    'assets/images/cold-coffee-1.jpg',
                                    fit: BoxFit.cover,
                                    height: double.infinity,
                                    width: double.infinity,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(5, 180, 0, 0),
                                  child: const Text(
                                    'Kopi Susu\nBrutal',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: 'RobotoSlab'),
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
                                    child: const Text(
                                      '\$ 2.05',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'RobotoSlab'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(15, 0, 0, 0),
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
                                    'assets/images/cold-coffee-1.jpg',
                                    fit: BoxFit.cover,
                                    height: double.infinity,
                                    width: double.infinity,
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.fromLTRB(10, 180, 0, 0),
                                  child: const Text(
                                    'Kopi Susu\nBrutal',
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontFamily: 'RobotoSlab'),
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
                                    child: const Text(
                                      '\$ 2.05',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontFamily: 'RobotoSlab'),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Column(
                    //   children: [
                    //     Container(
                    //       color: Colors.blue,
                    //       height: 120,
                    //       width: 180,
                    //     ),
                    //     Container(
                    //       color: Colors.black54,
                    //       height: 120,
                    //       width: 80,
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                          const BevergesList()),
                    );
                  },
                  child: const Text(
                    'More...',
                    style: TextStyle(fontFamily: 'RobotoSlab'),
                  ),
                )
              ],
            ),
            Container(
              // alignment: AlignmentDirectional.bottomEnd,
              alignment: Alignment.bottomRight,
              margin: EdgeInsets.fromLTRB(0, 0, 15, 5),
              child: FloatingActionButton(
                backgroundColor: Colors.pinkAccent,
                foregroundColor: Colors.black,
            //     onPressed: () => showDialog<String>(
            //   context: context,
            //   builder: (BuildContext context) => AlertDialog(
            //     title: const Text('Cart'),
            //     content: const Text('Sorry! Your Cart is empty..'),
            //     actions: <Widget>[
            //       // TextButton(
            //       //   onPressed: () => Navigator.pop(context, 'Cancel'),
            //       //   child: const Text('Cancel'),
            //       // ),
            //       TextButton(
            //         onPressed: () => Navigator.pop(context, 'OK'),
            //         child: const Text('OK'),
            //       ),
            //     ],
            //   ),
            // ),//
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                        const ThirdPage()),
                  );
                },
                child: Icon(Icons.shopping_basket_outlined),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
