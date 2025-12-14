import Foundation 

class User {
  private let id: UUID 
  private(set) var username: String

  init(username: String) {
    self.username = username
    self.id = UUID()
  }

  func changeName(newName: String) {
    self.username = newName
  }

  func getInfosUser() {
    print("Username: \(self.username) ID: \(self.id)")
  }
}


let user1 = User(username: "vitto2")

user1.getInfosUser()

user1.changeName(newName: "vitto3")
user1.getInfosUser()