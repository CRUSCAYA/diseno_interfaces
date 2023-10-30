import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menú'),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(20.0),
          padding: EdgeInsets.all(20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.grey,
          ),
          child: Column(
            children: [
              Container(
                width: 150.0,
                height: 150.0,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                child: Icon(
                  Icons.person,
                  size: 80.0,
                  color: Colors.white,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Ronaldo Flores Serrano',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              Text('Ing Sistemas e Informatica'),
              SizedBox(height: 30.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Text('S/.1234', style: TextStyle(fontSize: 24.0)),
                      Text('Income'),
                    ],
                  ),
                  Column(
                    children: [
                      Text('S/.567', style: TextStyle(fontSize: 24.0)),
                      Text('Expenses'),
                    ],
                  ),
                  Column(
                    children: [
                      Text('S/.890', style: TextStyle(fontSize: 24.0)),
                      Text('Loan'),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 20.0), // Espacio entre los valores y la nueva sección

              // Nueva sección
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Fecha: 30/10/2023', // Puedes ajustar la fecha aquí
                    style: TextStyle(fontSize: 16.0),
                  ),
                  Text(
                    'Overview',
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Icon(Icons.arrow_upward, size: 30.0),
                      Text('Descripción', style: TextStyle(fontSize: 16.0)),
                      Text('S/.100', style: TextStyle(fontSize: 16.0)),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.arrow_upward, size: 30.0),
                      Text('Descripción', style: TextStyle(fontSize: 16.0)),
                      Text('S/.50', style: TextStyle(fontSize: 16.0)),
                    ],
                  ),
                  Column(
                    children: [
                      Icon(Icons.arrow_upward, size: 30.0),
                      Text('Descripción', style: TextStyle(fontSize: 16.0)),
                      Text('S/.75', style: TextStyle(fontSize: 16.0)),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
