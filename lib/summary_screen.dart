import 'package:flutter/material.dart';

class SummaryScreen extends StatelessWidget {
  final String fanName;
  final String game;
  final int quantity;
   final bool homeTeam;
  final double total;

  const SummaryScreen({
    super.key,
    required this.fanName,
    required this.game,
    required this.quantity,
    required this.homeTeam,
    required this.total,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Resumo da compra')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Torcedor: $fanName'),
            Text('Jogo: $game'),
            Text('Quantidade: $quantity'),
            Text('Torcida: ${homeTeam ? 'Time da casa' : 'Visitante'}'),
            Text('Total: R\$ ${total.toStringAsFixed(2)}'),
          ],
        ),
      ),
    );
  }
}
