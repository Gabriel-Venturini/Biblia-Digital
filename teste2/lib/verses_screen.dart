import 'package:flutter/material.dart';

class VersesScreen extends StatelessWidget {
  // Lista de livros da Bíblia com seus 5 primeiros capítulos
  final Map<String, List<String>> books = {
    'Gênesis': [
      '1: No princípio, criou Deus os céus e a terra.',
      '2: E disse Deus: Haja luz; e houve luz.',
      '3: E o Senhor Deus fez cair um sono pesado sobre Adão.',
      '4: Caim disse a Abel: Vamos ao campo.',
      '5: Este é o livro da genealogia de Adão.',
    ],
    'Êxodo': [
      '1: Estes são os nomes dos filhos de Israel que foram para o Egito.',
      '2: E um homem da casa de Levi foi e casou com uma filha de Levi.',
      '3: Moisés disse: Eu sou o que sou.',
      '4: Moisés respondeu: Senhor, eu não sou eloquente.',
      '5: Depois Moisés e Aarão foram falar com Faraó.',
    ],
    'Levítico': [
      '1: Quando alguém de vós oferecer uma oferta ao Senhor, oferecerá a sua oferta de gado.',
      '2: Quando alguém oferecer uma oferta de cereais ao Senhor, a oferta será de flor de farinha.',
      '3: Se a sua oferta for de gado, da vaca ou da ovelha, oferecerá uma oferta pacífica.',
      '4: Se o sacerdote ungido pecar, trazendo culpa sobre o povo.',
      '5: Quando alguém for culpado de pecado, trará uma oferta pelo pecado.',
    ],
    'Números': [
      '1: E o Senhor falou a Moisés no deserto de Sinai.',
      '2: E o Senhor falou a Moisés, dizendo: "Os filhos de Israel, conforme as suas famílias."',
      '3: Esta é a genealogia de Arão e Moisés.',
      '4: E o Senhor falou a Moisés e a Aarão, dizendo: "Conta os levitas."',
      '5: O Senhor falou a Moisés, dizendo: "Fala aos filhos de Israel."',
    ],
    'Deuteronômio': [
      '1: Estas são as palavras que Moisés falou a todo Israel.',
      '2: Então voltamos e partimos para o deserto, pelo caminho do Mar Vermelho.',
      '3: Então nós subimos pelo caminho de Basã.',
      '4: Agora, pois, ó Israel, ouve os estatutos e os juízos.',
      '5: Moisés convocou todo Israel e disse-lhes: "Ouvi, ó Israel."',
    ],
    'Isaías':[
      '1:O pecado do povo de Israel e o convite ao arrependimento.',
      '2:A visão do monte do Senhor e a promessa do julgamento contra os ímpios.',
      '3:O juízo sobre as líderes de Judá e o lamento das mulheres.',
      '4:A purificação de Jerusalém e o remanescente fiel.',
      '5:A parábola da vinha e o juízo de Deus contra Judá.',
    ],
    'Jeremias':[
      '1:A chamada de Jeremias como profeta e sua missão.',
      '2:O pecado de Judá e a traição ao Senhor.',
      '3:A infidelidade de Israel e o convite ao arrependimento.',
      '4:A iminente destruição de Judá e o lamento pelo pecado do povo.',
      '5:O pecado de Judá e a promessa de castigo, e o julgamento sobre a terra.',
    ],

    'Ezequiel':[
      '1:A visão de Ezequiel das criaturas vivas e da glória de Deus.',
      '2:A comissão de Ezequiel como profeta e a resistência do povo.',
      '3:A responsabilidade de Ezequiel como vigia e a dura missão de advertir o povo.',
      '4:O cerco de Jerusalém e o uso de símbolos proféticos.',
      '5:A punição de Jerusalém e os castigos de Deus sobre Judá.',
    ],

    'Daniel':[
      '1:O cativeiro babilônico e a fidelidade de Daniel e seus amigos.',
      '2:O sonho de Nabucodonosor e a interpretação do sonho por Daniel.',
      '3:A fornalha ardente e a salvação de Sadraque, Mesaque e Abednego.',
      '4:O sonho de Nabucodonosor e a humilhação do rei.',
      '5:A escrita na parede e a queda de Belsazar.',
    ],

    'Mateus':[
      '1:A genealogia de Jesus e o nascimento de Cristo.',
      '2:A visita dos magos, a fuga para o Egito e o retorno à Nazarete.',
      '3:O ministério de João Batista e o batismo de Jesus.',
      '4:A tentação de Jesus no deserto e o início de seu ministério.',
      '5:O Sermão da Montanha, com as Bem-aventuranças e os ensinamentos sobre a Lei.',
    ],

    'Marcos':[
      '1:O início do ministério de João Batista, o batismo de Jesus e a cura de muitos.',
      '2:A cura do paralítico e a controvérsia sobre os fariseus.',
      '3:A escolha dos doze apóstolos e a reação dos fariseus contra Jesus.',
      '4:As parábolas de Jesus, incluindo a parábola do semeador.',
      '5:A cura do endemoninhado gadareno, a cura de uma mulher e a ressurreição da filha de Jairo.',
    ],

    'Lucas':[
      '1:O nascimento de João Batista, o anúncio do nascimento de Jesus, e o cântico de Maria.',
      '2:O nascimento de Jesus, a visita dos pastores e a apresentação de Jesus no templo.',
      '3:O ministério de João Batista e o batismo de Jesus.',
      '4:A tentação de Jesus no deserto, seu ministério em Nazaré e as curas realizadas.',
      '5:A chamada dos primeiros discípulos e o poder de Jesus sobre doenças e demônios.',
    ],

    'João':[
      '1:O Prólogo (a Palavra que estava com Deus), o testemunho de João Batista e o chamado dos primeiros discípulos.',
      '2:O milagre em Caná (transformação de água em vinho) e a purificação do templo.',
      '3:O encontro de Jesus com Nicodemos, a explicação do novo nascimento e o famoso versículo João 3:16.',
      '4:A conversa de Jesus com a mulher samaritana e a cura do filho de um oficial.',
      '5:A cura do paralítico de Betesda e a discussão sobre a autoridade de Jesus.',
    ],

  'Josué': [
  '1: Depois da morte de Moisés, servo do Senhor, falou o Senhor a Josué.',
  '2: Josué, filho de Num, enviou secretamente dois espias de Sitim.',
  '3: Josué disse aos sacerdotes: Tomai a arca da aliança e passai diante do povo.',
  '4: Quando todo o povo acabou de passar o Jordão, o Senhor disse a Josué.',
  '5: Naquela mesma noite, o Senhor disse a Josué: "Faz uma faca de pedra."',
  ],

  'Juízes': [
  '1: Depois da morte de Josué, os filhos de Israel perguntaram ao Senhor.',
  '2: O anjo do Senhor subiu de Gilgal a Boquim e disse: "Eu vos tirei da terra do Egito."',
  '3: Os filhos de Israel fizeram o que parecia mal aos olhos do Senhor.',
  '4: Débora, profetisa, mulher de Lapidote, julgava a Israel naquele tempo.',
  '5: Então Débora e Baraque, filho de Abinoão, cantaram este cântico.',
  ],

  'Rute': [
  '1: Nos dias em que julgavam os juízes, houve fome na terra.',
  '2: Naquele tempo, Rute, a moabita, foi a campo para espigar.',
  '3: Então Noemi disse a Rute: "Minha filha, não hei de buscar para ti descanso?"',
  '4: Boaz subiu à porta e assentou-se lá.',
  '5: Rute, a moabita, gerou a Obede, que gerou a Jessé.',
  ],

  'Samuel 1': [
  '1: Havia um homem de Ramateim-Zofim, da região montanhosa de Efraim.',
  '2: E orou Ana, dizendo: "O meu coração exulta no Senhor, a minha força está no Senhor."',
  '3: E o jovem Samuel ministrava perante o Senhor, sob a direção de Eli.',
  '4: Naquela época, os filisteus se ajuntaram para a guerra contra Israel.',
  '5: Os filisteus tomaram a arca de Deus e a levaram para a cidade de Asdode.',
  ],
  'Samuel2': [
  '1: Depois da morte de Saul, Davi voltou de derrotar os amalequitas.',
  '2: Depois disso, Davi consultou o Senhor, dizendo: "Subirei a uma das cidades de Judá?"',
  '3: Foi travada uma guerra entre a casa de Saul e a casa de Davi.',
  '4: Ouvindo-se na casa de Saul, que Jonatas, filho de Saul, estava morto.',
  '5: Então, todos os anciãos de Israel vieram ao rei Davi em Hebrom.',
  ],
  'Reis 1': [
  '1: Quando o rei Davi envelheceu, pôs-se a dormir com seus pais.',
  '2: Naquela ocasião, Davi chamou a Salomão, seu filho.',
  '3: Salomão fez um acordo de paz com o rei de Israel.',
  '4: E o rei Salomão fez uma aliança com os filhos de Israel.',
  '5: Salomão enviou mensageiros a Hirão, rei de Tiro.',
  ],

  'Reis 2': [
  '1: A morte de Acazias, o reinado de Jeorão, e a ascensão de Elias.',
  '2: A ascensão de Elias ao céu e a sucessão de Eliseu.',
  '3: A guerra contra Moabe e o milagre da água no deserto.',
  '4: O milagre da multiplicação do azeite, a ressurreição do filho da sunamita, e Eliseu cura Naamã.',
  '5: Naamã é curado da lepra por Eliseu.',
  ],
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Versículos da Bíblia'),
      ),
      body: Container(
        color: Color(0xFFDEB887), // Cor de fundo bege escuro
        child: ListView.builder(
          itemCount: books.keys.length,
          itemBuilder: (context, index) {
            String book = books.keys.elementAt(index);
            List<String> chapters = books[book]!;

            return Card(
              margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
              child: ExpansionTile(
                title: Text(
                  book,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFFF4A300), // Cor areia para o título do header
                  ),
                ),
                children: chapters.map((chapter) {
                  return ListTile(
                    title: Text('Versículo $chapter'),
                    onTap: () {
                      // Ao clicar em um capítulo, exibe o versículo ou conteúdo relacionado
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Capítulo $chapter de $book')),
                      );
                    },
                  );
                }).toList(),
              ),
            );
          },
        ),
      ),
    );
  }
}
