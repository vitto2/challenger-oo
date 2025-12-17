// Crie a classe AnalyticsTracker. Crie uma propriedade compartilhada (static let shared) que armazene uma única instância dessa classe. Dentro da classe, adicione um método trackEvent(nome: String). Demonstre como usar AnalyticsTracker.shared.trackEvent(...) de qualquer lugar do seu código.


class AnalyticsTracker {

   static let shared = AnalyticsTracker() // static garante que essa shared pertence somente a classe e não a uma instância. 

  private init() {
    
  }

  func trackEvent(nome: String) {
      print(nome)
   }
}

AnalyticsTracker.shared.trackEvent(nome: "Testando")