import 'package:flutter/material.dart';

import 'list_page.dart';
import 'login_page.dart';

class CadastroPage extends StatelessWidget {
  const CadastroPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFF311B92),
          title: const Text(
            'Cadastrar',
          ),
          ),
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
          top: 100,
          left: 40,
          right: 40,
        ),
        child: ListView(
          children: [
            Container(
                height: 300,
                alignment: Alignment.centerLeft,
                padding: const EdgeInsets.only(
                  top: 25,
                  left: 15,
                  right: 15,

                ),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(11),
                  ),
                  color: Colors.white,
                ),
              child: ListView(
                children: [
                  TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        labelText: "Produto",
                        labelStyle: TextStyle(
                            color: Colors.black38,
                            fontWeight: FontWeight.w400,
                            fontSize: 20),
                      )),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.number,
                    decoration: const InputDecoration(
                      labelText: "Valor",
                      labelStyle: TextStyle(
                          color: Colors.black38,
                          fontWeight: FontWeight.w400,
                          fontSize: 20),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Container(
                      height: 60,
                      alignment: Alignment.center,
                      decoration: const BoxDecoration(
                          borderRadius: BorderRadius.all(
                            Radius.circular(11),
                          ),
                          color: Color(0xFF1DE9B6)),
                      child: SizedBox.expand(
                          child: FlatButton(
                              child: const Text("Cadastrar",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 20)),
                              onPressed: () => {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                      return ListPage();
                                    })),
                              })))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
