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


