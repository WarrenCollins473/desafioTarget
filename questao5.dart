import 'dart:io';

void main() {
  print('Informe a string que deseja inverter:');
  String entrada = stdin.readLineSync()!;

  String stringInvertida = inverterString(entrada);

  print('String original: $entrada');
  print('String invertida: $stringInvertida');
}

String inverterString(String str) {
  List<String> caracteres = str.split('');

  String invertida = '';

  for (int i = caracteres.length - 1; i >= 0; i--) {
    invertida += caracteres[i];
  }
  return invertida;
}
