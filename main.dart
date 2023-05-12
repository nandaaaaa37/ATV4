import 'package:atv1/perguntas.dart';
import 'package:flutter/material.dart';

void main() {
  runApp( MyApp());
}

 class MyApp extends StatefulWidget{
  @override
  State<MyApp> createState() => _MyAppState();
 }

 class _MyAppState extends State<MyApp> {

  var perguntas = [
    "Qual sua cor favorita?",
    "Qual seu estado favorito?",
    "Qual sua escola favorita?",
    "Qual seu signo?",
  ];
  
  var contador = 0;

  void acao(){
    setState(() {
      contador : contador++;
    });
    print(contador);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      appBar: AppBar(
        title: Text("jogo das perguntas"),
      ),
      body: Column(
          children: [
            Perguntas(perguntas[contador]),
            ElevatedButton(onPressed: acao, child: Text("azul")),
            ElevatedButton(onPressed: null, child: Text("rosa")),
            ElevatedButton(onPressed: null, child: Text("vermelho")),
            ElevatedButton(onPressed: null, child: Text("verde")),
          ],
            ),
         ),
        );
}
 }