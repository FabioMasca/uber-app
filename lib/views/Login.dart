import 'package:flutter/material.dart';
import 'package:flutter_uberfrota/views/Cadastro.dart';
import 'package:flutter_uberfrota/views/Esqueceuasenha.dart';
import 'Usuario.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  TextEditingController _controllerEmail = TextEditingController();
  TextEditingController _controllerSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //Definindo imagem background do fundo do aplicativo
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/fundo.png"),
            fit: BoxFit
                .cover, //mandando assumir toda área independente do tamanha
          ),
        ),
        padding: EdgeInsets.all(16),
        child: Center(
          child: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(bottom: 32),
                child: Image.asset(
                  "images/logo.png",
                  width: 200,
                  height: 150,
                ),
              ),
              TextField(
                  controller: _controllerEmail,
                  autofocus: true,
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(fontSize: 20),
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                      prefixIcon: const Padding(
                        padding: EdgeInsets.all(5),
                        child: Icon(
                          Icons.person_2,
                          color: Colors.blueGrey,
                        ),
                      ),
                      hintText: "e-mail",
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(6)))),
              TextField(
                controller: _controllerSenha,
                obscureText: true,
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.fromLTRB(32, 16, 32, 16),
                    prefixIcon: const Padding(
                      padding: EdgeInsets.all(5),
                      child: Icon(
                        Icons.key,
                        color: Colors.blueGrey,
                      ),
                    ),
                    hintText: "senha",
                    filled: true,
                    fillColor: Colors.white,
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(6))),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 16, bottom: 10),
                  child: ElevatedButton(
                    child: Text(
                      "Entrar",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    onPressed: () {},
                  )),
              Center(
                child: TextButton(
                  child: Text(
                    "Não tem conta? cadastre-se!",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => SignupScreen()));
                  },
                ),
              ),
              Center(
                child: TextButton(
                  child: Text(
                    "Esqueceu a senha?",
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Esqueceuasenha()));
                  },
                ),
              )
            ],
          )),
        ),
      ),
    );
  }
}
