import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../models/tranferencia.dart';
import 'formulario.dart';

const _tituloAppBar = 'Tranferências';


class ListaTranferencia extends StatefulWidget {
  final List<Transferencia> _transferencias = [];

  @override
  State<StatefulWidget> createState() {
    return ListaTranferenciasState();
  }
}

class ListaTranferenciasState extends State<ListaTranferencia>{

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_tituloAppBar),
      ),
      body: ListView.builder(
        itemCount: widget._transferencias.length,
        itemBuilder: (context, indice){
          final transferencia = widget._transferencias[indice];
          return ItemTranferencia(transferencia);
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return FormularioTransferencia();
          })).then( (tranferenciaRecebida) {
            _updateScreen(tranferenciaRecebida);
          });
        },
      ),
    );
  }

  void _updateScreen(Transferencia? tranferenciaRecebida) {
    setState(() {
      widget._transferencias.add(tranferenciaRecebida!);
    });
  }
}

class ItemTranferencia extends StatelessWidget {
  final Transferencia _tranferencia;

  ItemTranferencia(this._tranferencia);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(Icons.monetization_on),
        title: Text(_tranferencia.valor.toString()),
        subtitle: Text(_tranferencia.numeroDaConta.toString()),
      ),
    );
  }
}