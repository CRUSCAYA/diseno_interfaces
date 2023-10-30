import 'package:flutter/material.dart';
import 'menu.dart'; // Importa la pantalla de menú

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: LoginScreen(),
      ),
    );
  }
}

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _passwordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
            ),
            child: Image.asset('assets/images/image1.png'), // Reemplaza con la ruta de tu imagen local
          ),
          SizedBox(height: 20.0),
          TextField(
            decoration: InputDecoration(
              hintText: 'Correo',
              prefixIcon: Icon(Icons.email),
            ),
          ),
          SizedBox(height: 10.0),
          TextField(
            decoration: InputDecoration(
              hintText: 'Contraseña',
              prefixIcon: Icon(Icons.lock),
              suffixIcon: InkWell(
                onTap: () {
                  _togglePasswordVisibility();
                },
                child: Icon(_passwordVisible ? Icons.visibility : Icons.visibility_off),
              ),
            ),
            obscureText: !_passwordVisible,
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              // Lógica para el inicio de sesión
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Menu()), // Navegar a la pantalla de menú
              );
            },
            style: ElevatedButton.styleFrom(
              primary: Colors.blue,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0), // Bordes redondeados
              ),
              minimumSize: Size(200.0, 50.0), // Tamaño grande
            ),
            child: Text(
              'Ingresar',
              style: TextStyle(fontSize: 18.0), // Tamaño de texto
            ),
          ),
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              TextButton(
                onPressed: () {
                  // Lógica para recuperar contraseña
                },
                child: Text('Sign Up'),
              ),
              Text('Forgot Password?'),
            ],
          ),
        ],
      ),
    );
  }

  void _togglePasswordVisibility() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }
}
