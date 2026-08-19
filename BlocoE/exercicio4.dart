/*Percorra o mapa do exercício anterior com entries e imprima uma linha por cultura, no
formato "soja: R$ 128,40".*/



Map<String, double> cotacao = {
  'feijao': 10.90,
  'soja': 128.40,
  'milho': 72.8
};


void main() {
  
  
 for(var cotacao in cotacao.entries) {
   print("${cotacao.key}: R\$ ${cotacao.value}");
 }
  
  
}