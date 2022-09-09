

import 'package:flutter/material.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({Key? key}) : super(key: key);

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController difficultyController = TextEditingController();
  TextEditingController imageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Padding(
          padding: const EdgeInsets.all(120),
          child: const Text('Nova tarefa'),
        ),
      ),
      body: Center(
        child: SingleChildScrollView( // scrollable widget
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 650,
              width: 375,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(width: 1)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      controller: nameController,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Tarefa',
                        fillColor: Colors.white70,
                        filled: true,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      controller: difficultyController,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Dificuldade',
                        fillColor: Colors.white70,
                        filled: true,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      onChanged: (text) {
                        setState(() {});
                      },
                      keyboardType: TextInputType.url,
                      controller: imageController,
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        hintText: 'Imagem',
                        fillColor: Colors.white70,
                        filled: true,
                      ),
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(6),
                        border: Border.all(width: 2, color: Colors.blueGrey)),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        imageController.text,
                        errorBuilder: (BuildContext context, Object exception,
                            StackTrace? stackTrace) {
                          return Image.asset('assets/images/sem-foto.jpg');
                        },
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      print(nameController.text);
                      print(int.parse(difficultyController.text));
                      print(imageController.text);
                    },
                    child: Text('Adicionar'),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
