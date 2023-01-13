import 'dart:ffi';

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    int currentIndex = 0;
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Center(child: Text("Carta Capital")),
          leading: GestureDetector(
            onTap: () {},
            child: const Icon(Icons.menu),
          ),
          actions: [
            Padding(
                padding: const EdgeInsets.only(right: 20.0),
                child: GestureDetector(
                  onTap: () {},
                  child: const Icon(
                    Icons.search,
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
              onPressed: () {},
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
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            //  SizedBox(
            //    height: 80, // espaçamento entre a tabbar e o icone
            //),

            // Icone de voltar
            Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: const [
                    Icon(
                      Icons.arrow_back_ios,
                      color: Colors.red,
                    ),
                    Text("Voltar")
                  ],
                )),
            //const SizedBox(height: 0),

            //  começo do scroll está funcional
            Expanded(
                child: SingleChildScrollView(
                    child: Padding(
              padding:
                  const EdgeInsets.all(20), // espaçamento lateral do textField
              child: Column(children: [
                //SizedBox(height: 0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment
                      .start, //todo alinhamento dos texto até senha textfield 2
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.all(5),
                      child: const Text("Entre na sua conta"),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      child:
                          const Text("Ainda não tem cadastro no cartaCapital?"),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      child: const Text("Assine agora!"),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      child: const Text("E-Mail"),
                    ),
                    Container(
                      padding: const EdgeInsets.all(0),
                      child: const TextField(
                        decoration: InputDecoration(
                            label: Text("E-mail"),
                            hintText: "ex. nome@email.com.br",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder()),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      child: const Text("Senha"),
                    ),
                    Container(
                      padding: const EdgeInsets.all(0),
                      child: const TextField(
                        decoration: InputDecoration(
                            label: Text("Senha"),
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder()),
                      ),
                    ),
                    Padding(
                        padding: const EdgeInsets.all(5),
                        child: Row(
                          children: const [
                            Icon(Icons.check_box),
                            Text("concordo com os termos ")
                          ],
                        )),
                    Padding(
                      padding: const EdgeInsets.all(5),
                      child: Row(
                        children: const [
                          Icon(Icons.check_box),
                          Text("Aceito a politica de privacidade")
                        ],
                      ),
                    ),
                    ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.red),
                        onPressed: () {},
                        child: const Text(
                          "Entrar",
                          style: TextStyle(fontSize: 12),
                        )),
                    Row(
                      children: const [
                        SizedBox(width: 40),
                        Text("Esqueci minha senha",
                            style: TextStyle(fontSize: 12)),
                        SizedBox(width: 40),
                        Text("Esqueci meu E-mail",
                            style: TextStyle(fontSize: 12))
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [Text("OU")],
                      ),
                    ),
                    Row(
                      children: const <Widget>[
                        SizedBox(width: 28),
                        ElevatedButton(
                          onPressed: null,
                          child: Text("Faça seu login com o google",
                              style: TextStyle(fontSize: 7)),
                        ),
                        SizedBox(width: 50),
                        ElevatedButton(
                          onPressed: null,
                          child: Text("Faça seu login com o apple",
                              style: TextStyle(fontSize: 7)),
                          // arrumar a fonte do button
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
