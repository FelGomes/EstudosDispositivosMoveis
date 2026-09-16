import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MinhaTela(),
    );
  }
}

class MinhaTela extends StatelessWidget {
  const MinhaTela({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Padding(
          padding: EdgeInsets.all(20),
          child: Text(
            "Comparador de proposta de venda",
            style: GoogleFonts.openSans(
              fontSize: 22,
              fontWeight: FontWeight.bold,
              color: Colors.black87,
            ),
          ),
        ),
        backgroundColor: Color(0xFF4CAF50),
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Verifique qual é a melhor e a pior proposta de safra",
                  style: TextStyle(fontSize:18, fontWeight: FontWeight.normal ),
                ),

                const SizedBox(height: 5),

                const Text(
                  'Insira os dados e verifique a mais vantajosa',
                  style: TextStyle(color: Colors.black87)
                ),

                const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
