void main(List<String> arguments) {
  Produto p1 = Produto('banana');
  print('Nome do produto: ${p1.nome}');
  p1.setPreco = 30;
  print("Preço do(a) ${p1.nome}: ${p1.getPreco}");
  p1.setDesconto = 0.3;
  print("O valor do desconto do(a) ${p1.nome}: ${p1.getDesconto}");
  print(" ");
  p1.operacao();
}

class Produto {
   late final String nome;
   late double _preco;
   late double _desconto;
   Produto(this.nome);
   get getPreco => _preco;
   get getDesconto => _desconto;
   set setPreco(double preco){
    _preco = preco;
   }
   set setDesconto(double desconto){
    _desconto = desconto;
   }

   void operacao(){
    print('O valor do(a) $nome com desconto é: ${getPreco-getDesconto}');
   }
}