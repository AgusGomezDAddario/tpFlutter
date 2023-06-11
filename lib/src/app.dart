import 'dart:html';
import 'dart:js_interop';

import 'package:flutter/material.dart';

class MyAppForm extends StatefulWidget {
  const MyAppForm({super.key});

  @override
  State createState() => _MyAppFormState();
}

class _MyAppFormState extends State<MyAppForm> {
  final _formKey = GlobalKey<FormState>();
  String _email = '';
  String _contrasenia = '';
  bool _loginInvalido = false;

  void _ingreso() {
    if (!_formKey.isNull) {
      if (_formKey.currentState!.validate()) {
        _formKey.currentState?.save();
        if (_email == 'moviles@utn' && _contrasenia == 'utn1234') {
          setState(() {
            _loginInvalido = false;
          });
        } else {
          setState(() {
            _loginInvalido = true;
          });
        }
        if (!_loginInvalido) {
          print('Correcto');
          //Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const ProductosMain()));
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 121, 194, 227),
      body: Center(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Pantalla de Login',
                  style: TextStyle(
                    fontSize: 50.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 50),
                TextFormField(
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
                  keyboardType: TextInputType.emailAddress,
                  validator: (Value) {
                    if (Value!.isEmpty) {
                      return 'Complete todos los campos';
                    }
                    if (Value.contains('@') == false) {
                      return 'Ingrese una direccion de correo';
                    }
                    return null;
                  },
                  onSaved: (Value) => _email = Value!,
                ),
                const SizedBox(height: 50),
                TextFormField(
                  enableInteractiveSelection: false,
                  autofocus: true,
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: 'Ingrese Contraseña',
                      labelText: 'Contraseña',
                      suffixIcon: Icon(
                        Icons.lock_outline,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                  validator: (Value) {
                    if (Value!.isEmpty) {
                      return 'Complete todos los campos';
                    }
                    if (Value.length < 10 && Value != "utn1234") {
                      return 'Contraseña corta';
                    }
                    return null;
                  },
                  onSaved: (Value) => _contrasenia = Value!,
                ),
                if (_loginInvalido)
                  const Text(
                    'Datos ingresados Inválidos',
                    style: TextStyle(color: Colors.red),
                  ),
                const SizedBox(height: 25),
                ElevatedButton(
                  onPressed: _ingreso,
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 14, 47, 124),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 30, vertical: 15),
                      textStyle: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold)),
                  child: const Text('Ingresar'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
