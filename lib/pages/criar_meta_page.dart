import 'package:flutter/material.dart';

class CriarMetaPage extends StatefulWidget {
  @override
  _CriarMetaPageState createState() => _CriarMetaPageState();
}

class _CriarMetaPageState extends State<CriarMetaPage> {
  late TextEditingController _nomeController;
  late TextEditingController _valorController;
  String? _selectedIcon;

  @override
  void initState() {
    super.initState();
    _nomeController = TextEditingController();
    _valorController = TextEditingController();
  }

  @override
  void dispose() {
    _nomeController.dispose();
    _valorController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Criar Nova Meta'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // ... (seu código existente para a entrada de meta aqui)
            ElevatedButton(
              onPressed: () {
                // Implemente a lógica para salvar a meta
              },
              child: Text('Salvar Meta'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Retorna para a página de minhas metas
              },
              child: Text('Visualizar Todas as Metas'),
            ),
          ],
        ),
      ),
    );
  }
}
