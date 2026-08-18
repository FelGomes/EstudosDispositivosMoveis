// Percorra uma lista de meses da safra com for-in e imprima cada um numerado.

void main(){


  final List<String> mesesSafra = ['janeiro', 'fevereiro', 'Março', 'Abril', 'Maio', 'Junho', 'Julho', 'Agosto', 'Setembro', 'Outubro', 'Novembro', 'Dezembro'];

  int numero = 1;

  //Primeiro a variavel que iremos apelidar
  for (String mesesDOaNO in mesesSafra) {

    print("${numero}: ${mesesDOaNO}");

    numero ++;
    
  }


}