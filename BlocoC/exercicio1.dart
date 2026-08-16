/**
 * Usando interpolação, monte e imprima a frase "O Talhão 3 tem 42,0 ha plantados com
milho" a partir de três variáveis.
 */


String tralhao = "O tralhao 3";
double hectares = 42.0;
String tipoPlantacao = "Milho";


void main() {
  print("O $tralhao tem $hectares ha plantado com $tipoPlantacao");
  print("O " +tralhao + "tem $hectares ha plantada com " + tipoPlantacao);
}