import 'package:first_project/components/task.dart';
import 'package:flutter/material.dart';

class InicialScreen extends StatefulWidget {
  const InicialScreen({Key? key}) : super(key: key);

  @override
  State<InicialScreen> createState() => _InicialScreenState();
}

class _InicialScreenState extends State<InicialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.only(left: 32),
          child: Text(
            'Definição de metas diarias',
          ),
        ),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: Duration(milliseconds: 800),
        child: ListView(
          children: [
            Task(
                'Meditar',
                'assets/images/o-iluminado.jpg',
                1),
            Task('Se exercitar',
                'assets/images/yiss.jpg', 3),
            Task(
                'Ir ao clube do livro',
                'assets/images/homer.jpeg',
                3),
            Task('Treino de xadrez',
                'assets/images/chess.jpg', 4),
            Task(
                'Andar de bike',
                'assets/images/bike.jpg',
                4),
            Task(
                'Treino de poesia',
                'assets/images/poesia.jpg',
                2),
            Task(
                'Leitura dinamica',
                'assets/images/leitura.jpg',
                4),
            Task(
                'Visita ao asilo',
                'assets/images/oldman.jpg',
                1),
            Task(
                'Noite de games',
                'assets/images/games.jpg',
                3),
            SizedBox(height: 80,)
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            opacidade = !opacidade;
          });
        },
        child: Icon(Icons.remove_red_eye),
        backgroundColor: Colors.black,
      ),
    );
  }
}