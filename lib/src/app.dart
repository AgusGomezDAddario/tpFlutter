import 'package:flutter/material.dart';

class MyAppForm extends StatefulWidget {
  const MyAppForm({super.key});

  @override
  State<MyAppForm> createState() => _MyAppFormState();
}

class _MyAppFormState extends State<MyAppForm> {
  String _email = '';
  String _contrasenia = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 90.0),
        children: <Widget>[
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Pantalla de Login',
                style: TextStyle(
                  fontSize: 40.0,
                ),
              ),
              SizedBox(
                width: 300.0,
                height: 20.0,
              ),
              Text(
                'Ingrese los datos',
                style: TextStyle(fontSize: 20.0),
              ),
              SizedBox(
                width: 300.0,
                height: 20.0,
                child: Divider(color: Colors.black),
              ),
              Divider(
                height: 18.0,
              ),
              TextField(
                enableInteractiveSelection: false,
                autofocus: true,
                decoration: InputDecoration(
                    hintText: 'Ingrese el Usuario',
                    labelText: 'Email del Usuario',
                    suffixIcon: Icon(
                      Icons.alternate_email,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
                onSubmitted: (valor) {
                  _email = valor;
                  print(_email);
                },
              ),
              Divider(
                height: 18.0,
              ),
              TextField(
                enableInteractiveSelection: false,
                obscureText: true,
                autofocus: true,
                decoration: InputDecoration(
                    hintText: 'Ingrese la Contraseña',
                    labelText: 'Contraseña del Usuario',
                    suffixIcon: Icon(
                      Icons.lock_outlined,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0))),
                onSubmitted: (valor) {
                  _contrasenia = valor;
                  print(_contrasenia);
                },
              ),
              Divider(
                height: 18.0,
              ),
              SizedBox(
                height: 50,
                width: 100,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    'Ingresar',
                    style: TextStyle(color: Colors.white),
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                  ),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
