import 'package:flutter_design_pattern_builder/model/filho_model.dart';

class FuncionarioModel {
  
  String nome;
  int idade;
  String profissao;
  List<FilhoModel> filhos;


  @override
  String toString() {
    return 'FuncionarioModel(nome: $nome, idade: $idade, profissao: $profissao, filhos: $filhos)';
  }
}
