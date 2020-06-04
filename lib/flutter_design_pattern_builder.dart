import 'package:flutter_design_pattern_builder/builders/funcionario_builder.dart';
import 'package:flutter_design_pattern_builder/builders/funcionario_builder_complexo.dart';
import 'package:flutter_design_pattern_builder/dio/custom_dio_builder.dart';

import 'model/filho_model.dart';

Future<void> execute() async {
  
  var funcionario1 = FuncionarioBuilder.instance
    .addFilho(FilhoModel(nome: 'Filho 1', idade: 10))
    .nome('Rodrigo Rahman')
    .idade(36)
    .profissao('FullStack Flutter')
    .addFilho(FilhoModel(nome: 'Filho 2', idade: 30))
    .build();

  print(funcionario1);


  var funcionarioSemFilhos = FuncionarioBuilderCompleto
    .instance
    .nome('Rodrigo Rahman')
    .idade(36)
    .profissao('FullStack Flutter')
    .addFilho(FilhoModel(nome: 'Filho 1', idade: 30))
    .build();

  print(funcionarioSemFilhos);


  print('###############################################################');
  print('post');
  var resultPost = await CustomDioBuilder.instance
    .post()
    .path('https://jsonplaceholder.typicode.com/posts')
    .addHeader('Content-type', 'application/json')
    .params()
    .data({
      'title': 'titulox',
      'body': 'BodyX',
      'userId': 1
    })
    .run();

  print(resultPost.data);
  print('post');
  print('###############################################################');
  print('GET com QueryParameters');
  var resultGet = await CustomDioBuilder.instance
    .get()
    .path('https://jsonplaceholder.typicode.com/posts')
    .params()
      .queryParameters()
        .addQueryParam('userId', 1)
      .run();
  print(resultGet.data);
  print('GET com QueryParameters');
  print('###############################################################');
}