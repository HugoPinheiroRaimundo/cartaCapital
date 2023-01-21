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
              const Text("Minha Conta",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              const SizedBox(height: 15),
              const Text("Veja seu perfil"),
              const SizedBox(height: 20),
              const Text("Nome", style: TextStyle(fontWeight: FontWeight.bold)),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Maria da Silva Santos'),
              ),
              const SizedBox(height: 20),
              const Text("E-mail",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'mariadasilva@gmail.com'),
              ),
              const SizedBox(height: 20),
              const Text("Gênero",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: 'Feminino'),
              ),
              const SizedBox(height: 20),
              const Text("Nascimento",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(), hintText: '06/02/1977'),
              ),
              const SizedBox(height: 20),
              SizedBox(
                width: 500,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.red[900]),
                    onPressed: () {
                      Navigator.of(context)
                          .restorablePushReplacementNamed('/reset');
                    },
                    child: const Text("Alterar Minha Senha")),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text("Seu Plano",
                  style: TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              const Text("O seu plano atual é o básico por 1 ano:"),
              const SizedBox(height: 5),
              const Text("* Acesso limitado ao conteúdo digital"),
              const SizedBox(height: 5),
              const Text("* Acesso as newsletters exclusivas para assinates"),
              const SizedBox(height: 5),
              const Text("* O seu plano vence dia 25/08/2022"),
              const SizedBox(height: 5),
              const Text("* Forma de pagamento: Cartão de crédito"),
              const SizedBox(height: 10),
              SizedBox(
                width: 500,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.red),
                    onPressed: () {},
                    child: const Text("Alterar meu plano")),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                width: 500,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.black),
                    onPressed: () {},
                    child: const Text("Alterar forma de pagamento")),
              ),
            ]),
      ),
    );
  }
}
