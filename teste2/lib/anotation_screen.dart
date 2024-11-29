import 'package:flutter/material.dart';

class AnnotationsScreen extends StatefulWidget {
  @override
  _AnnotationsScreenState createState() => _AnnotationsScreenState();
}

class _AnnotationsScreenState extends State<AnnotationsScreen> {
  final TextEditingController _controller = TextEditingController(); // Controlador para o campo de texto
  List<String> _annotations = []; // Lista que armazenará as anotações

  // Função para adicionar a anotação à lista
  void _addAnnotation() {
    if (_controller.text.isNotEmpty) {
      setState(() {
        _annotations.add(_controller.text); // Adiciona a anotação à lista
        _controller.clear(); // Limpa o campo de texto após adicionar
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Anotações'),
      ),
      body: Container(
        color: Color(0xFFDEB887), // Cor de fundo bege escuro
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Barra de digitação
            TextField(
              controller: _controller,
              decoration: InputDecoration(
                labelText: 'Digite sua anotação',
                border: OutlineInputBorder(),
              ),
              onSubmitted: (text) => _addAnnotation(), // Ao pressionar Enter, a anotação é adicionada
            ),
            SizedBox(height: 20),
            // Botão para adicionar a anotação
            ElevatedButton(
              onPressed: _addAnnotation,
              child: Text('Adicionar Anotação'),
            ),
            SizedBox(height: 20),
            // Lista de anotações
            Expanded(
              child: ListView.builder(
                itemCount: _annotations.length,
                itemBuilder: (context, index) {
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      title: Text(
                        _annotations[index],
                        style: TextStyle(
                          color: Color(0xFFF4A300), // Cor areia para o título da anotação
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
