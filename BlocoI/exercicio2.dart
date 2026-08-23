// Chame a mesma função sem await e imprima o que é devolvido. Explique em comentário o
// que apareceu no console.


Future <double> valorSensor() async {

  await Future.delayed(const Duration(seconds: 2));

  // ao chamar sem o await da Instance of 'Future<double> e nao o valor do return
  // Future<double> seria algo que estara disponivel no futuro
  return 69;


}



Future<void> main() async {

// Ao colocar o await, ele retonra o valor do return
var valorFinal =  valorSensor();

print(valorFinal);




}