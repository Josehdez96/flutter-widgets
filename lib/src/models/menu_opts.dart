import 'dart:convert';

class MenuOptions {
    MenuOptions({
        required this.nombreApp,
        required this.rutas,
    });

    String nombreApp;
    List<Ruta> rutas;

    factory MenuOptions.fromJson(String str) => MenuOptions.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory MenuOptions.fromMap(Map<String, dynamic> json) => MenuOptions(
        nombreApp: json["nombreApp"],
        rutas: List<Ruta>.from(json["rutas"].map((x) => Ruta.fromMap(x))),
    );

    Map<String, dynamic> toMap() => {
        "nombreApp": nombreApp,
        "rutas": List<dynamic>.from(rutas.map((x) => x.toMap())),
    };
}

class Ruta {
    Ruta({
        required this.ruta,
        required this.icon,
        required this.texto,
    });

    String ruta;
    String icon;
    String texto;

    factory Ruta.fromJson(String str) => Ruta.fromMap(json.decode(str));

    String toJson() => json.encode(toMap());

    factory Ruta.fromMap(Map<String, dynamic> json) => Ruta(
        ruta: json["ruta"],
        icon: json["icon"],
        texto: json["texto"],
    );

    Map<String, dynamic> toMap() => {
        "ruta": ruta,
        "icon": icon,
        "texto": texto,
    };
}
