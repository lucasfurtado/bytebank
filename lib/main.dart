import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: ListaTranferencia(),
      appBar: AppBar(
        title: Text('Tranferências'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () => null,
      ),
    ),
  ));
}

class ListaTranferencia extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget> [
        ItemTranferencia(Transferencia(100.00,1000)),
        ItemTranferencia(Transferencia(200.00,2000)),
        ItemTranferencia(Transferencia(300.00,3000)),
        ItemTranferencia(Transferencia(400.00,4000)),
      ],
    );
  }
}

class ItemTranferencia extends StatelessWidget{

  final Transferencia _tranferencia;

  ItemTranferencia(this._tranferencia);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_tranferencia.valor.toString()),
        subtitle: Text(_tranferencia.numeroDaConta.toString()),
      ),
    );
  }
}

class Transferencia {
  final double valor;
  final int numeroDaConta;

  Transferencia(this.valor, this.numeroDaConta);
}