//Na classe Usuario, adicione as propriedades primeiroNome e sobrenome(String). Crie uma propriedade computada nomeCompleto (somente leitura, let implícito) que combine os dois.

import Foundation 

class User {
  private let id: UUID 
  private var username: String
  private var isOnline: Bool = false
  private let primeiroNome: String
  private let sobrenome: String
  private var nomeCompleto: String  { 
   "\(primeiroNome) \(sobrenome)"
  }

  init(username: String, primeiroNome: String, sobrenome: String) {
    self.username = username
    id = UUID()
    self.primeiroNome = primeiroNome
    self.sobrenome = sobrenome
  }

  func toggleOnlineStatus() {
    isOnline.toggle()

    if self.isOnline {
      print("Login feito com sucess!")
    } else {
      print("Vocë deslogou da plataforma. Até logo.")
    }
  }

  func changeName(newName: String) {
    self.username = newName
  }

  func getInfosUser() {
    print("Username: \(self.username) ID: \(self.id), Nome completo: \(nomeCompleto)")
  }
}


var user01 = User(username: "vitto2", primeiroNome: "Vitor", sobrenome: "Souza")

user01.toggleOnlineStatus()
user01.toggleOnlineStatus()
user01.getInfosUser()