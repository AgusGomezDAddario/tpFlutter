import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String _title = 'Práctica 4';

    return MaterialApp(
      title: _title,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: const LogIn(),
    );
  }
}

class Carrito extends StatefulWidget {
  const Carrito({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<Carrito> createState() => _CarritoState();
}

class _CarritoState extends State<Carrito> {
  final List<List<String>> productos = [
    [
      "Arándanos",
      "https://spoonacular.com/cdn/ingredients_250x250/blueberries.jpg",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    ],
    [
      "Banana",
      "https://spoonacular.com/cdn/ingredients_250x250/bananas.jpg",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    ],
    [
      "Cerezas",
      "https://spoonacular.com/cdn/ingredients_250x250/cherries.jpg",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    ],
    [
      "Durazno",
      "https://spoonacular.com/cdn/ingredients_250x250/peaches.jpg",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    ],
    [
      "Frambuesas",
      "https://spoonacular.com/cdn/ingredients_250x250/raspberries.jpg",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    ],
    [
      "Frutillas",
      "https://spoonacular.com/cdn/ingredients_250x250/strawberries.jpg",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    ],
    [
      "Kiwi",
      "https://spoonacular.com/cdn/ingredients_250x250/kiwis.jpg",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    ],
    [
      "Limón",
      "https://spoonacular.com/cdn/ingredients_250x250/lemon.jpg",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    ],
    [
      "Manzana",
      "https://spoonacular.com/cdn/ingredients_250x250/apple.jpg",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    ],
    [
      "Naranja",
      "https://spoonacular.com/cdn/ingredients_250x250/orange.jpg",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    ],
    [
      "Pera",
      "https://spoonacular.com/cdn/ingredients_250x250/pear.jpg",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    ],
    [
      "Pomelo",
      "https://spoonacular.com/cdn/ingredients_250x250/grapefruit.jpg",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    ],
    [
      "Sandía",
      "https://spoonacular.com/cdn/ingredients_250x250/watermelon.jpg",
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua."
    ],
  ];
  var _cantidadItems = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD90368),
        title: Text(
          'Práctica 4',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: <Widget>[
          Stack(
            children: [
              IconButton(
                icon: Icon(
                  Icons.shopping_cart,
                  color: Color(0xFFEADEDA),
                ),
                onPressed: () {
                  // Acción al presionar el ícono del carrito de compras
                },
              ),
              if (_cantidadItems > 0)
                Positioned(
                  right: 8,
                  top: 8,
                  child: Container(
                    padding: EdgeInsets.all(2),
                    decoration: BoxDecoration(
                      color: Colors.red,
                      shape: BoxShape.circle,
                    ),
                    constraints: BoxConstraints(
                      minWidth: 16,
                      minHeight: 16,
                    ),
                    child: Text(
                      _cantidadItems.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 10,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
            ],
          ),
        ],
      ),
      body: Center(
        child: ListView.builder(
          padding: const EdgeInsets.all(8),
          itemCount: productos.length,
          itemBuilder: (context, index) {
            final item = productos[index];
            return Dismissible(
              direction: DismissDirection.endToStart,
              key: UniqueKey(),
              onDismissed: (direction) {
                setState(() {
                  productos.removeAt(index);
                });
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text("Item eliminado"),
                  ),
                );
              },
              background: Container(
                color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 16.0),
                      child: Icon(
                        Icons.delete,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 8,
                ),
                leading: CircleAvatar(
                  radius: 28,
                  backgroundImage: NetworkImage(item[1]),
                ),
                title: Text(item[0]),
                trailing: Column(
                  children: [
                    SizedBox(
                      child: IconButton(
                        icon: const Icon(Icons.add_circle),
                        color: Colors.deepPurpleAccent,
                        onPressed: () {
                          setState(() {
                            _cantidadItems = _cantidadItems + 1;
                          });
                        },
                      ),
                    )
                  ],
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProductDetailsScreen(product: item),
                    ),
                  );
                },
              ),
            );
          },
        ),
      ),
    );
  }

  get _posicionContador {
    final cantidad = _cantidadItems;
    if (cantidad < 10) {
      return 5.5;
    } else {
      return 3.0;
    }
  }
}

