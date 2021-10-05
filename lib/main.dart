// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final double screenHeight = screenInfo.size.height;
    final double screenWidth = screenInfo.size.width;

    return Scaffold(
      backgroundColor: Colors.purpleAccent,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: screenHeight / 100),
                child: SizedBox(
                    width: screenWidth / 6,
                    child: Image.asset("pictures/home.jpg")),
              ),
              Padding(
                padding: EdgeInsets.all(screenWidth / 100),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: "Kullanıcı Adı",
                    filled: true,
                    fillColor: Colors.amber,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(screenWidth / 100),
                child: const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Sifre",
                    filled: true,
                    fillColor: Colors.amber,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                  ),
                ),
              ),
              SizedBox(
                width: screenWidth / 1.8,
                height: screenHeight / 15,
                child: ElevatedButton(
                  child: const Text(
                    "Login",
                    style: TextStyle(
                        color: Colors.green,
                        backgroundColor: Colors.blueAccent),
                  ),
                  onPressed: () {
// ignore: avoid_print
                    print("Login Active");
                    print("width : $screenWidth");
                    print(" height : $screenHeight");
                  },
                ),
              ),
              GestureDetector(
                onTap: () {
                  print("HELP");
                },
                child: Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Text(
                    "HELP",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
