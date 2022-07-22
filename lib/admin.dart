import 'package:flutter/material.dart';

class AdminPage extends StatelessWidget {
  const AdminPage({Key? key}) : super(key: key);

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
              child: Text('Administrative Block',
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
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: Colors.white,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.navigation,
              color: Colors.white,
            ),
            label: 'Navigation',
          )
        ],
        backgroundColor: const Color.fromARGB(255, 59, 59, 59),
        onTap: (value) {
          Navigator.pop(context);
        },
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
                  color: Color.fromARGB(255, 168, 159, 159),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
            child: Container(
              height: 85,
              width: 315,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 168, 159, 159),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
            child: Container(
              height: 85,
              width: 315,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 168, 159, 159),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
            child: Container(
              height: 85,
              width: 315,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 168, 159, 159),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
            child: Container(
              height: 85,
              width: 315,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 168, 159, 159),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, top: 8.0, right: 8.0),
            child: Container(
              height: 85,
              width: 315,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 168, 159, 159),
                  borderRadius: BorderRadius.all(Radius.circular(30))),
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
                  color: Color.fromARGB(255, 168, 159, 159),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 80,
              width: 315,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 168, 159, 159),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 80,
              width: 315,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 168, 159, 159),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 80,
              width: 315,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 168, 159, 159),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 80,
              width: 315,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 168, 159, 159),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 80,
              width: 315,
              decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 168, 159, 159),
                  borderRadius: BorderRadius.all(Radius.circular(20))),
            ),
          )
        ],
      ),
    );
  }
}
