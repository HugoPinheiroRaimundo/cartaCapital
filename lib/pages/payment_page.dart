import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text("Forma de pagamento"),
              const SizedBox(
                height: 10,
              ),
              const Text(
                  "É necessário informar uma forma de pagamento para continuar o seu cadastro"),
              const SizedBox(
                height: 20,
              ),
              const TextField(
                decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 20,
              ),
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
                height: 20,
              ),
              const Text("Número do cartão"),
              const SizedBox(
                height: 5,
              ),
              const TextField(
                decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text("Nome do titular"),
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
              Row(
                children: const [
                  Text("Exemplo"),
                  SizedBox(
                    width: 132,
                  ),
                  Text("Exemplo"),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              Row(children: const [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder()),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                        hintStyle: TextStyle(color: Colors.grey),
                        border: OutlineInputBorder()),
                  ),
                ),
              ]),
              const SizedBox(
                height: 15,
              ),
              const Text("Parcela"),
              const SizedBox(
                height: 5,
              ),
              TextField(
                decoration: InputDecoration(
                    hintStyle: TextStyle(color: Colors.grey),
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 20,
              ),
              TextFormField(
                autofocus: false,
                initialValue: 'Paypal',
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.grey,
                    suffixIcon: Icon(Icons.arrow_downward),
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 15,
              ),
              TextFormField(
                autofocus: false,
                initialValue: 'Google play',
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.grey,
                    suffixIcon: Icon(Icons.arrow_downward),
                    border: OutlineInputBorder()),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 500,
                height: 50,
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.red[900]),
                    onPressed: () {
                      Navigator.of(context)
                          .restorablePushReplacementNamed('/reset');
                    },
                    child: const Text("Confirmar")),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
