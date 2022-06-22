import 'package:flutter/material.dart';

import 'cadastro_page.dart';
import 'login_page.dart';

class ListPage extends StatelessWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFF311B92),
          title: const Text(
            'Listagem',
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.add),
              tooltip: 'Show Snackbar',
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return CadastroPage();
                }));
              },
            ),
          ]),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
              Color(0xFFB39DDB),
              Color(0xFF7E57C2),
            ])),
        padding: const EdgeInsets.only(
          top: 60,
          left: 40,
          right: 40,
        ),
        child: ListView(
          children: [
            Container(
                height: 75,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(11),
                  ),
                  color: Color(0xFF1DE9B6),
                ),
                child: SizedBox.expand(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Feijao',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      Text(
                        "25,00",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ],
                  ),
                )),
            const SizedBox(
              height: 40,
            ),
            Container(
                height: 75,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(11),
                  ),
                  color: Color(0xFF1DE9B6),
                ),
                child: SizedBox.expand(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Carne',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      Text(
                        "30,00",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ],
                  ),
                )),
            const SizedBox(
              height: 40,
            ),
            Container(
                height: 75,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(
                  left: 15,
                  right: 15,
                ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(11),
                  ),
                  color: Color(0xFF1DE9B6),
                ),
                child: SizedBox.expand(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        'Arroz',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      Text(
                        "50,00",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                    ],
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
