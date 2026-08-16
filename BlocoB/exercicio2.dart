// o ponto de interrogação server para representar um valor caso seja nulo
String? telefone = "62996496240";

// Para receber um valor nulo, tb precisamos atribuir para a outra variavel
int? tamanho = telefone?.length;
// int? tamanho = telefone?.length -> Maneira certa de se usar, assim, vai reeceber um valor null

/**
 * Error: Property 'length' cannot be accessed on 'String?' because it is potentially null.
Try accessing using ?. instead.

  Diz que nao se pode usar a propriedade length pois é uma String que tem potencial para ser vazia, entao é preciso usar o ? para que entenda
  que possa ser vazia
 */

void main() {
  print(tamanho);
}
