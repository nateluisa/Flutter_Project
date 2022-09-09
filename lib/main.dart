import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.indigo,
          title: Text(
            'Definição de metas diarias',
          ),
        ),
        body: ListView(
          children: [
            Task('Meditar'),
            Task('Se exercitar'),
            Task('Ir ao clube do livro'),
            Task('Treino de xadrez'),
            Task('Andar de bike'),
            Task('Treino de poesia'),
            Task('Rpg com a turma'),
            Task('Leitura dinamica'),
            Task('Visita ao asilo'),
            Task('Noite de games')
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color.fromARGB(255, 74, 25, 166),
        ),
      ),
    );
  }
}

class Task extends StatefulWidget {
  final String nome;

  const Task(this.nome, {Key? key}) : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel =
      0; // variavel que precisa ser assistida ao ser alterada precisa ser criada antes do override pois tudo que esta no build sera reescrito com o valor definido nela
  // como por default foi definido 0 em toda 'rebuild' da page para alteracao de nivel ele continuara como 0 se nao for realizado o procedimento descrito acima
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        color: Colors.indigo,
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  color: Colors.white70,
                  height: 140,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8),
                      child: Container(child: LinearProgressIndicator(
                        color: Colors.orange,
                        backgroundColor: Colors.white,
                        value: nivel/10,
                      ), width: 200),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        'Nivel: $nivel',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            Container(
              color: Colors.indigo,
              height: 100,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    color: Colors.white70,
                    width: 100,
                    height: 100,
                  ),
                  Container(
                    width: 200,
                    child: Text(
                      widget.nome,
                      style: TextStyle(
                          fontSize: 25,
                          fontWeight: FontWeight.w500,
                          overflow: TextOverflow.ellipsis),
                    ),
                  ),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll<Color>(Colors.white70)),
                      onPressed: () {
                        setState(() {
                          nivel++;
                        });

                        print(nivel);
                      },
                      child: Icon(Icons.arrow_drop_up))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
