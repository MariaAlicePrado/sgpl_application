import 'package:flutter/material.dart';
import 'package:sgpl_application/main.dart';
import 'package:sgpl_application/pages/Devolucoes.dart';

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
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              //Botão Devoluções
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Devolucoes()),
                  );
                  print('Devoluções clicado');
                },
                style: TextButton.styleFrom(
                  foregroundColor:
                      Colors.black, // Define a cor do texto e do ícone
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.desktop_windows_outlined),
                    SizedBox(width: 8),
                    Text('Devoluções'),
                  ],
                ),
              ),
              // Botão de Saída
              TextButton(
                onPressed: () {
                  Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(builder: (context) => SgplApp()),
                    (route) => false,
                  );
                  print('Sair clicado');
                },
                style: TextButton.styleFrom(
                  foregroundColor:
                      Colors.black, // Define a cor do texto e do ícone
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.desktop_windows_outlined),
                    SizedBox(width: 8),
                    Text('Sair'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
