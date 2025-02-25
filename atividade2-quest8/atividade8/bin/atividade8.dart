
import 'dart:io';
void main(List<String> arguments) {
  bool Sair = false;
  Cadastro novoCadastro = Cadastro();
  while (!Sair) {
  print('Qual ação deseja realizar?');
  print('1- Adicionar pessoa');
  print('2- Ver lista de pessoas');
  print('3- Sair');
  String? acao = stdin.readLineSync();
  if(acao != null){
    switch (acao) {
      case '1':
        novoCadastro.adicionarPessoa();
        break;
      case '2':
        novoCadastro.exibirDados();
        break;
      case '3':
        Sair = true;
        break;
    }
  }else{
    print('Digite um valor valido');
  }
  }
}

class Cadastro {
  List<String>lista = [];
  //Cadastro();
  void adicionarPessoa(){
    print('Adcione o nome do novo usuario na lista');
    late String? novoNome ;
    novoNome= stdin.readLineSync();
    if(novoNome != null){
        lista.add(novoNome);
    }else{
      print('Digite um valor valido');
    }
  }

  void exibirDados(){
    print('Informações da lista de pessoas:');
   print(lista);
  }
}