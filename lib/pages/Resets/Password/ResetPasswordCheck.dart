import 'package:flutter/material.dart';

class ResetPassaword extends StatelessWidget {
  const ResetPassaword({super.key});

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
                  style: TextStyle(
                      color: Colors.red,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                TextSpan(
                  text: "Capital",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.normal),
                )
              ])),
        ),
        leading: GestureDetector(
          onTap: () {},
          child: const Icon(
            Icons.menu,
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
      body: Center(
        child: Column(children: [
          const SizedBox(
            height: 20,
          ),
          const Icon(
            Icons.check_circle,
            size: 50,
            color: Colors.green,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text("Senha Alterada!"),
          const SizedBox(
            height: 20,
          ),
          const Text("Obá!"),
          const Text("Sua senha foi alterada com sucesso"),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: 350,
            height: 50,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary: Colors.red[800]),
                onPressed: () {
                  Navigator.of(context).pushReplacementNamed("/perfil");
                },
                child: const Text("Entrar na minha Conta")),
          ),
        ]),
      ),
    );
  }
}
