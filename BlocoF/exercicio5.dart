// Escreva uma função que calcule a receita bruta a partir de área, produtividade e preço da
// saca, com os três parâmetros nomeados e obrigatórios.



final double area = 10.90;
final double produtividade = 10;
final double preco = 9.89;


void main() {

  print("O valor da receita bruta é de: ${calcularReceitaBruta(area, produtividade, preco).toStringAsFixed(2)}");
  print("A area é de ${area} a produtividade é de ${produtividade} e o preço ${preco}");


}



double calcularReceitaBruta(area, produtividade, preco) {

  return area * produtividade * preco;
}