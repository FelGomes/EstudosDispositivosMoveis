// Faça três leituras em sequência e depois três simultâneas com Future.wait. Meça os dois
// tempos com Stopwatch e explique a diferença.


import 'exercicio2.dart';

Future <double> medirTempo() async {

  await Future.delayed(const Duration(seconds: 2));

  return 89;

}


Future<void> main() async {


// Instanciando a classe de StopWathc para calcular o tempo gasto
Stopwatch sequencia = Stopwatch();

//damos inicio na contagem
sequencia.start();


// Nesse caso, ele vai medir o tempo 1 de cada vez, como na função é 2 segundos entao fica 2s + 2s + 2s
var tempo1 = await medirTempo();
var tempo2 = await medirTempo();
var tempo3 = await medirTempo();


// finaliza a contagem
sequencia.stop();


print("Leitura sequenciais");
print(tempo1);
print(tempo2);
print(tempo3);

// vai imprimir cerca de 6009ms -> dando 6 segundos
print("Para imprimir demorou cerca de: ${sequencia.elapsedMilliseconds} ms");



Stopwatch simultaneo = Stopwatch();


simultaneo.start();


// Nesse caso, ele vai calcular os 3 ao mesmo tempo, diminuindo o tempo de espera
var temperatura = await Future.wait([
  valorSensor(),
  valorSensor(),
  valorSensor()
]);


simultaneo.stop();

print("Leituras simultaneas");
print(temperatura);


print("Para imprimir a mesma função de forma simultanea, demorou cerca de ${simultaneo.elapsedMilliseconds} ms");



}