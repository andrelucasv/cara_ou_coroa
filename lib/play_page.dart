import 'dart:math';

import 'package:cara_ou_coroa/result_page.dart';
import 'package:flutter/material.dart';

class Jogar extends StatefulWidget {
  const Jogar({super.key});

  @override
  State<Jogar> createState() => _JogarState();
}

class _JogarState extends State<Jogar> {

  void _exibirResultado (){
    var itens = ["cara", "coroa"];
    var numero = Random().nextInt(itens.length);
    var resultado = itens[numero];

    Navigator.push(
      context, 
      MaterialPageRoute(
        builder: (context) => Resultado(resultado)
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff61bd86),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset("assets/images/logo.png"),
          GestureDetector(
            onTap: _exibirResultado,
            child: Image.asset("assets/images/botao_jogar.png"),
          )
        ],
      ),
    );
  }
}