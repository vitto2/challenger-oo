// Crie uma classe AppSession com uma propriedade variável tempoDeUsoEmSegundos (Int, inicializada com 0). Crie um método adicionarTempo(segundos: Int) para atualizar a contagem. Crie uma instância e use o método 3 vezes.

class AppSession {
  private var tempoDeUsoEmSegundos: Int = 0

  func adicionarTempo(segundos: Int) {

    if segundo > 0 {
    tempoDeUsoEmSegundos+=segundos
    } else {
      print("Valor inválido. Tente novamente.")
    }
  }
}

let appSessionTikTok = AppSession()

appSessionTikTok.adicionarTempo(segundos: 40)
appSessionTikTok.adicionarTempo(segundos: 20)
appSessionTikTok.adicionarTempo(segundos: 10)

