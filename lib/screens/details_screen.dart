import 'package:flutter/material.dart';
import 'package:savio_pk/savio_pk.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final abast =
        ModalRoute.of(context)!.settings.arguments as Abastecimento;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        title: const Text("Detalhes"),
      ),
      body: Center(
        child: Column(
          children: [
            Text(abast.valorTotal.toStringAsFixed(2)),
            Text(abast.quantidadeLitros.toStringAsFixed(2)),
            Text(abast.quilometragemRodada.toString()),
          ],
        ),
      ),
    );
  }
}
