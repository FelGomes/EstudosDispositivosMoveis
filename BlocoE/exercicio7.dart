/*/ Ordene a lista de áreas do maior para o menor com sort e compareTo. Depois inverta a
ordem alterando apenas a ordem dos operandos*/ 


List<double> areas = [20.9, 11.2, 21.24, 124.1, 24.4];


void main(){
  
  print(areas);
  areas.sort();
  
  print(areas);
  
  print(" --------------------------------------");
  
  //compara o menor valor com segundo -> ordem crescente
  areas.sort((a,b) => a.compareTo(b));
  print(areas);
  
  
  //compara o maior valor com os menors -> ordem decrescente
  areas.sort((a,b) => b.compareTo(a));
  print(areas);
  
}