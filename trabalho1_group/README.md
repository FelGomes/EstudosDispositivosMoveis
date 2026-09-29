**Atividade desenvolvida pelos os estudantes: Carlos Eduardo de Oliveira Silva, Dheniel Rodrigues Luis e Felipe Ferreira Gomes**

# Proposta: Comparador de Propostas de Venda
Aplicativo desenvolvido em **Flutter/Dart** com o objetivo de auxiliar um produtor na comparação de propostas de compra de sua safra.
O sistema permite cadastrar diferentes propostas informando o comprador, o preço oferecido por saca e o prazo de pagamento. As propostas cadastradas são organizadas para facilitar a identificação da opção mais vantajosa.

--

##  Sobre o projeto
O projeto foi desenvolvido a partir da proposta **"Comparador de Propostas de Venda"**.

O produtor pode receber diferentes propostas pela sua produção, com valores e prazos de pagamento distintos. O aplicativo busca facilitar essa comparação, armazenando as propostas cadastradas e apresentando-as de forma organizada.

Cada proposta possui:

- Nome do comprador;
- Preço oferecido por saca;
- Prazo de pagamento em dias.

Após o cadastro, o aplicativo organiza as propostas da melhor para a pior com base no preço da saca, permitindo identificar rapidamente a proposta mais vantajosa.

---

## Funcionalidades

O aplicativo possui as seguintes funcionalidades:

- Cadastro de propostas através de formulário;
- Validação dos dados informados;
- Rejeição de propostas com preço inválido;
- Armazenamento das propostas durante a utilização do aplicativo;
- Ordenação das propostas pelo preço da saca;
- Exibição das propostas cadastradas;
- Destaque da melhor proposta;
- Botão **Verificar** para cadastrar e comparar uma proposta;
- Botão **Limpar** para limpar os campos do formulário.
- Validação de tipagem ao digitar nos campos de formulário

---

##  Conceitos utilizados

Durante o desenvolvimento foram utilizados conceitos importantes do Flutter e da linguagem Dart, desde a orientação a objetos à alertas de dados limpados com sucesso.

### Gerenciamento de estado

O aplicativo utiliza estado para atualizar a interface conforme novas propostas são cadastradas.
Dessa forma, quando o usuário adiciona uma proposta, a lista apresentada na tela é atualizada sem a necessidade de reiniciar o aplicativo.

### Formulários e Controllers

Os campos são controlados utilizando `TextEditingController`, permitindo obter e manipular os valores digitados pelo usuário, a tipagem dos dados, informado na construção do formulario, um rótulo, servindo como um placeholder e um validator, para validação em tempo de digitação.

São utilizados campos para:

- Comprador;
- Preço da saca;
- Quantidade de dias para pagamento.

### Validação

Antes de uma proposta ser adicionada à lista, os valores informados são verificados.
Propostas que possuem valores inválidos, como preço igual ou inferior a zero, não serão cadastradas.
Campo de nome que for informado número ou vazio, não são cadastrado.
Proposta que possui quantidade de dias com valores iguais ou inferiores a zero, não serão cadastrado.

### Ordenação

As propostas cadastradas são organizadas utilizando o método `sort()` do Dart.
A ordenação considera o preço oferecido pela saca, apresentando primeiro as propostas com maior valor.

### Orientação a Objetos
Foi criada uma classe `Formulario` para representar os inputs chamado na main.

Nesse objeto possui atributos como:
- controlador, Servindo como responsável de receber o valor digitado do usuário.
- tipagemValor, Servindo como responsável de receber a tipagem do campo, informado nas regras de negócio, definido pelo próprio desevolvedor.
- rotulo, Servindo como responsável do placeholder do input, orientando o usuário o que deve ser digitado no formulário.
- validador, Validador de resposta digitada, mostrando os erros instantaneamente.

Essa estrutura facilita a construção dos inputs e quais dados devem serem usados, deixando essa construção separada da main.


Outra classe criada, foi a `Proposta` servindo para validar os dados informados nos campos dos formulários.

- Comprador
- precoSafra
- prazoDePagamento
(Dados que receberão valores passado no construtor ao clicar no botão de verificar).
- Lista analiseProposta - Que recebe os objetos dentro da função.
- Função cadastrarProposta - Servindo para adicionar na lista conforme são passado os dados.
- Função verificarPropostas - Servindo para validar os dados de preço e prazo e ordenando os preços do menor para o maior usando a função sort.

---

## Interface

A interface foi desenvolvida buscando simplicidade e facilidade de utilização.
O formulário apresenta de forma clara os três dados necessários para cadastrar uma proposta.

Também foram utilizadas decisões de interface como:

- Botão verde para a ação principal de **Verificar**;
- Botão vermelho para a ação de **Limpar**;
- Campos identificados através de rótulos;
- Separação visual entre formulário e resultados;
- Exibição das informações de cada proposta em cards;
- Destaque da seção **Melhor proposta**.

Essas decisões buscam melhorar a clareza da aplicação e reduzir erros durante a utilização.

---

## Como executar

### Pré-requisitos

Para executar o projeto é necessário possuir:

- Flutter SDK instalado;
- Dart;
- Android Studio, VS Code ou outra IDE compatível;
- Emulador Android ou dispositivo físico configurado.

Verifique se o Flutter está configurado corretamente:

Caso a máquina esteja totalmente configurada, basta fazer a clonagem do repositório e rodar o comando **flutter run** dentro da pasta lib e aguardar até que o sistema seja aberto. Todas as criações e instaçãoes necessárias ja foram feitas
Como: **flutter create .** e **flutter pub get**

## Contribuições

O desenvolvimento da atividade foi realizado de forma individual e colaborativa. 
Como estratégia de aprendizagem, cada integrante ficou responsável por desenvolver 
sua própria aplicação, implementando os requisitos propostos no exercício.

Essa abordagem permitiu que todos os integrantes praticassem diretamente os principais
conceitos abordados na atividade, incluindo construção de interfaces, formulários,
validação de dados, gerenciamento de estado, manipulação de listas e ordenação.

Nesse sentido, não houve uma distruição de funcionalidade dentro do mesmo projeto em que fosse feito de forma separada, sendo realizado o exercício completo por cada intregrante, proporcionando uma melhor experiência da linguagem e suas funcionalidades.
