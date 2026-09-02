// Caderno de Campo do Vale — PROJETO INICIAL
// Programação para Dispositivos Móveis · IF Goiano — Campus Ceres
//
// Este é o ponto de partida da aula de widgets de layout. O app já roda,
// mas a tela está praticamente vazia de propósito: você vai construí-la
// ao longo dos quatro ciclos, com o hot reload mostrando cada mudança.
//
// COMO RODAR (uma vez, no terminal, dentro desta pasta):
//   flutter create .        # gera as pastas nativas (android/, ios/...)
//   flutter pub get         # baixa as dependências
//   flutter run             # roda no dispositivo/emulador selecionado
//
// Depois, deixe o app rodando: salvar o arquivo aplica o hot reload.

import 'package:flutter/material.dart';

void main() => runApp(const CadernoApp());

class CadernoApp extends StatelessWidget {
  const CadernoApp({super.key});

  @override
  Widget build(BuildContext context) {
    // MaterialAPp tem um serie de atributos para utilizar
    return MaterialApp(
      title: 'Caderno de Campo do Vale',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFF1E5631)),
        useMaterial3: true,
      ),
      home: const TelaResumo(),
    );
  }
}

class TelaResumo extends StatelessWidget {
  const TelaResumo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atividade do clico 1'),
        backgroundColor: const Color(0xFF1E5631),
        foregroundColor: Colors.white,
      ),
      // Container: uma caixa que dá cor, margem, borda e tamanho ao filho.
      body: Container(
        // Padding interno: afasta o conteúdo das bordas da caixa.
        padding: const EdgeInsets.all(16),
        // Column: empilha os filhos na vertical, de cima para baixo.
        child: Column(
          // Alinha os filhos à esquerda (início da horizontal). Segue o padrao do html
          // Controla o posicionamento do texto
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Text(
              'Fazenda Ferreira vale do goias"',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            // SizedBox: um espaço vazio de tamanho fixo. Aqui, respiro vertical.
            SizedBox(height: 4),
            
            Text(
              'Ceres O universo do mundo — GO',
              style: TextStyle(fontSize: 16, color: Colors.black54),
            ),
            SizedBox(height: 16),
            // Row: distribui os filhos na horizontal, lado a lado.
            Row(
              children: [
                Text('Área total: ', style: TextStyle(fontSize: 16)),
                Text(
                  '96,4 ha',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Text('Responsavel: ', style: TextStyle(fontSize: 16)),
                Text(
                  'Felipe',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text('Caderno de Campo do Vale'),
  //       backgroundColor: const Color(0xFF1E5631),
  //       foregroundColor: Colors.white,
  //     ),
  //     // ===================================================================
  //     // AQUI COMEÇA A AULA.
  //     //
  //     // Ao longo dos quatro ciclos, você vai substituir este corpo pela
  //     // tela de resumo da propriedade:
  //     //
  //     //   Ciclo 1 — o cabeçalho (nome da propriedade + área total)
  //     //   Ciclo 2 — a faixa com três números, sem overflow (Expanded)
  //     //   Ciclo 3 — a lista de talhões (ListView.builder)
  //     //   Ciclo 4 — tudo junto, na ordem certa
  //     //
  //     // Os arquivos de cada ciclo estão na pasta ../exercicios do repositório
  //     // e também podem ser praticados no dartpad.dev (modo Flutter).
  //     //
  //     // Comece apagando o Center abaixo e montando o Ciclo 1 no lugar.
  //     // ===================================================================
  //     body: const Center(
  //       child: Padding(
  //         padding: EdgeInsets.all(24),
  //         child: Text(
  //           'Fazenda Felipe valen do Goias',
  //           textAlign: TextAlign.center,
  //           style: TextStyle(fontSize: 18, color: Colors.black54),
  //         ),
  //       ),
  //     ),
  //   );
  // }
}
