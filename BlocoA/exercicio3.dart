// Declare uma constante para o alqueire goiano (4,84 ha) e outra variável com final
// recebendo DateTime.now(). Tente trocar o final por const, leia o erro e explique a
// diferença entre os dois


const alqueire = 4.84;
final dataAtual = DateTime.now(); //valor mutavel

void main() {
  print(alqueire);
  print(dataAtual);
}


// Error: Cannot invoke a non-'const' constructor where a const expression is expected.
// Try using a constructor or factory that is 'const'.

/**
Nada mais é que nao se pode usar um valor constante para uma variavel que recebe um valor dinamico
Por hora ser um valor mutavel, nao é possivel
O valor da variavel sempre vai ser diferente ao rodar
*/