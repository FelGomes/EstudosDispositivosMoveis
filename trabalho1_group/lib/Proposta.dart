class Proposta  {
  final String comprador;
  final double precoSaca;
  final DateTime prazoPagamento;

  const Proposta({
    required this.comprador,
    required this.precoSaca,
    required this.prazoPagamento,
  });

  
  // Fazer a função para validar qual vai ser mais vantajoso

  // List<double> verificarProposta(
  //   double precoSacaController,
  //   DateTime prazoPagamentoContoller,
  // ) {
  //   if (precoSacaController <= 0) {
  //     return 0.0;
  //   }
  // }
}
