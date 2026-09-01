// Escreva uma função que receba uma lista de áreas e uma função de transformação,
// aplique a transformação a cada elemento e imprima o resultado. Chame-a duas vezes, com
// transformações diferentes


List<double> area = [10.90, 18.8, 41.9];


void main() {

  List<double> resultadoPrimeira = transformacao(area);
  print(resultadoPrimeira);
  transformacao2(resultadoPrimeira);
}

// Transformação de valores da lista
List<double> transformacao(List<double> area) {

  var resultado = area.map((a) => a *2).toList();

  return resultado;
  

}

void transformacao2(resultado){

  var resposta = resultado.map((a) => a *10);

  print("A nova lista é $resposta");
}