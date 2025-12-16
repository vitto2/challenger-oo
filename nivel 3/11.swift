// Você tem as seguintes variáveis soltas: let carroMarca = "Honda", var carroLigado = false. Refatore isso em uma única classe Veiculo com propriedades e métodos ligar() e desligar(). O método ligar() deve usar uma estrutura de controle para impedir ligar se já estiver ligado.

class Veiculo {
  let carroMarca: String 
  var carroLigado: Bool = false


  init(marca: String) { 
    self.carroMarca = marca
  }

  func ligar() {
    if carroLigado {
      print("O carro já está ligado. ")
    } else {
      carroLigado = true
      print("Carro ligado!")
    }
  }

  func desligar() {
      if carroLigado {
        carroLigado = false
        print("Carro desligado. \(carroLigado)")
      } else {
        print("O carro já está desligado. \(carroLigado)")
      }

  }
}