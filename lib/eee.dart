import 'package:flutter/material.dart';
import 'package:flutterui/navigate.dart';

int _index = 0;

class EeePage extends StatelessWidget {
  const EeePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 59, 59, 59),
        bottomOpacity: 0.0,
        shadowColor: Colors.white,
        elevation: 26,
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.0, -1.0),
            end: Alignment(0.0, 0.9999999999999998),
            stops: [0.0, 0.0, 1.0],
            colors: [
              Color.fromARGB(255, 66, 0, 255),
              Color.fromARGB(255, 0, 139, 241),
              Color.fromARGB(255, 20, 40, 80)
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: const <Widget>[
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.only(left: 19),
              child: Text('EEE Block',
                  style: TextStyle(
                      color: Colors.white, fontFamily: 'Cardo', fontSize: 33)),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 19.0),
              child: Text('Browse Classes',
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontSize: 20)),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 19.0),
              child: ImageScroll(),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 19.0),
              child: Text(
                'Details',
                style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Montserrat',
                    fontSize: 20),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: EdgeInsets.only(left: 19.0, right: 19.0),
              child: InfoScroll(),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // Fixed
        backgroundColor:
            const Color.fromARGB(255, 59, 59, 59), // <-- This works for fixed
        selectedItemColor: const Color.fromARGB(255, 34, 80, 244),
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.navigation),
            label: 'Navigation',
          ),
        ],
        onTap: (newIndex) {
          if (newIndex == 0) {
            Navigator.pop(context);
          } else {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const Navigate()));
          }
        },
        currentIndex: _index,
      ),
    );
  }
}

class ImageScroll extends StatelessWidget {
  const ImageScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return SizedBox(
      height: 200,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 8.0, right: 8.0),
            child: Container(
              height: 85,
              width: 315,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  image: DecorationImage(
                      image: AssetImage(
                          'images/College/EEE/WhatsApp Image 2022-07-31 at 10.53.51 PM.jpeg'),
                      fit: BoxFit.fill)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
            child: Container(
              height: 85,
              width: 315,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  image: DecorationImage(
                      image: AssetImage('images/College/EEE/sh.jpg'),
                      fit: BoxFit.fill)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
            child: Container(
              height: 85,
              width: 315,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  image: DecorationImage(
                      image: AssetImage('images/College/EEE/ee2.jpg'),
                      fit: BoxFit.fill)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
            child: Container(
              height: 85,
              width: 315,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  image: DecorationImage(
                      image: AssetImage('images/College/EEE/cl.jpg'),
                      fit: BoxFit.fill)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
            child: Container(
              height: 85,
              width: 315,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  image: DecorationImage(
                      image: AssetImage('images/College/EEE/ee4.jpg'),
                      fit: BoxFit.fill)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
            child: Container(
              height: 85,
              width: 315,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                  image: DecorationImage(
                      image: AssetImage('images/College/EEE/ee3.jpg'),
                      fit: BoxFit.fill)),
            ),
          )
        ],
      ),
    );
  }
}

class InfoScroll extends StatelessWidget {
  const InfoScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return SizedBox(
      height: 330,
      child: ListView(
        scrollDirection: Axis.vertical,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 80,
                width: 315,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        'Seminar Hall',
                        style: TextStyle(
                          fontFamily: 'Cardo',
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Ground Floor',
                        style: TextStyle(
                          fontFamily: 'Cardo',
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 80,
                width: 315,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        'Computer Lab',
                        style: TextStyle(
                          fontFamily: 'Cardo',
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Ground Floor',
                        style: TextStyle(
                          fontFamily: 'Cardo',
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 80,
                width: 315,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        'Electrical Engineering Workshop',
                        style: TextStyle(
                          fontFamily: 'Cardo',
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Ground Floor',
                        style: TextStyle(
                          fontFamily: 'Cardo',
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 80,
                width: 315,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        'Electronics Circuit Lab',
                        style: TextStyle(
                          fontFamily: 'Cardo',
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '1st Floor',
                        style: TextStyle(
                          fontFamily: 'Cardo',
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 80,
                width: 315,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        'Digital Electronics & Embedded Systems Lab',
                        style: TextStyle(
                          fontFamily: 'Cardo',
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '1st Floor',
                        style: TextStyle(
                          fontFamily: 'Cardo',
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 80,
                width: 315,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        'Electrical Measurements Lab',
                        style: TextStyle(
                          fontFamily: 'Cardo',
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '1st Floor',
                        style: TextStyle(
                          fontFamily: 'Cardo',
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 80,
                width: 315,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        'Power Electronics Lab',
                        style: TextStyle(
                          fontFamily: 'Cardo',
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '1st Floor',
                        style: TextStyle(
                          fontFamily: 'Cardo',
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 80,
                width: 315,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        'System and Control Lab',
                        style: TextStyle(
                          fontFamily: 'Cardo',
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'Ground Floor',
                        style: TextStyle(
                          fontFamily: 'Cardo',
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                )),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
                height: 80,
                width: 315,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const <Widget>[
                      Text(
                        'Staff Room',
                        style: TextStyle(
                          fontFamily: 'Cardo',
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        '2nd Floor',
                        style: TextStyle(
                          fontFamily: 'Cardo',
                          fontSize: 15,
                        ),
                      )
                    ],
                  ),
                )),
          )
        ],
      ),
    );
  }
}
