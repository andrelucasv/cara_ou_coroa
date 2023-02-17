import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {
  const Resultado(this.valor, {super.key});

  final String valor;

  @override
  State<Resultado> createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {
  @override
  Widget build(BuildContext context) {

    var caminhoImagem = "";

    if(widget.valor == "cara"){
      caminhoImagem = "assets/images/moeda_cara.png";
    }else {
      caminhoImagem = "assets/images/moeda_coroa.png";
    }

    return Scaffold(
      backgroundColor: const Color(0xff61bd86),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Image.asset(caminhoImagem),
          GestureDetector(
            onTap: (){
              Navigator.pop(context);
            },
            child: Image.asset("assets/images/botao_voltar.png"),
          )
        ],
      ),
    );
  }
}