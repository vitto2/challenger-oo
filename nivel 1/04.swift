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

