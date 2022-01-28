Future<void> main(List<String> args) async {
  print("inicio");
  final interval = Duration(milliseconds: 1);
  final stream = Stream<int>.periodic(interval, callback);
  await for (var i in stream) {
    print(i);
  }
  print("fim");
}

int callback(int segundos) {
  return segundos + 1;
}
