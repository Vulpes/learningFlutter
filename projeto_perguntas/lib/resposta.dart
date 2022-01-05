import 'package:flutter/material.dart';

class Resposta extends StatelessWidget {
  //const Resposta({ Key? key }) : super(key: key);

  final String res;
  final void Function() quandoSelecionado;

  Resposta(this.res, this.quandoSelecionado);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: Colors.blue,
        ),
        child: Text(
          res,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        onPressed: quandoSelecionado,
      ),
    );
  }
}
