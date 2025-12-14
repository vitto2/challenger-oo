import Foundation 

class User {
  private let id: UUID 
  private(set) let username: String
  private var isOnline: Bool = false

  init(username: String) {
    self.username = username
    id = UUID()
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