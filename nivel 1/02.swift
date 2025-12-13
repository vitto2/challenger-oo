//Adicione à classe Usuario uma propriedade variável isOnline (Bool, inicializada como false ). Crie um método fazerLogin() que mude isOnline para true e imprima uma mensagem.


import Foundation 

class User {
  private let id: UUID 
  private(set) var username: String
  private var isOnline: Bool = false

  init(username: String) {
    self.username = username
    self.id = UUID()
  }

  func toggleOnlineStatus() {
    self.isOnline.toggle()

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
    print("Username: \(self.username) ID: \(self.id)")
  }
}


var user01 = User(username: "vitto2")

user01.toggleOnlineStatus()
user01.toggleOnlineStatus()