import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
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
        body: SizedBox(
            width: double.infinity,
            child: Column(
              //   crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                //  SizedBox(
                //    height: 80, // espaçamento entre a tabbar e o icone
                //),
                Padding(
                    padding: const EdgeInsets.all(20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Icon(
                          Icons.arrow_back_ios,
                          color: Colors.red,
                        ),
                        Text("Voltar")
                      ],
                    )),
                //const SizedBox(height: 0),
                Expanded(
                    child: SingleChildScrollView(
                        child: Padding(
                  padding: const EdgeInsets.all(
                      0), // espaçamento lateral do textField
                  child: Column(children: [
                    //SizedBox(height: 0),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          padding: const EdgeInsets.all(5),
                          child: const Text("Entre na sua conta"),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          child: const Text(
                              "Ainda não tem cadastro no cartaCapital?"),
                        ),
                        Container(
                          padding: const EdgeInsets.all(5),
                          child: const Text("Assine agora!"),
                        ),
                        Container(
                          padding: const EdgeInsets.all(25),
                          child: const TextField(
                            decoration: InputDecoration(
                                label: Text("E-mail"),
                                hintText: "ex. nome@email.com.br",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder()),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(25),
                          child: const TextField(
                            decoration: InputDecoration(
                                label: Text("Senha"),
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.grey),
                                border: OutlineInputBorder()),
                          ),
                        ),
                        Container(
                            // colocar os checkinbox
                            )
                      ],
                    ),
                  ]),
                )))
              ],
            )));
  }
}
