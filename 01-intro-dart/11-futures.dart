void main() {
  print("Inicio del programa");

  httpGet("test.com")
      .then((value) {
        print(value);
      })
      .catchError((err) {
        print("Error: $err");
      });

  print("Fin del programa");
}

Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 1), () {
    //     return "Respuesta de la peticion";
    throw "Error en la peticion";
  });
}
