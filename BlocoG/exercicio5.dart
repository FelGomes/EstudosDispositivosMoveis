// Acrescente à classe uma constante static com o valor do alqueire goiano e use-a no
// campo calculado. Depois acesse essa constante a partir do main, sem criar nenhum objeto.

class Culturar {
  static const double alqueireGoiano = 4.84;

  static double calcularHectar(double hectar) {
    return hectar / alqueireGoiano;
  }
}


void main() {

  // para usar o metodo static nao precisa utilizar o objeto, basta chamar pelo nome da classe e o ' . '

  print(Culturar.alqueireGoiano);
  print(Culturar.calcularHectar(100));
}
