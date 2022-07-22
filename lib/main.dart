import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutterui/admin.dart';

void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  runApp(const MyApp());
  FlutterNativeSplash.remove();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'ExplorAR',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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
            Padding(
              padding: EdgeInsets.only(left: 19.0, top: 50.0),
              child: Text("Browse by Departments",
                  overflow: TextOverflow.visible,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    height: 1.171875,
                    fontSize: 20.0,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w700,
                    color: Color.fromARGB(255, 217, 217, 217),
                    /* letterSpacing: 0.0, */
                  )),
            ),
            Padding(
              padding: EdgeInsets.only(left: 11.0),
              child: BrowseBlocksScroll(),
            ),
            SizedBox(
              height: 90,
            ),
            DestinationScroll(),
          ],
        ),
      ),
    );
  }
}

class BrowseBlocksScroll extends StatelessWidget {
  const BrowseBlocksScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 155,
      // width: 145,
      child: ListView(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(top: 10),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 135,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                        // Foreground color
                        onPrimary: Colors.grey,
                        // Background color
                        primary: Colors.white,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(26))))
                    .copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const AdminPage()),
                  );
                },
                child: const Text(
                  'ADMIN',
                  style: TextStyle(
                      color: Color.fromARGB(255, 93, 18, 18),
                      fontSize: 26,
                      fontFamily: 'Cardo'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 135,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                        // Foreground color
                        onPrimary: Colors.grey,
                        // Background color
                        primary: Colors.white,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(26))))
                    .copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
                onPressed: () {},
                child: const Text(
                  'CS-IT',
                  style: TextStyle(
                      color: Color.fromARGB(255, 93, 18, 18),
                      fontSize: 34,
                      fontFamily: 'Cardo'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 135,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                        // Foreground color
                        onPrimary: Colors.grey,
                        // Background color
                        primary: Colors.white,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(26))))
                    .copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
                onPressed: () {},
                child: const Text(
                  'MECH',
                  style: TextStyle(
                      color: Color.fromARGB(255, 93, 18, 18),
                      fontSize: 30,
                      fontFamily: 'Cardo'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 135,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                        // Foreground color
                        onPrimary: Colors.grey,
                        // Background color
                        primary: Colors.white,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(26))))
                    .copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
                onPressed: () {},
                child: const Text(
                  'EEE',
                  style: TextStyle(
                      color: Color.fromARGB(255, 93, 18, 18),
                      fontSize: 34,
                      fontFamily: 'Cardo'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 135,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                        // Foreground color
                        onPrimary: Colors.grey,
                        // Background color
                        primary: Colors.white,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(26))))
                    .copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
                onPressed: () {},
                child: const Text(
                  'EC',
                  style: TextStyle(
                      color: Color.fromARGB(255, 93, 18, 18),
                      fontSize: 36,
                      fontFamily: 'Cardo'),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: SizedBox(
              width: 135,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                        // Foreground color
                        onPrimary: Colors.grey,
                        // Background color
                        primary: Colors.white,
                        shape: const RoundedRectangleBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(26))))
                    .copyWith(elevation: ButtonStyleButton.allOrNull(0.0)),
                onPressed: () {},
                child: const Text(
                  'CIVIL',
                  style: TextStyle(
                      color: Color.fromARGB(255, 93, 18, 18),
                      fontSize: 34,
                      fontFamily: 'Cardo'),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DestinationScroll extends StatefulWidget {
  const DestinationScroll({Key? key}) : super(key: key);

  @override
  State<DestinationScroll> createState() => _DestinationScrollState();
}

class _DestinationScrollState extends State<DestinationScroll> {
  String _chosenValue = 'Admin';

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Container(
      width: 250,
      height: 60,
      decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        DropdownButton<String>(
          focusColor: Colors.white,
          value: _chosenValue,
          elevation: 5,
          style: const TextStyle(color: Colors.white),
          iconEnabledColor: Colors.black,
          items: <String>[
            'Admin',
            'CS-IT',
            'EC',
            'EEE',
            'MECH',
            'CIVIL',
          ].map<DropdownMenuItem<String>>((String value) {
            return DropdownMenuItem<String>(
              value: value,
              child: Text(
                value,
                style: const TextStyle(color: Colors.black),
              ),
            );
          }).toList(),
          hint: const Text(
            "Select your Destination",
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
          ),
          onChanged: (value) {
            setState(() {
              _chosenValue = value!;
            });
          },
        ),
      ]),
    ));
  }
}
