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
            currentIndex: currentIndex,
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
        body: Center(
            //  width: double.infinity,
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
              padding:
                  const EdgeInsets.all(0), // espaçamento lateral do textField
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
                      child:
                          const Text("Ainda não tem cadastro no cartaCapital?"),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      child: const Text("Assine agora!"),
                    ),
                    Container(
                      padding: const EdgeInsets.all(15),
                      child: const Text("E-Mail"),
                    ),
                    Container(
                      padding: const EdgeInsets.all(10),
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
                      padding: const EdgeInsets.all(10),
                      child: const TextField(
                        decoration: InputDecoration(
                            label: Text("Senha"),
                            hintText: "Password",
                            hintStyle: TextStyle(color: Colors.grey),
                            border: OutlineInputBorder()),
                      ),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.check_box),
                        Text("concordo com os termos e condições")
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.check_box),
                        Text("Aceito a politica de privacidade")
                      ],
                    ),
                    Container(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              ElevatedButton(
                                  onPressed: () {}, child: Text("Entrar"))
                            ])),
                    Row(
                      children: const [
                        SizedBox(width: 40),
                        Text("Esqueci minha senha"),
                        SizedBox(width: 40),
                        Text("Esqueci meu E-mail")
                      ],
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [Text("OU")],
                    ),
                    Row(
                      children: const <Widget>[
                        SizedBox(width: 0),
                        ElevatedButton(
                          onPressed: null,
                          child: Text("Faça seu login com o google"),
                        ),
                        SizedBox(width: 0),
                        ElevatedButton(
                          onPressed: null,
                          child: Text("Faça seu login com o apple"),
                          // arrumar a fonte do button
                        ),
                      ],
                    ),
                  ],
                ),
              ]),
            )))
          ],
        )));
  }
}
