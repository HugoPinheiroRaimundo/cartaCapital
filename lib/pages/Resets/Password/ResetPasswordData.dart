import 'package:flutter/material.dart';

class ResetData extends StatelessWidget {
  const ResetData({super.key});

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
              //  Navigator.of(context).restorablePushReplacementNamed('/one');
            },
            child: const Text("Assine"),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text(
                "Recupere sua senha",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                  "Preencha os campos para que possamos redefinir a sua senha."),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Senha",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              const TextField(
                decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "Confirmar senha",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              const TextField(
                decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 15,
              ),
              SizedBox(
                  width: 500,
                  height: 50,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.red[900]),
                      onPressed: () {
                        Navigator.of(context).pushReplacementNamed("/reset");
                      },
                      child: const Text("Confirmar")))
            ]),
      ),
    );
  }
}
