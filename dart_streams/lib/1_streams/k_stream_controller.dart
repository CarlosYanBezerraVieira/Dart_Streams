import 'dart:async';

Future<void> main(List<String> args) async {
  print("inicio Stream Controller");
  final streamController = StreamController<Pessoa>.broadcast();
  final inStream = streamController.sink;
  final outStream = streamController.stream;
  outStream.listen((pessoa) {
    print("Seja bem vindo ${pessoa.nome}");
    print(pessoa);
  });

  var numeros = List.generate(20, (index) => index);
  for (var numero in numeros) {
    print("enviando numero $numero");
    inStream.add(Pessoa(nome: "Carlos $numero"));
  }
  print("Fim Stream Controller");
  await streamController.close();
}

class Pessoa {
  String nome;
  Pessoa({
    required this.nome,
  });
}
