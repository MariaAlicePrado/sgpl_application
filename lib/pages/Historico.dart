import 'package:flutter/material.dart';

class Historico extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('HISTÓRICO')),

      // Corpo da tela com botão centralizado
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            print('Botão pressionado');
          },
          child: Text('Clique aqui'),
        ),
      ),

      // Menu inferior fixo com dois IconButton
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: Icon(Icons.home),
                onPressed: () {
                  print('Home clicado');
                },
              ),
              IconButton(
                icon: Icon(Icons.settings),
                onPressed: () {
                  print('Configurações clicado');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
