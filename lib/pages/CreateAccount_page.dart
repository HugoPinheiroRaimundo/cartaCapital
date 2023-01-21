import 'package:flutter/material.dart';

class CreateAccount extends StatefulWidget {
  const CreateAccount({super.key});

  @override
  State<CreateAccount> createState() => _CreateAccountState();
}

class _CreateAccountState extends State<CreateAccount> {
  int indexCurrent = 0;

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
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: indexCurrent,
            onTap: (index) {
              setState(() {
                indexCurrent = index;
              });
            },
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
        body: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(15),
                child: Row(
                  children: const [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.red,
                    ),
                    Text("Voltar")
                  ],
                )),
            Expanded(
                child: SingleChildScrollView(
                    child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    const Text("Crie a sua conta",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 15),
                    const Text("Já tem conta na cartCapital"),
                    const Text(
                      "Entre agora!",
                      style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: Colors.red),
                    ),
                    const SizedBox(height: 20),
                    const Text("Nome completo",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 5),
                    const TextField(
                      decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(height: 15),
                    const Text("E-mail",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 5),
                    const TextField(
                      decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(height: 15),
                    const Text("Celular",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 5),
                    const TextField(
                      decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(height: 15),
                    const Text("Senha",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 5),
                    const TextField(
                      decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(height: 15),
                    const Text("Confirmar senha",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    const SizedBox(height: 5),
                    const TextField(
                      decoration: InputDecoration(
                          hintStyle: TextStyle(color: Colors.grey),
                          border: OutlineInputBorder()),
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: const [
                        Icon(
                          Icons.check_box,
                          color: Colors.red,
                        ),
                        Text("concordo com os termos e condições ",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    Row(
                      children: const [
                        Icon(
                          Icons.check_box,
                          color: Colors.red,
                        ),
                        Text("Aceito a politica de privacidade",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    const SizedBox(height: 15),
                    SizedBox(
                      width: 500,
                      height: 50,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              primary: Colors.red[900]),
                          onPressed: () {
                            Navigator.of(context)
                                .restorablePushReplacementNamed('/Conta');
                          },
                          child: const Text(
                            "Criar Conta",
                            style: TextStyle(fontSize: 12),
                          )),
                    ),
                    const SizedBox(height: 15),
                    const SizedBox(height: 15),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Text("OU",
                            style: TextStyle(fontWeight: FontWeight.bold))
                      ],
                    ),
                    const SizedBox(height: 15),
                    Row(
                      children: <Widget>[
                        const SizedBox(width: 10),
                        SizedBox(
                          height: 50,
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.android,
                              color: Colors.black,
                            ),
                            label: const Text("Fazer Login com o goole",
                                style: TextStyle(
                                    fontSize: 8, color: Colors.black)),
                            style:
                                ElevatedButton.styleFrom(primary: Colors.white),
                          ),
                        ),
                        const SizedBox(width: 40),
                        SizedBox(
                          height: 50,
                          child: ElevatedButton.icon(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.apple,
                              color: Colors.black,
                            ),
                            label: const Text("Fazer Login com apple",
                                style: TextStyle(
                                    fontSize: 8, color: Colors.black)),
                            style:
                                ElevatedButton.styleFrom(primary: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ]),
            )))
          ],
        ));
  }
}
