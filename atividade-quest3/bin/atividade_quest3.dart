void main(List<String> arguments) {
  Carro novoCarro1 = Carro('Toyota', 'Corolla');
  novoCarro1.setPreco = 300000;
  novoCarro1.exibirDados();
}

class Carro {
  late final String marca;
  late final String modelo;
  late int _preco;

  Carro(this.marca, this.modelo);

  get getPreco => _preco;

  set setPreco(int newPreco){
    if (newPreco<0) {
      _preco = 0;
    }else{
      _preco = newPreco;
    }
  }

  void exibirDados(){
    print('O carro é da marca: $marca \nO modelo do carro é: $modelo \nO valor do carro é: $getPreco');
  }
}