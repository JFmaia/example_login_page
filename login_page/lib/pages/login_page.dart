import 'package:flutter/material.dart';
import 'package:login_page/components/logo.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(
                top: 50,
              ),
              child: Logo(),
            ),
            const SizedBox(
              height: 40,
            ),
            TextField(
              obscureText: !_isVisible,
              decoration: InputDecoration(
                //Icone de visualizar a senha.
                suffixIcon: IconButton(
                  icon: _isVisible
                      ? const Icon(
                          Icons.visibility,
                          color: Colors.black,
                        )
                      : const Icon(
                          Icons.visibility_off,
                          color: Colors.grey,
                        ),
                  //Mudando o estado do icone de visualização da senha.
                  onPressed: () {
                    setState(() {
                      _isVisible = !_isVisible;
                    });
                  },
                ),
                //Forma da caixa de texto e cor.
                border: OutlineInputBorder(
                  borderSide: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                //Forma da caixa de texto e cor, depois de selecionada.
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.black),
                ),
                //Texto que fica antes da digitação.
                hintText: "Senha",
                //Distancia dentro da caixa de entrada de texto.
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
