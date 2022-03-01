class Transferencia {
  final double valor;
  final int numeroDaConta;

  Transferencia(this.valor, this.numeroDaConta);

  @override
  String toString() {
    return 'Transferencia{valor: $valor, numeroDaConta: $numeroDaConta}';
  }
}
