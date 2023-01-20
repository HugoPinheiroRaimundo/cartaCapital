import 'package:flutter/material.dart';

class AccountPage extends StatefulWidget {
  const AccountPage({super.key});

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
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
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text("Minha Conta",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              Text("Veja seu perfil"),
              Text("Nome", style: TextStyle(fontWeight: FontWeight.bold)),
              TextField(
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              Text("E-mail", style: TextStyle(fontWeight: FontWeight.bold)),
              TextField(
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              Text("Gênero", style: TextStyle(fontWeight: FontWeight.bold)),
              TextField(
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              Text("Nascimento", style: TextStyle(fontWeight: FontWeight.bold)),
              TextField(
                decoration: InputDecoration(border: OutlineInputBorder()),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  onPressed: () {},
                  child: Text("Alterar Minha Senha")),
              Text("Seu Plano", style: TextStyle(fontWeight: FontWeight.bold)),
              Text("Seu plano atual é o básico por 1 ano:"),
              Text(" * acesso limitado ao conteúdo digital"),
              Text("* O seu plano vence dia 25/08/2022"),
              Text("Forma de pagamento: Cartão de crédito"),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.red),
                  onPressed: () {},
                  child: Text("Alterar meu plano")),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(primary: Colors.black),
                  onPressed: () {},
                  child: Text("Alterar forma de pagamento")),
            ]),
      ),
    );
  }
}
