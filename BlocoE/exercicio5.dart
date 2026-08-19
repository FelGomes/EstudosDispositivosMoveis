 /*A partir de uma lista de áreas, use where para separar as maiores que 30 ha, map para
convertê-las em alqueires e fold para somar o total. Faça em uma única expressão
encadeada.*/


List<double> areas = [8.9, 30.2, 21.89, 40.7, 123.32];



void main() {
  
  // Vai buscar os valores maiores que 30
  var areasMaiores = areas.where((a) => a > 30);
  
  print(areasMaiores);
  
  // vai fazer uma função matematica para cada numero, dividindo por 4.84
  var alqueires = areas.map((a) => a/4.84);
  // aqui vai receber ele transformado com 2 casas decimais
  var resultado = alqueires.map((a) => a.toStringAsFixed(2));
  
  print(resultado);
  
  // Vai fazer uma soma total de cada termi
  var somaTotal = areas.fold<double>(0, (s,a) => s + a);
  
  print(somaTotal);
  
  
  
  
}