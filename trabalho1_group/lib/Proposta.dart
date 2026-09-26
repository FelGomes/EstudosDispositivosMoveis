import 'package:flutter/material.dart';

class Proposta {
  final String comprador;
  final double precoSaca;
  final int prazoPagamento;
  static List<Proposta> analiseProposta = [];
  static List<Proposta> melhorPrecoSafra = [];
  static List<Proposta> piorProposta = [];
  static List<Proposta> propostaFuncaoSort = [];

  const Proposta({
    required this.comprador,
    required this.precoSaca,
    required this.prazoPagamento,
  });

  // Funçao que vai cadastrar/inserir as propostas
  /*
   * @param Comprador, prazo, prazo de pagamento
   * @return lista de propostas completa
   * 
   */
  static List<Proposta>? cadastrarProposta(
    TextEditingController comprador,
    TextEditingController precoSaca,
    TextEditingController prazoPagamento,
  ) {
    final _compradorController = comprador.text.trim();
    final _precoSacaController = double.parse(precoSaca.text.replaceAll(",", "."));
    final _prazoPagamentoContoller = int.parse(prazoPagamento.text);

   
      if (_compradorController.isEmpty ||
          _precoSacaController == null ||
          _prazoPagamentoContoller == null) {
        return null;
      } else if (_precoSacaController <= 0.0 ||
          _prazoPagamentoContoller <= 0.0) {
        return null;
      } else {
        Proposta novaProposta = Proposta(
          comprador: _compradorController,
          precoSaca: _precoSacaController,
          prazoPagamento: _prazoPagamentoContoller,
        );

        analiseProposta.add(novaProposta);

        return analiseProposta;
      }
    
  }

 static List<Proposta>? verificarPropostas() {
    for (var proposta in analiseProposta) {
      if (proposta.precoSaca <= 0.0) {
        return null;
      }

      if (proposta.prazoPagamento <= 0) {
        return null;
      }
    }

    melhorPrecoSafra = List.from(analiseProposta);

    melhorPrecoSafra.sort(
      (a, b) => b.precoSaca.compareTo(a.precoSaca),
    );

    return melhorPrecoSafra;
  }
  
}
