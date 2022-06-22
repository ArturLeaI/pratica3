import 'package:flutter/material.dart';

import 'list_page.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: ListView(children: [
          SizedBox(
            width: 128,
            height: 128,
            child: Image.asset("assets/owl.png"),
          ),
          const SizedBox(
            height: 60,
          ),
          TextFormField(
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                labelText: "E-mail",
                labelStyle: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w400,
                    fontSize: 20),
              )),
          const SizedBox(
            height: 10,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            obscureText: true,
            decoration: const InputDecoration(
              labelText: "Senha",
              labelStyle: TextStyle(
                  color: Colors.black,
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
                    Radius.circular(50),
                  ),
                  color: Color(0xFF1DE9B6)),
              child: SizedBox.expand(
                  child: FlatButton(
                      child: const Text("Entrar",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      onPressed: () => {
                      Navigator.push(context,
                      MaterialPageRoute(builder: (context) {
                      return ListPage();
                      })),

                  })))
        ]),
      ),
    );
  }
}
