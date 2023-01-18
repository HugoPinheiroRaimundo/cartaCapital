import 'package:flutter/material.dart';

class OnePage extends StatefulWidget {
  const OnePage({super.key});

  @override
  State<OnePage> createState() => _OnePageState();
}

class _OnePageState extends State<OnePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: Center(
          child: RichText(
              text: const TextSpan(
                  text: "Carta",
                  style: TextStyle(color: Colors.red, fontSize: 20),
                  children: <TextSpan>[
                TextSpan(
                  text: "Capital",
                  style: TextStyle(color: Colors.black),
                )
              ])),
        ),
        leading: GestureDetector(
          onTap: () {},
          child: const Icon(Icons.menu, color: Colors.black),
        ),
        actions: [
          Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: const Icon(
                  Icons.search,
                  color: Colors.black,
                  size: 26.0,
                ),
              )),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5.0)),
            ),
            onPressed: () {
              Navigator.of(context).restorablePushReplacementNamed('/one');
            },
            child: const Text("Assine"),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: 4,
          // onTap: (index) => setState(() => currentIndex = index), //corrigir isso
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.red,
          unselectedItemColor: Colors.black,
          selectedFontSize: 10,
          iconSize: 25,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: "INÍCIO",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.mail,
              ),
              label: "REVISTAS",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.bookmark,
              ),
              label: "SALVOS",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.notifications,
              ),
              label: "NEWS",
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
              ),
              label: "PERFIL",
            ),
          ]),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.red, Colors.white],
            stops: [0.5, 0.5],
          ),
        ),
      ),
    );
  }
}
