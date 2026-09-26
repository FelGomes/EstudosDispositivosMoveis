import 'package:flutter/material.dart';

class Formulario extends StatelessWidget {

  final TextEditingController controlador;
  final TextInputType tipagemValor;
  final String rotulo;
  final String? Function(String?)? validador;
  
  const Formulario ({
    super.key,
    required this.controlador,
    required this.tipagemValor,
    required this.rotulo,
    this.validador,
  });


  @override
  Widget build(BuildContext context) {

    return TextFormField(
      controller: controlador,
      keyboardType: tipagemValor,
      validator: validador,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      decoration: InputDecoration(
        labelText: rotulo,
        border:  const OutlineInputBorder(),
        fillColor: Color(0xFFE8F5E9),
      ),

    );
  }




}