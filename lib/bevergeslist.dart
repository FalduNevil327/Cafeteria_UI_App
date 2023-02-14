import 'package:flutter/material.dart';

class BevergesList extends StatefulWidget {
  const BevergesList({Key? key}) : super(key: key);

  @override
  State<BevergesList> createState() => _BevergesListState();
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

class _BevergesListState extends State<BevergesList> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'BEVERGES',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ),
        body: Column(children: [
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
        ],),
      ),
    );
  }
}