class LogIn extends StatefulWidget {
  const LogIn({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _LogInState();
}

class ProductDetailsScreen extends StatefulWidget {
  final List<dynamic> product;

  ProductDetailsScreen({required this.product});

  @override
  _ProductDetailsScreenState createState() => _ProductDetailsScreenState();
}

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFD90368),
        title: Text(
          widget.product[0],
          style: TextStyle(fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      spreadRadius: 3,
                      blurRadius: 5,
                      offset: Offset(0, 3),
                    ),
                  ],
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.network(
                    widget.product[1],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              widget.product[0],
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 10),
            Text(
              widget.product[2],
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class _LogInState extends State<LogIn> {
  final _controllerContrasena = TextEditingController();
  final _controllerUsuario = TextEditingController();
  bool _submitted = false;
  bool _isObscure = true;

  @override
  void dispose() {
    _controllerContrasena.dispose();
    _controllerUsuario.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFEADEDA),
      appBar: AppBar(
        title: const Text('Tp 4 - Flutter'),
        backgroundColor: Color(0xFF820263),
      ),
      body: DecoratedBox(
        child: Stack(
          children: [
            Align(
              alignment: const Alignment(0, -0.5),
              child: SizedBox(
                width: 333,
                height: 484,
                child: Card(
                  clipBehavior: Clip.antiAlias,
                  child: Column(children: [
                    Padding(
                        padding: const EdgeInsets.all(10),
                        child: Column(
                          children: <Widget>[
                            Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.all(10),
                                child: const Text(
                                  'Aplicaciones Moviles',
                                  style: TextStyle(
                                      color: Color(0xFF2E294E),
                                      fontWeight: FontWeight.bold,
                                      fontSize: 30),
                                )),
                            Container(
                                alignment: Alignment.center,
                                padding: const EdgeInsets.all(10),
                                child: const Text(
                                  'Iniciar Sesión',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Color(0xFF8C8494)),
                                )),
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: ValueListenableBuilder(
                                  valueListenable: _controllerUsuario,
                                  builder: (context, value, _) {
                                    return TextField(
                                      controller: _controllerUsuario,
                                      keyboardType: TextInputType.emailAddress,
                                      decoration: InputDecoration(
                                        border: const OutlineInputBorder(),
                                        labelText: 'Usuario',
                                        hintText: 'Ingrese nombre de Usuario',
                                        suffixIcon: Icon(
                                          Icons.alternate_email,
                                        ),
                                        errorText: _submitted
                                            ? _textoErrorUsuario
                                            : null,
                                      ),
                                    );
                                  }),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: ValueListenableBuilder(
                                  valueListenable: _controllerContrasena,
                                  builder: (context, value, _) {
                                    return TextField(
                                      controller: _controllerContrasena,
                                      obscureText: _isObscure,
                                      decoration: InputDecoration(
                                          border: const OutlineInputBorder(),
                                          hintText: 'Ingrese Contraseña',
                                          labelText: 'Contraseña',
                                          errorText: _submitted
                                              ? _textoErrorContrasena
                                              : null,
                                          suffixIcon: IconButton(
                                            icon: Icon(_isObscure
                                                ? Icons.visibility
                                                : Icons.visibility_off),
                                            onPressed: () {
                                              setState(() {
                                                _isObscure = !_isObscure;
                                              });
                                            },
                                          )),
                                    );
                                  }),
                            ),
                            const SizedBox(height: 25),
                            Container(
                                height: 50,
                                width: double.infinity,
                                padding:
                                    const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: ElevatedButton(
                                  child: const Text(
                                    'Iniciar Sesión',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    backgroundColor: Color(0xFF2E294E),
                                  ),
                                  onPressed: _iniciarSesion,
                                )),
                          ],
                        ))
                  ]),
                ),
              ),
            ),
          ],
        ),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/background.gif'),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }

  String? get _textoErrorContrasena {
    final text = _controllerContrasena.value.text;
    if (text.isEmpty) {
      return 'La contraseña no puede estar vacía.';
    } else {
      if (text.length < 10 && text != 'utn1234') {
        return 'La contraseña debe tener 10 o más caracteres.';
      }
    }
    return null;
  }

  String? get _textoErrorUsuario {
    final text = _controllerUsuario.value.text;
    if (text.isEmpty) {
      return 'El usuario no puede estar vacío.';
    } else {
      if (!text.contains('@')) {
        return 'El formato es inválido.';
      }
    }
    return null;
  }

  void _iniciarSesion() {
    final usuario = _controllerUsuario.value.text;
    final contrasena = _controllerContrasena.value.text;
    setState(() => _submitted = true);
    if (_textoErrorUsuario == null && _textoErrorContrasena == null) {
      setState(() => _submitted = false);
      if (usuario == 'moviles@utn' && contrasena == 'utn1234') {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => const Carrito(title: 'Carrito')),
        );
      } else {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Error'),
            content: const Text('Usuario o contraseña inválidos.'),
            actions: [
              TextButton(
                child: const Text('Aceptar'),
                onPressed: () => Navigator.pop(context),
              )
            ],
          ),
        );
      }
    }
  }
}
