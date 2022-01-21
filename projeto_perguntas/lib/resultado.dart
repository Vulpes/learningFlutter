import 'package:flutter/material.dart';

class Resultado extends StatelessWidget {
  //const Resultado({Key? key}) : super(key: key);

  final int pontuacao;
  final void Function() quandoReiniciarQuestionario;

  Resultado(this.pontuacao, this.quandoReiniciarQuestionario);

  String get fraseResultado {
    if (pontuacao < 10) {
      return 'Parabéns!';
    } else if (pontuacao < 28) {
      return 'Você é bom!';
    } else if (pontuacao < 38) {
      return 'Impressionante!';
    } else {
      return 'Perfeito!';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            fraseResultado,
            style: TextStyle(fontSize: 28),
          ),
        ),
        TextButton(
            onPressed: quandoReiniciarQuestionario,
            child: const Text(
              'Reiniciar?',
              style: TextStyle(fontSize: 18, color: Colors.blue),
            ))
      ],
    );
  }
}
