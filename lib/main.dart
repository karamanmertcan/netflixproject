import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          visualDensity: VisualDensity.adaptivePlatformDensity,
          canvasColor: Colors.black),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home_outlined,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.play_arrow_outlined,
            ),
            label: 'Coming soon',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
            ),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.download_outlined,
            ),
            label: 'Downloads',
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.maxFinite,
              height: 600.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/pb.jpg'),
                ),
              ),
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Colors.black,
                      Colors.transparent,
                      Colors.transparent,
                      Colors.black,
                    ],
                    stops: [0.0, 0.3, 0.8, 1.0],
                  ),
                ),
                child: SafeArea(
                  child: Stack(
                    children: [
                      NetflixAppBar(),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: BottomBar(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                'Keep Watching',
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/ask101.jpg'),
                      ),
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/bb.jpg'),
                      ),
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/dark.jpg'),
                      ),
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 150,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/ask101.jpg'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class NetflixAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 60.0,
          child: Row(
            children: [
              SizedBox(width: 24.0),
              Image.asset('assets/netflix.png', height: 40.0),
              Spacer(),
              Icon(Icons.cast, color: Colors.white, size: 30),
              SizedBox(width: 24.0),
              Container(
                height: 30.0,
                width: 30,
                color: Colors.blue,
                child: Icon(
                  Icons.person,
                  color: Colors.white,
                ),
              ),
              SizedBox(width: 24.0),
            ],
          ),
        ),
        Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Series',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              SizedBox(width: 24.0),
              Text(
                'Films',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
              SizedBox(width: 24.0),
              Text(
                'My List',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 70,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.add, color: Colors.white, size: 30.0),
                SizedBox(height: 8.0),
                Text('My List', style: TextStyle(color: Colors.white))
              ],
            ),
            Container(
              height: 50,
              width: 100,
              color: Colors.white,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(Icons.play_arrow, color: Colors.black, size: 30.0),
                  Text(
                    'Play',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                  )
                ],
              ),
            ),
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [Icon(Icons.info, color: Colors.white, size: 30.0)],
            ),
          ],
        ));
  }
}
