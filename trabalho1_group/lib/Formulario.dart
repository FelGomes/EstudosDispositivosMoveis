import 'package:flutter/material.dart';

class Formulario extends StatelessWidget {

  final TextEditingController controlador;
  final TextInputType tipagemValor;
  final String rotulo;
  
  const Formulario ({
    super.key,
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
        fillColor: Color(0Xff21ab),
      ),

    );
  }




}