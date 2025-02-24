import 'dart:io';
void main(List<String> arguments) {
  print('Digite o nome do funcionario');
  String? nome = stdin.readLineSync();
  if (nome != null) {
      Funcionario f1 = Funcionario(nome);
    print('Digite o salario atual do(a) $nome');
    String? salarioAtual = stdin.readLineSync();
    if (salarioAtual != null) {
      f1.setSalario = double.parse(salarioAtual);
      print('Digite o percentual de quanto será aumentado o salario do $nome');
      String? percentual = stdin.readLineSync();
      if (percentual!=null) {
        double valorPercentual = double.parse(percentual);
        f1.aumentarSalario(valorPercentual);
      }else{
        print('Digite um valor valido');
      }
    }else{
      print('Digite um valor valido');
    }
  }else{
    print('Digite um valor valido');
  }
}

class Funcionario {
  late final String nome;
  late double _salario;
  Funcionario(this.nome);

  get getSalario => _salario;
  set setSalario(double salario){
    _salario = salario;
  }

  void aumentarSalario(double percentual){
    double resultado = getSalario+(getSalario*percentual);

    print("O valor do aumento do funcionario $nome é: $resultado");
  }
}
