// Force uma quebra: use o operador ! sobre um valor que você sabe ser nulo. Copie a
// mensagem de execução e escreva, em comentário, por que esse operador deve ser
// evitado.

double distancia = 400;
double litros = 0;

void main() {
  double resultado = constumoPorLitros(distancia, litros)!;

  print("O consumo por litros do seu carro é $resultado");
}


// Ao colocar ? no double, permite que a função retorne valores vazios = null
double? constumoPorLitros(double distancia, double litros) {
  if (litros <= 0) {
    return null;
  }

  return distancia / litros;
}


/**
 * Unhandled exception: Null check operator used on a null value
 * O operador ! força a aplicação rodar de qualquer maneira, mesmo se nao tiver valor
 * se nao tiver realmente valores, a aplicação quebra 
 * 
 * 
 * 
 */
