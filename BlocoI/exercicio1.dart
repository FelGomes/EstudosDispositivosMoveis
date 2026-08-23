// Escreva uma função que simule a leitura de um sensor de umidade do solo: aguarde dois
// segundos com Future.delayed e devolva um valor. Chame-a com await e imprima
// mensagens antes e depois.


class FuturaFuncao {

// por ser uma função asyncrona, deve-se utilizar o Future e o tipo dela
Future<double> valorDeUmidade(String tipoSensor) async {

  //seria mais ou menos assim: espere a função com delay de 2 seconds
  await Future.delayed(const Duration(seconds: 2));


  return 75;


}

}



Future<void> main() async {


  FuturaFuncao funcaoFuture = FuturaFuncao();


print("antes");

var valorFinal = await funcaoFuture.valorDeUmidade("depois");

print("O valor em procentagem da umidade é de $valorFinal");



print(funcaoFuture.valorDeUmidade("sem o async"));




}



