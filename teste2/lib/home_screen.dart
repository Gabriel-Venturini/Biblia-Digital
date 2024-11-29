import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> chapters = [];  // Lista de capítulos da Bíblia

  @override
  void initState() {
    super.initState();
    _fetchChapters();  // Chama o método para buscar os capítulos
  }

  // Método para buscar capítulos da Bíblia
  Future<void> _fetchChapters() async {
    setState(() {
      chapters = [
        'Gênesis', 'Êxodo', 'Levítico', 'Números', 'Deuteronômio',
        'Josué', 'Juízes', 'Rute', '1 Samuel', '2 Samuel',
        '1 Reis', '2 Reis', 'Isaías', 'Jeremias', 'Ezequiel',
        'Daniel', 'Mateus', 'Marcos', 'Lucas', 'João',
        'Atos', 'Romanos', '1 Coríntios', '2 Coríntios', 'Apocalipse'
      ];  // Lista estática dos capítulos da Bíblia
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Capítulos da Bíblia'),
      ),
      body: Container(
        color: Color(0xFFDEB887), // Cor de fundo bege escuro
        child: ListView.builder(
          itemCount: chapters.length,
          itemBuilder: (context, index) {
            return Card(
              margin: EdgeInsets.all(8.0),
              child: ListTile(
                title: Text(
                  chapters[index],
                  style: TextStyle(
                    color: Color(0xFFF4A300), // Cor areia para o título
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () {
                  // Ao clicar em um capítulo, você pode levar para a tela dos versículos
                },
              ),
            );
          },
        ),
      ),
    );
  }
}
