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
      "Camiseta Argentina Titular",
      "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/9d96391ff8e147a48e9aaf7300e7cf3d_9366/Camiseta_titular_Argentina_3_estrellas_2022_Blanco_IB3593_01_laydown.jpg",
      "CAMISETA TITULAR ARGENTINA 3 ESTRELLAS 2022"
    ],
    [
      "Camiseta Argentina Suplente F",
      "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/8490b132dada442daf4dafc000d7650f_9366/Camiseta_Alternativa_Seleccion_Argentina_Femenina_23_Version_Masculina_Negro_IB8536_01_laydown.jpg",
      "CAMISETA ALTERNATIVA SELECCIÓN ARGENTINA FEMENINA 23 (VERSIÓN MASCULINA)"
    ],
    [
      "Camiseta Argentina Titular M",
      "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/86efe3125fa24a04aa32aef900f59392_9366/Camiseta_Alternativa_Argentina_22_Azul_HB9220_01_laydown.jpg",
      "CAMISETA ALTERNATIVA ARGENTINA 22"
    ],
    [
      "Camiseta Argentina 3/4 Icon",
      "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/05709f38959b4cf380bfaec4010c61c9_9366/Camiseta_3-4_Icon_Argentina_Azul_HG4239_01_laydown.jpg",
      "CAMISETA 3/4 ICON ARGENTINA"
    ],
    [
      "Camiseta Boca Titular",
      "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/bfe57f2c696b4724a58baeec01689b53_9366/Camiseta_Titular_Oficial_Boca_Juniors_22-23_Azul_HE6329_01_laydown.jpg",
      "CAMISETA TITULAR OFICIAL BOCA JUNIORS 22/23"
    ],
    [
      "Camiseta Boca Suplente",
      "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/d94fbf4a70884a228009af01016426f0_9366/Camiseta_Alternativa_Boca_Juniors_22-23_Blanco_IB9458_01_laydown.jpg",
      "CAMISETA ALTERNATIVA BOCA JUNIORS 22/23"
    ],
    [
      "Camiseta Boca Tercera",
      "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/85f4f67ca5e84cf0a38aae4d0182eead_9366/Tercera_Camiseta_Boca_Juniors_22-23_Amarillo_HB0517_01_laydown.jpg",
      "TERCERA CAMISETA BOCA JUNIORS 22/23"
    ],
    [
      "Camiseta River Titular",
      "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/5799d578d67440e1bcb3af0800f34dd2_9366/Camiseta_de_Juego_Titular_River_Plate_22-23_Blanco_GB7591_01_laydown.jpg",
      "CAMISETA DE JUEGO TITULAR RIVER PLATE 22/23"
    ],
    [
      "Camiseta River Suplente",
      "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/f2121f4fe9534691a1c7af01014b1edb_9366/Camiseta_Alternativa_River_Plate_22-23_Rojo_GB7588_01_laydown.jpg",
      "CAMISETA ALTERNATIVA RIVER PLATE 22/23"
    ],
    [
      "Camiseta Titular Juventus",
      "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/79ad689f28f54df5ab42ade200814ba8_9366/Camiseta_Uniforme_Titular_Oficial_Juventus_22-23_Blanco_H38902_01_laydown.jpg",
      "CAMISETA UNIFORME TITULAR OFICIAL JUVENTUS 22/23"
    ],
    [
      "Camiseta Titular Bayern Munich",
      "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/9a55e527ccdf468b8470ae690130b9dc_9366/Camiseta_de_Titular_FC_Bayern_22-23_Rojo_H39900_01_laydown.jpg",
      "CAMISETA DE TITULAR FC BAYERN 22/23"
    ],
    [
      "Camiseta Titular Ajax",
      "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/3faf904a326949d79e48aea601041d85_9366/Camiseta_Titular_Ajax_Amsterdam_22-23_Rojo_H58243_01_laydown.jpg",
      "CAMISETA TITULAR AJAX AMSTERDAM 22/23"
    ],
    [
      "Camiseta Prepartido Arsenal",
      "https://assets.adidas.com/images/h_840,f_auto,q_auto,fl_lossy,c_fill,g_auto/05dd3dcd9dfc4a4ba5c7add700e55be5_9366/Camiseta_Prepartido_Arsenal_x_TFL_Azul_HF4524_01_laydown.jpg",
      "CAMISETA PREPARTIDO ARSENAL X TFL"
    ],
  ];
  var _cantidadItems = 0;

//LISTA DE PRODUCTOS
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEADEDA),
      appBar: AppBar(
        backgroundColor: Color(0xFFD90368),
        title: Text(
          'Aplicación Flutter',
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
                        color: Color(0xFF2E294E),
                        onPressed: () {
                          setState(() {
                            _cantidadItems = _cantidadItems + 1;
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text("Item agregado al carrito"),
                              ),
                            );
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

//DETALLES DEL PRODUCTO
class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFEADEDA),
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

//LOGIN
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Color(0xFFEADEDA),
      appBar: AppBar(
        title: const Text('Aplicación Flutter'),
        backgroundColor: Color(0xFF820263),
      ),
      body: DecoratedBox(
        child: Stack(
          children: [
            Align(
              alignment: const Alignment(0, -0.1),
              child: SizedBox(
                width: 333,
                height: 450,
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
                                  'Ingrese sus credenciales',
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
