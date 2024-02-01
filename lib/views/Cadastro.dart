import 'package:flutter/material.dart';
import 'Usuario.dart';

void main() {
  runApp(MaterialApp(
    home: SignupScreen(),
  ));
}

class SignupScreen extends StatefulWidget {
  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _telephoneController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cadastro'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _nameController,
              decoration: InputDecoration(
                labelText: 'Nome',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 16.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Senha',
              ),
              obscureText: true,
            ),
            SizedBox(height: 16.0),
            Padding(
              padding: const EdgeInsets.only(left: 0),
              child: TextField(
                controller: _telephoneController,
                decoration: InputDecoration(
                  labelText: 'Telefone',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 32),
              child: ElevatedButton(
                onPressed: () {
                  String name = _nameController.text;
                  String email = _emailController.text;
                  String password = _passwordController.text;
                  String telephone = _telephoneController.text;

                  print('Nome: $name');
                  print('Email: $email');
                  print('Senha: $password');
                  print('Telefone: $telephone');
                },
                child: Text('Cadastrar'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
