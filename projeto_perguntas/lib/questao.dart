import 'package:flutter/material.dart';

class Questao extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);

  final String texto;

  Questao(this.texto);

  // for (String textoResp in perguntas[_perguntaSelecionada].cast()['respostas']) {
  //     respostas.add(Resposta(textoResp, _responder));
  //   }
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(10),
      child: Text(
        texto,
        style: TextStyle(fontSize: 28),
        textAlign: TextAlign.center,
      ),
    );
  }
}
