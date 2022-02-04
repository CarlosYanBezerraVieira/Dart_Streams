import 'dart:async';

Future<void> main(List<String> args) async {
  print("inicio Stream Controller");
  final streamController = StreamController<int>.broadcast();
  final inStream = streamController.sink;
  final outStream = streamController.stream;
  outStream
      .skip(1)
      .where((numero) => numero % 2 == 0)
      .map((numero) => "o valor par enviado é $numero")
      .listen((streamConvertida) {
    print("String recebida");
    print(streamConvertida);
  });

  var numeros = List.generate(20, (index) => index);
  for (var numero in numeros) {
    print("enviando numero $numero");
    inStream.add(numero);
    await Future.delayed(Duration(milliseconds: 500));
  }
  print("Fim Stream Controller");
  await streamController.close();
}
