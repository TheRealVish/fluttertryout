import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() =>
  runApp(MaterialApp(
    home: QuoteList() ,
  ));

class QuoteList extends StatefulWidget {
  const QuoteList({Key? key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  List<Quote> quotes = [
    Quote(author: 'oscar wild', text: 'this is quote' ),
    Quote(author: 'oscar wild', text: 'second quote' ),
    Quote(author: 'oscar wild', text: 'third quote' ),

  ];

  //
  // Widget quoteTemplate(quote){
  //   return QuoteCard(quote: quote,);
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text(
          'Awesome Quotes',
        ),
        centerTitle: true,
        backgroundColor: Colors.redAccent[100],
      ),
      body: Column(
        children: quotes.map((quote) => QuoteCard(
          quote: quote,
          delete: (){
            setState(() {
              quotes.remove(quote);
            });
          }
        )).toList(),
      ),
    );
  }
}

// class QuoteCard extends StatelessWidget {
//
//   final Quote quote;
//   QuoteCard({required this.quote});
//
//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.fromLTRB(16, 16, 16, 0) ,
//       child: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: [
//             Text(
//               quote.text,
//               style: TextStyle(
//                 fontSize: 18,
//                 color: Colors.grey[600]
//               ),
//             ),
//             SizedBox(
//               height: 6,
//             ),
//             Text(
//               quote.author,
//               style: TextStyle(
//                   fontSize: 14,
//                   color: Colors.grey[800]
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }



//
// class NinjaCard extends StatefulWidget {
//   const NinjaCard({Key? key}) : super(key: key);
//
//   @override
//   _NinjaCardState createState() => _NinjaCardState();
// }
//
// class _NinjaCardState extends State<NinjaCard> {
//
//   int ninjaLevel = 0;
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[900],
//       appBar: AppBar(
//         actions: [
//
//           Icon(
//             Icons.add,
//           ),
//           SizedBox(
//             width: 20,
//           ),
//         ],
//
//           title: Text('ID Card'),
//         centerTitle: true,
//         backgroundColor: Colors.grey[850],
//         elevation: 0,
//
//
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: (){
//           setState(() {
//             ninjaLevel = ninjaLevel + 1;
//           });
//         },
//         child: Icon(Icons.add),
//         backgroundColor: Colors.grey[800],
//     ),
//     body: Padding(
//       padding: EdgeInsets.fromLTRB(30, 40, 30, 0),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Center(
//             child: CircleAvatar(
//               backgroundImage: AssetImage('assets/dog.jpg'),
//               radius: 40,
//             ),
//           ),
//           Divider(
//             height: 60,
//             color: Colors.grey[800],
//           ),
//           Text(
//             'Name',
//             style: TextStyle(
//               color: Colors.grey,
//               letterSpacing: 2,
//             ),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Text(
//             'Chun-Li',
//             style: TextStyle(
//               color: Colors.amberAccent[200],
//               letterSpacing: 2,
//               fontSize: 28,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           SizedBox(
//             height: 30,
//           ),
//           Text(
//             'Current Ninja Level',
//             style: TextStyle(
//               color: Colors.grey,
//               letterSpacing: 2,
//             ),
//           ),
//           SizedBox(
//             height: 10,
//           ),
//           Text(
//             '$ninjaLevel',
//             style: TextStyle(
//               color: Colors.amberAccent[200],
//               letterSpacing: 2,
//               fontSize: 28,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           SizedBox(
//             height: 30,
//           ),
//           Row(
//             children: [
//               Icon(
//                 Icons.email,
//                 color: Colors.grey[400],
//               ),
//               SizedBox(width: 10,),
//               Text(
//                 'testing@gmail.com',
//                 style: TextStyle(
//                   color: Colors.grey[400],
//                   fontSize: 18,
//                   letterSpacing: 1
//                 ),
//
//               ),
//             ],
//
//           ),
//         ],
//       ),
//     )
//     );
//   }
// }
//



