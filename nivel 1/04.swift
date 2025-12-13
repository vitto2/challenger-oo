// Crie uma classe AppSession com uma propriedade variável tempoDeUsoEmSegundos (Int, inicializada com 0). Crie um método adicionarTempo(segundos: Int) para atualizar a contagem. Crie uma instância e use o método 3 vezes.

class AppSession {
  private var tempoDeUsoEmSegundos: Int = 0

  func adicionarTempo(segundos: Int) {
    tempoDeUsoEmSegundos+=segundos
  }
}

let AppSessionTikTok = AppSession()

AppSessionTikTok.adicionarTempo(segundos: 40)
AppSessionTikTok.adicionarTempo(segundos: 20)
AppSessionTikTok.adicionarTempo(segundos: 10)

