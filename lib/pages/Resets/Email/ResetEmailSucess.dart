import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class ResetEmailSucess extends StatelessWidget {
  const ResetEmailSucess({super.key});

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
                "Sucesso!",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                  "Veja abaixo o e-mail que esta vinculado ao número de telefone que você solicitou."),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Telefone",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              const TextField(
                decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(),
                    hintText: 'ex: (11)90000-0000'),
              ),
              const SizedBox(
                height: 15,
              ),
              const Text(
                "O e-mail cadastrado neste número é",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 5,
              ),
              const TextField(
                decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder(),
                    hintText: 'marianasilva@gmail.com'),
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
                        Navigator.of(context).pushReplacementNamed("/perfil");
                      },
                      child: const Text("Entrar na minha Conta")))
            ]),
      ),
    );
  }
}
