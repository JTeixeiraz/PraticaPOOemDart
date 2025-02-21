void main(List<String> arguments) {
  Pessoa pessoa1 = Pessoa('joao');
  pessoa1.setIdade = 20;
  pessoa1.exibirDados();
}

class Pessoa {
  late final String nome;
  Pessoa(this.nome);

  late int _idadePrivada;
  int get getIdade => _idadePrivada;

  set setIdade(int idade){
    if (idade<0) {
      _idadePrivada = 0;
    }else{
    _idadePrivada = idade;
    }
  }

  void exibirDados(){
    print('Seja bem vindo $nome, voce tem $getIdade anos');
  }
}
