/*Sobre a mesma lista, responda com any, every e firstWhere: existe algum talhão acima de
40 ha? todos têm mais de 10 ha? qual é o primeiro abaixo de 20 ha?
*/


final areas = [20, 29, 90.9, 12.3, 210.90];



void main() {
  
  //Tem algum valor maior que 20? a recebe como apelido de areas
  //seria como se fosse foreach que apelidamos o objeto, aqui apelidamos a lista
  var resultado = areas.any((a) => a > 20);
  
  print(resultado);
  
  //Every funciona como se fosse -> todos os itens da lista sao maiores que 30? 
  var resultado2 = areas.every((a) => a > 30);
  
  print(resultado2);
  
  //Percorre a lista e verifica qual é o menor valor que entra na validação
  var resultado3 = areas.firstWhere((a) => a < 20);
  
  print(resultado3);
}