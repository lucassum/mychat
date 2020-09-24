import 'dart:convert';

class Perfil {
  String urlFoto;
  String nome;
  String status;
  Perfil({
    this.urlFoto,
    this.nome,
    this.status,
  });

  Perfil copyWith({
    String urlFoto,
    String nome,
    String status,
  }) {
    return Perfil(
      urlFoto: urlFoto ?? this.urlFoto,
      nome: nome ?? this.nome,
      status: status ?? this.status,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'urlFoto': urlFoto,
      'nome': nome,
      'status': status,
    };
  }

  factory Perfil.fromMap(Map<String, dynamic> map) {
    if (map == null) return null;

    return Perfil(
      urlFoto: map['urlFoto'],
      nome: map['nome'],
      status: map['status'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Perfil.fromJson(String source) => Perfil.fromMap(json.decode(source));

  @override
  String toString() =>
      'Perfil(urlFoto: $urlFoto, nome: $nome, status: $status)';

  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is Perfil &&
        o.urlFoto == urlFoto &&
        o.nome == nome &&
        o.status == status;
  }

  @override
  int get hashCode => urlFoto.hashCode ^ nome.hashCode ^ status.hashCode;
}
