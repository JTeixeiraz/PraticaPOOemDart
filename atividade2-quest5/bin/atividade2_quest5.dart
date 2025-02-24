import 'dart:io';

void main(List<String> arguments) {
  Aluno aluno1 = Aluno('João');
  print('adicione a nota1');
  String? nota1 = stdin.readLineSync();
  if(nota1 != null){
    double valorn1 = double.parse(nota1);
    aluno1.setNota1 = valorn1;
    print('adicione a nota2');
    String? nota2 = stdin.readLineSync();
    if (nota2 != null) {
      double valorn2 = double.parse(nota2);
      aluno1.setNota2 = valorn2;
      aluno1.verificarAprovacao();
    }else{
      print("adicione um valor valido");
    }
  }else{
    print("adicione um valor valido");
  }


}
class Aluno {
  late final String nome;
  late double _nota1;
  late double _nota2;
  late double operation;
  Aluno(this.nome);

  get getNota1 => _nota1;
  get getNota2 => _nota2;

  set setNota1(double nota){
    _nota1 = nota;
  }
  set setNota2(double nota){
    _nota2 = nota;
  }

  void calcularMedioa() {
    operation = (getNota1+getNota2)/2;
    print('A media das notas foi: $operation');
  }
  void verificarAprovacao(){
    calcularMedioa();
    if(operation>=7){
      print('O aluno $nome foi aprovado');
    }else{
      print('O aluno $nome foi reprovado');
    }
  }
}