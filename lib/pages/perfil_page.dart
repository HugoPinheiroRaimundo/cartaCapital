import 'package:flutter/material.dart';

class PerfilPage extends StatefulWidget {
  const PerfilPage({super.key});

  @override
  State<PerfilPage> createState() => _PerfilPageState();
}

class _PerfilPageState extends State<PerfilPage> {
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
            child: const Icon(
              Icons.close,
              color: Colors.black,
            ),
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
          ],
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(children: const [
                Icon(
                  Icons.person_outline,
                  size: 50,
                ),
                Text("OLÁ, MARIA.",
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 12)),
                SizedBox(width: 140),
                Text(
                  "SAIR DA CONTA",
                  style: TextStyle(fontSize: 10),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: const [
                  Text(
                    "MINHA CONTA",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Text(
                    "CONFIGURAÇÕES",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  Text(
                    "FAQ",
                    style: TextStyle(
                        color: Colors.red, fontWeight: FontWeight.bold),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Icon(Icons.facebook),
                    SizedBox(width: 10),
                    Icon(Icons.insert_chart),
                    SizedBox(width: 10),
                    Icon(Icons.linked_camera_outlined),
                    SizedBox(width: 10),
                    Icon(Icons.two_k_outlined),
                    SizedBox(width: 10),
                    Icon(Icons.youtube_searched_for_sharp),
                    SizedBox(width: 10),
                    Icon(Icons.wifi)
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text(
                      "NOS ACOMPANHE",
                      style: TextStyle(
                          color: Colors.red, fontWeight: FontWeight.bold),
                    )
                  ]),
            )
          ],
        ));
  }
}
