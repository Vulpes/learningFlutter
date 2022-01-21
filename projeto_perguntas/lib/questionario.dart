import 'package:flutter/material.dart';
import './questao.dart';
import './resposta.dart';

class Questionario extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);

  final List<Map<String, Object>> perguntas;
  final int perguntaSelecionada;
  final void Function(int) quandoResponder;

  // return Resposta(
  //           resp['texto'].toString(),
  //           () => quandoResponder(int.parse(resp['pontuacao'].toString())),
  //         );

  Questionario(
      {required this.perguntas,
      required this.perguntaSelecionada,
      required this.quandoResponder});

  bool get temPerguntaSelecionada {
    return perguntaSelecionada < perguntas.length;
  }

  @override
  Widget build(BuildContext context) {
    List<Map<String, Object>> respostas = temPerguntaSelecionada
        ? perguntas[perguntaSelecionada].cast()['respostas']
        : [];

    return Column(
      children: <Widget>[
        Questao(perguntas[perguntaSelecionada]['texto'].toString()),
        ...respostas
            .map((resp) => Resposta(resp['texto'].toString(),
                () => quandoResponder(int.parse(resp['pontuacao'].toString()))))
            .toList(),
      ],
    );
  }
}
