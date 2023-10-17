import 'package:flutter/material.dart';
import 'criar_meta_page.dart';

class MinhasMetasPage extends StatefulWidget {
  @override
  _MinhasMetasPageState createState() => _MinhasMetasPageState();
}

class _MinhasMetasPageState extends State<MinhasMetasPage> {
  // falta substituir pela lógica de busca dos dados reais
  List<Map<String, dynamic>> metas = [
    {
      'nome': 'Meta 1',
      'valor': 500,
      'icone': Icons.car_rental,
      'atingido': 200
    },
    {'nome': 'Meta 2', 'valor': 1000, 'icone': Icons.flight, 'atingido': 300},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Minhas Metas'),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: metas.length,
              itemBuilder: (context, index) {
                var meta = metas[index];
                return ListTile(
                  leading: Icon(meta['icone']),
                  title: Text(meta['nome']),
                  subtitle: Text('\$${meta['atingido']} / \$${meta['valor']}'),
                  onTap: () {},
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CriarMetaPage()),
                  );
                },
                child: Text('Criar nova meta'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
