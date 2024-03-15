import 'dart:io';

void main() {
  print(
      'Informe um número para verificar se pertence à sequência de Fibonacci:');
  int numero = int.parse(stdin.readLineSync()!);

  List<int> sequencia = [0, 1];
  while (sequencia.last <= numero) {
    int proximo =
        sequencia[sequencia.length - 1] + sequencia[sequencia.length - 2];
    sequencia.add(proximo);
  }

  if (sequencia.contains(numero)) {
    print('$numero pertence à sequência de Fibonacci.');
  } else {
    print('$numero não pertence à sequência de Fibonacci.');
  }
}
