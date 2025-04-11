import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(ExpensesApp());
}

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyHomePage());
  }
}

class MyHomePage extends StatelessWidget {
  final _transactions = [
    Transaction(
      id: 't1',
      title: 'Novo Tênis de Corrida',
      value: 310.76,
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2',
      title: 'Conta de Luz',
      value: 211.30,
      date: DateTime.now(),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Depesas Pessoais')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            child: Card(
              color: Colors.blue,
              elevation: 5,
              child: Text('Gráfico'),
            ),
          ),
          Column(
            children:
                _transactions.map((tr) {
                  return Card(
                    child: Row(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(
                            horizontal: 15,
                            vertical: 10,
                          ),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.purple, width: 2),
                          ),
                          padding: EdgeInsets.all(10),

                          child: Text(
                            tr.value.toString(),
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Colors.purple,
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              tr.title,
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            Text(
                              tr.date.toString(),
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                }).toList(),
          ),
        ],
      ),
    );
  }
}


// Correção Transaction e SDK
// Fala galera!

// Na próxima aula o professor vai criar a classe modelo Transaction, porém algumas mudanças são necessárias por conta do Flutter 2. Em resumo, não será mais necessário fazer o import do 'foundation' nem utilizar o @ no required.

// O código ficará assim:

// class Transaction {
//   final String id;
//   final String title;
//   final double value;
//   final DateTime date;
 
//   Transaction({
//     required this.id,
//     required this.title,
//     required this.value,
//     required this.date,
//   });
// }
// A mudança na versão do SDK para poder aceitar o operador spread também não é mais necessária, o operador irá funcionar normalmente desde que seu projeto tenha sido criado com as versões atualizadas do Dart e Flutter.

// Como padrão o sdk estará com os seguintes números lá no arquivo pubspec:

// sdk: ">=2.12.0 <3.0.0"
// Bons estudos!