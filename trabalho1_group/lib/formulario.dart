import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class _Formulario extends StatelessWidget {

  final TextEditingController controlador;
  final TextInputType tipagemValor;
  final String rotulo;
  
  const _Formulario ({
    required this.controlador,
    required this.tipagemValor,
    required this.rotulo,
  });


  @override
  Widget build(BuildContext context) {

    return TextField(
      controller: controlador,
      keyboardType: tipagemValor,
      decoration: InputDecoration(
        labelText: rotulo,
        border:  const OutlineInputBorder(),
      ),

    );
  }




}