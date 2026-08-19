// Crie um mapa de cultura para cotação da saca. Acrescente uma nova entrada, consulte
// uma existente e consulte uma que não existe — observe o que o Dart devolve neste último
// caso.

// serve meio que para criar um objeto com nome do prodiuto e o preço - chave e valor
Map<String, double> cotacao = {
  'soja': 10.90,
  'feijao' : 20.87,
  'milho': 5.90
};

void main() {
  // imprime normal
  print(cotacao);
  // nesse caso, vai acrescentar, pois nao tem arroz na cotação
  cotacao['arroz'] = 19.90;
  print(cotacao);

  // vai retornar null, pois não tem esse elemento com dado
  print(cotacao['grao de bico']);
  print(cotacao['arroz']);
}