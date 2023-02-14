import 'package:flutter/material.dart';
import 'package:carousel_indicator/carousel_indicator.dart';

class Demo extends StatefulWidget {
  const Demo({super.key});

  @override
  State<Demo> createState() => _DemoState();
}

class _DemoState extends State<Demo> {
  int pageIndex = 0;

  List<Widget> _demo = [
    Container(
      height: 250,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(
          "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQTIZccfNPnqalhrWev-Xo7uBhkor57_rKbkw&usqp=CAU",
          fit: BoxFit.cover,
        ),
      ),
    ),
    Container(
      height: 250,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(
          "https://wallpaperaccess.com/full/2637581.jpg",
          fit: BoxFit.cover,
        ),
      ),
    ),
    Container(
      height: 250,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(
          "https://images.unsplash.com/photo-1589197471564-8266ed7f59b5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8YW11c2VtZW50JTIwcGFya3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60",
          fit: BoxFit.cover,
        ),
      ),
    ),
    Container(
      height: 250,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12),
        child: Image.network(
          "https://images.unsplash.com/photo-1544441452-326ff5a947fd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MjB8fGFtdXNlbWVudCUyMHBhcmt8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60",
          fit: BoxFit.cover,
        ),
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
      body:Container(
        margin: EdgeInsets.all(10),
        height: 250,
        width: 500,
        child: Stack(
          children: [
            Container(
              height: 250,
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
              margin: EdgeInsets.fromLTRB(10,190, 10,0),
              child: CarouselIndicator(
                width: 85,
                space: 10,
                count: _demo.length,
                index: pageIndex,
              ),
            ),
          ],
        ),
      ),
      )
    );
  }
}
