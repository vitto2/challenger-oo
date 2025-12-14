// Crie uma classe GameProfile
//  com uma propriedade variável pontuacaoTotal
//  (Int
// ). Adicione um método adicionarPontos(pontos: Int)
// . O método deve usar uma estrutura de controle (if
// ) para garantir que os pontos
//  adicionados sejam positivos e, se não forem, imprimir um erro no console.

class GameProfile {

  private(set) var pontuacaoTotal: Int = 0

  func adicionarPontos(pontos: Int) { 

    guard pontos > 0 else { 
      print("Valor inválido. Tente novamente")
      return
    }
  }

  pontuacaoTotal += pontos
  print("Adicionado \(pontos) pontos. Total: \(pontuacaoTotal)")
}


