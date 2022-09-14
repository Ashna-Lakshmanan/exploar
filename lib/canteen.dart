import 'package:flutter/material.dart';
import 'package:flutterui/navigate.dart';

int _index = 0;

class CanteenPage extends StatelessWidget {
  const CanteenPage({Key? key}) : super(key: key);

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
                child: Text('Canteen Menu',
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontSize: 33)),
              ),
              SizedBox(
                height: 40,
              ),
              Padding(
                padding: EdgeInsets.only(left: 19.0),
                child: ImageScroll(),
              ),
              SizedBox(
                height: 10,
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
        ));
  }
}

class ImageScroll extends StatelessWidget {
  const ImageScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return SizedBox(
      height: 580,
      child: Container(
        child: ListView(scrollDirection: Axis.vertical, children: [
          Row(
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: AssetImage(
                            'images/College/canteenfood/WhatsApp Image 2022-08-01 at 12.54.05 AM.jpeg'),
                        fit: BoxFit.fill)),
                child: const Padding(
                  padding: EdgeInsets.only(top: 130, left: 32),
                  child: Text(
                    'Tea - Rs.8',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: AssetImage(
                            'images/College/canteenfood/WhatsApp Image 2022-08-01 at 12.54.05 AM (1).jpeg'),
                        fit: BoxFit.fill)),
                child: const Padding(
                  padding: EdgeInsets.only(top: 130, left: 32),
                  child: Text(
                    'Vada - Rs.8',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: AssetImage(
                            'images/College/canteenfood/WhatsApp Image 2022-08-01 at 12.54.04 AM.jpeg'),
                        fit: BoxFit.fill)),
                child: const Padding(
                  padding: EdgeInsets.only(top: 110, left: 10),
                  child: Text(
                    'Chikku Milkshake - Rs.35',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: AssetImage(
                            'images/College/canteenfood/WhatsApp Image 2022-08-01 at 12.54.04 AM (1).jpeg'),
                        fit: BoxFit.fill)),
                child: const Padding(
                  padding: EdgeInsets.only(top: 115, left: 8),
                  child: Text(
                    'Chicken Roll - Rs.20',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: AssetImage(
                            'images/College/canteenfood/WhatsApp Image 2022-08-01 at 12.54.03 AM.jpeg'),
                        fit: BoxFit.fill)),
                child: const Padding(
                  padding: EdgeInsets.only(top: 100, left: 8),
                  child: Text(
                    'Chicken Biryani - Rs.60',
                    style: TextStyle(color: Colors.black, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: AssetImage(
                            'images/College/canteenfood/WhatsApp Image 2022-08-01 at 12.54.03 AM (1).jpeg'),
                        fit: BoxFit.fill)),
                child: const Padding(
                  padding: EdgeInsets.only(top: 100, left: 8),
                  child: Text(
                    'Pazhampuri - Rs.8',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: AssetImage(
                            'images/College/canteenfood/WhatsApp Image 2022-08-01 at 1.14.29 AM.jpeg'),
                        fit: BoxFit.fill)),
                child: const Padding(
                  padding: EdgeInsets.only(top: 100, left: 8),
                  child: Text(
                    'Puffs - Rs.20',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: AssetImage(
                            'images/College/canteenfood/WhatsApp Image 2022-08-01 at 1.12.51 AM.jpeg'),
                        fit: BoxFit.fill)),
                child: const Padding(
                  padding: EdgeInsets.only(top: 100, left: 8),
                  child: Text(
                    'Vada - Rs.8',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: AssetImage(
                            'images/College/canteenfood/WhatsApp Image 2022-08-01 at 1.12.50 AM.jpeg'),
                        fit: BoxFit.fill)),
                child: const Padding(
                  padding: EdgeInsets.only(top: 100, left: 8),
                  child: Text(
                    'Chocobar - Rs.10/20',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: AssetImage(
                            'images/College/canteenfood/WhatsApp Image 2022-08-01 at 1.12.50 AM (1).jpeg'),
                        fit: BoxFit.fill)),
                child: const Padding(
                  padding: EdgeInsets.only(top: 100, left: 8),
                  child: Text(
                    'Bonda - Rs.8',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            children: [
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: AssetImage(
                            'images/College/canteenfood/WhatsApp Image 2022-08-01 at 1.12.49 AM.jpeg'),
                        fit: BoxFit.fill)),
                child: const Padding(
                  padding: EdgeInsets.only(top: 100, left: 8),
                  child: Text(
                    'SipUp - Rs.5',
                    style: TextStyle(color: Colors.white, fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              Container(
                height: 150,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    image: const DecorationImage(
                        image: AssetImage(
                            'images/College/canteenfood/WhatsApp Image 2022-08-01 at 1.12.49 AM (1).jpeg'),
                        fit: BoxFit.fill)),
                child: const Padding(
                  padding: EdgeInsets.only(top: 100, left: 8),
                  child: Text(
                    'Mangobar - Rs.10/20',
                    style: TextStyle(
                        color: Color.fromARGB(255, 0, 0, 0), fontSize: 15),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
            ],
          ),
        ]),
      ),
    );
  }
}
