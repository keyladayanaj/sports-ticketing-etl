import 'package:flutter/material.dart';
import 'ticket_type.dart';

class TicketFormScreen extends StatefulWidget {
  const TicketFormScreen({super.key});

  @override
  State<TicketFormScreen> createState() => _TicketFormScreenState();
}

class _TicketFormScreenState extends State<TicketFormScreen> {

  String selectedGame = 'Palmeiras vs Corinthians';
  String fanName = '';
  TicketType selectedTicketType = TicketType.arquibancada;
  bool parking = false;
  bool snack = false;
  bool shirt = false;
  bool lounge = false;
  bool homeTeam = true;
  int quantity = 1;

  final TextEditingController _nameController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _nameController.addListener(() {
      setState(() {
        fanName = _nameController.text;
      });
    });
  }

  @override
  void dispose() {
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [

            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    // DROPDOWN DO JOGO (pág. 53 e 58)
                    const Text(
                      'Jogo',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const SizedBox(height: 4),
                    DropdownButtonFormField<String>(
                      value: selectedGame,
                      isExpanded: true,
                      decoration: const InputDecoration(
                        border: UnderlineInputBorder(),
                      ),
                      items: [
                        'Palmeiras vs Corinthians',
                        'São Paulo vs Santos',
                        'Flamengo vs Vasco',
                        'Atlético vs Cruzeiro',
                      ].map((jogo) {
                        return DropdownMenuItem(
                          value: jogo,
                          child: Text(jogo),
                        );
                      }).toList(),
                      onChanged: (value) {
                        setState(() {
                          selectedGame = value!;
                        });
                      },
                    ),

                    const SizedBox(height: 20),

                    // TEXTFIELD DO NOME (pág. 21)
                    TextField(
                      controller: _nameController,
                      decoration: const InputDecoration(
                        labelText: 'Nome do torcedor',
                        border: UnderlineInputBorder(),
                      ),
                    ),

                    const SizedBox(height: 20),

                    // TIPO DE INGRESSO - RadioListTile (pág. 32)
                    const Text(
                      'Tipo de ingresso',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    RadioListTile<TicketType>(
                      value: TicketType.arquibancada,
                      groupValue: selectedTicketType,
                      title: const Text('Arquibancada'),
                      onChanged: (value) {
                        setState(() {
                          selectedTicketType = value!;
                        });
                      },
                    ),
                    RadioListTile<TicketType>(
                      value: TicketType.cadeira,
                      groupValue: selectedTicketType,
                      title: const Text('Cadeira'),
                      onChanged: (value) {
                        setState(() {
                          selectedTicketType = value!;
                        });
                      },
                    ),
                    RadioListTile<TicketType>(
                      value: TicketType.camarote,
                      groupValue: selectedTicketType,
                      title: const Text('Camarote'),
                      onChanged: (value) {
                        setState(() {
                          selectedTicketType = value!;
                        });
                      },
                    ),

                    const SizedBox(height: 8),

                    // SERVIÇOS ADICIONAIS - Checkbox (pág. 49)
                    const Text(
                      'Serviços adicionais',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    CheckboxListTile(
                      contentPadding: EdgeInsets.zero,
                      value: parking,
                      title: const Text('Estacionamento'),
                      controlAffinity: ListTileControlAffinity.trailing,
                      onChanged: (value) {
                        setState(() {
                          parking = value ?? false;
                        });
                      },
                    ),
                    CheckboxListTile(
                      contentPadding: EdgeInsets.zero,
                      value: snack,
                      title: const Text('Lanche incluso'),
                      controlAffinity: ListTileControlAffinity.trailing,
                      onChanged: (value) {
                        setState(() {
                          snack = value ?? false;
                        });
                      },
                    ),
                    CheckboxListTile(
                      contentPadding: EdgeInsets.zero,
                      value: shirt,
                      title: const Text('Camisa do time'),
                      controlAffinity: ListTileControlAffinity.trailing,
                      onChanged: (value) {
                        setState(() {
                          shirt = value ?? false;
                        });
                      },
                    ),
                    CheckboxListTile(
                      contentPadding: EdgeInsets.zero,
                      value: lounge,
                      title: const Text('Acesso ao lounge'),
                      controlAffinity: ListTileControlAffinity.trailing,
                      onChanged: (value) {
                        setState(() {
                          lounge = value ?? false;
                        });
                      },
                    ),

                    const Divider(),

                    // SWITCH (pág. 43)
                    SwitchListTile(
                      contentPadding: EdgeInsets.zero,
                      value: homeTeam,
                      title: const Text('Torcer para o time da casa'),
                      onChanged: (value) {
                        setState(() {
                          homeTeam = value;
                        });
                      },
                    ),

                    const Divider(),

                    const SizedBox(height: 8),

                    // SLIDER DE QUANTIDADE (pág. 46)
                    Text(
                      'Quantidade: $quantity',
                      style: const TextStyle(fontSize: 13, color: Colors.grey),
                    ),
                    Slider(
                      value: quantity.toDouble(),
                      min: 1,
                      max: 10,
                      divisions: 9,
                      label: quantity.toString(),
                      onChanged: (value) {
                        setState(() {
                          quantity = value.toInt();
                        });
                      },
                    ),

                    const SizedBox(height: 8),

                  ],
                ),
              ),
            ),

            // BOTÃO FIXO EM BAIXO (pág. 13 e 24)
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
              child: SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: _comprarIngressos,
                  child: const Text('Comprar ingressos'),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }

  void _comprarIngressos() {
    // implementamos no próximo passo
  }
}