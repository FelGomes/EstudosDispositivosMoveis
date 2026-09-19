import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Formulario.dart';
import 'Proposta.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MinhaTela());
  }
}

class MinhaTela extends StatelessWidget {
  final compradorController = TextEditingController();
  final precoSacaController = TextEditingController();
  final prazoPagamentoContoller = TextEditingController();
  List<Proposta> melhoresProposta = [];


  // Criando a função para instanciar a lista de objetos
  void cadastrarProposta() {
   Proposta novaProposta = Proposta(comprador: compradorController.text, precoSaca: double.parse(precoSacaController.text), prazoPagamento: DateTime.parse(prazoPagamentoContoller.text));

    melhoresProposta.add(novaProposta);

  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            "Comparador de proposta de venda",
            style: GoogleFonts.openSans(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ),
        backgroundColor: Color(0xFF4CAF50),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Verifique qual é a melhor e a pior proposta de safra",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.normal),
              ),

              const SizedBox(height: 5),

              const Text(
                'Insira os dados e verifique a mais vantajosa',
                style: TextStyle(color: Colors.black87),
              ),

              const SizedBox(height: 24),

              // Formulario para receber o nome do comprador
              Formulario(
                controlador: compradorController,
                tipagemValor: TextInputType.text,
                rotulo: "Informe o nome do comprador da safra",
              ),

              const SizedBox(height: 30),

              // Formulario para receber o preço da safra
              Formulario(
                controlador: precoSacaController,
                tipagemValor: TextInputType.numberWithOptions(decimal: true),
                rotulo: "Informe o preço da safra",
              ),

              const SizedBox(height: 30),

              // Formulario para receber o prazo de pagamento da safra
              Formulario(
                controlador: prazoPagamentoContoller,
                tipagemValor: TextInputType.datetime,
                rotulo: "Informe a data do pagamento",
              ),

              const SizedBox(height: 30),

              Row(
                children: [
                  Expanded(
                    child: FilledButton.icon(
                      onPressed: cadastrarProposta,
                      label: const Text("Verificar"),
                      icon: const Icon(Icons.check),
                      style: FilledButton.styleFrom(
                        backgroundColor: const Color(0xFF0F8C31),
                        padding: EdgeInsets.all(20),
                        textStyle: TextStyle(fontSize: 18, fontWeight: FontWeight.normal)
                      ),
                    ),
                  ),

                  const SizedBox(width: 30),

                  OutlinedButton(onPressed: onPressed, child: child)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
