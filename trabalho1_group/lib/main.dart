import 'dart:js_interop';

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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFE8F5E9)),
      ),
      home: MinhaTela(),
    );
  }
}

class MinhaTela extends StatefulWidget {
  const MinhaTela({super.key});

  @override
  State<MinhaTela> createState() => _MinhaTelaState();
}

class _MinhaTelaState extends State<MinhaTela> {
  final _compradorController = TextEditingController();
  final _precoSacaController = TextEditingController();
  final _prazoPagamentoContoller = TextEditingController();
  List<Proposta> melhoresProposta = [];
  final _formKey = GlobalKey<FormState>();
  bool _formularioValido = false;

  void limpar() {
    _compradorController.clear();
    _precoSacaController.clear();
    _prazoPagamentoContoller.clear();

    setState(() {
      Proposta.analiseProposta.clear();
      melhoresProposta.clear();
    });

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Dados limpados com sucesso!")),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            "Vendas do grupo DFC",
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
          child: Form(
            key: _formKey,
            onChanged: () {
              final valido = _formKey.currentState?.validate() ?? false;

              setState(() {
                _formularioValido = valido;
              });
            },
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
                  controlador: _compradorController,
                  tipagemValor: TextInputType.text,
                  rotulo: "Informe o nome do comprador da safra",
                  validador: (value) {
                    if (RegExp(r'[0-9]').hasMatch(value ?? '')) {
                      return 'O nome do comprador nao pode haver numeros!';
                    }
                    if (value == null || value.trim().isEmpty) {
                      return "O nome do comprador não pode ser vazio!";
                    }
                  },
                ),

                const SizedBox(height: 30),

                // Formulario para receber o preço da safra
                Formulario(
                  controlador: _precoSacaController,
                  tipagemValor: TextInputType.numberWithOptions(decimal: true),
                  rotulo: "Informe o preço da safra",

                  validador: (valoPreco) {
                    final precoSaca = double.tryParse(
                      (valoPreco ?? '').replaceAll(',', '.'),
                    );
                    if (precoSaca == null) {
                      return "O valor da saca não pode ser vazio";
                    }

                    if (precoSaca <= 0.0) {
                      return "O valor da saca não pode ser vazio";
                    }
                  },
                ),

                const SizedBox(height: 30),

                // Formulario para receber o prazo de pagamento da safra
                Formulario(
                  controlador: _prazoPagamentoContoller,
                  tipagemValor: TextInputType.numberWithOptions(decimal: false),
                  rotulo: "Quantidade de dias",

                  validador: (quantidadeDias) {
                    final dias = int.tryParse((quantidadeDias ?? '').trim());

                    if (dias == null) {
                      return "A quantidade de dias nao pode ser vazio";
                    }

                    if (dias <= 0) {
                      return "Quantidade de dias não pode ser 0 ou menor que 0";
                    }
                  },
                ),

                const SizedBox(height: 30),

                Row(
                  children: [
                    Expanded(
                      child: FilledButton.icon(
                        onPressed: _formularioValido
                            ? () {
                                final resultado = Proposta.cadastrarProposta(
                                  _compradorController,
                                  _precoSacaController,
                                  _prazoPagamentoContoller,
                                );

                                if (resultado != null) {
                                  setState(() {
                                    melhoresProposta = List.from(resultado);
                                  });
                                }
                              }
                            : null,
                        label: const Text("Verificar"),
                        icon: const Icon(Icons.check),
                        style: FilledButton.styleFrom(
                          backgroundColor: const Color(0xFF0F8C31),
                          padding: EdgeInsets.all(20),
                          textStyle: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                          ),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          shadowColor: const Color.fromARGB(103, 0, 0, 0),
                        ),
                      ),
                    ),

                    const SizedBox(width: 30),

                    OutlinedButton.icon(
                      onPressed: limpar,
                      label: const Text("Limpar"),
                      icon: const Icon(Icons.delete),
                      style: OutlinedButton.styleFrom(
                        backgroundColor: const Color(0xFFFF0000),
                        foregroundColor: Colors.white,
                        iconColor: Color.fromARGB(255, 252, 252, 252),
                        textStyle: const TextStyle(fontSize: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        minimumSize: const Size(0, 50),
                      ),
                    ),

                    const SizedBox(height: 24),
                  ],
                ),

                const SizedBox(height: 24),

                Padding(
                  padding: EdgeInsets.all(10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        "Melhor proposta: ",
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.black87,
                        ),
                      ),
                    ],
                  ),
                ),

                Builder(
                  builder: (context) {
                    final listaOrdenada = Proposta.verificarPropostas();

                    if (listaOrdenada == null || listaOrdenada.isEmpty) {
                      const Text("Não foi realizado nenhuma venda!");
                      return const SizedBox.shrink();
                    }

                    return Column(
                      children: listaOrdenada.map((proposta) {
                        return Card(
                          child: ListTile(
                            title: Text(proposta.comprador),
                            subtitle: Text(
                              'R\$ ${proposta.precoSaca.toStringAsFixed(2).replaceAll(".", ",")} por saca'
                              ' • ${proposta.prazoPagamento} dias',
                            ),
                          ),
                        );
                      }).toList(),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
