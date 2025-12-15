// Crie uma classe Booking (Reserva) com codigo (String), dataCheckin (String), e dataCheckout (String). Implemente um init que receba os 3. Após a criação da instância, imprima a diferença de dias (simulada por um simples Int) entre as datas usando um método chamado calcularDuracao().
import Foundation

class Booking {
  private let code: String
  private let dataCheckin: String
  private let dataCheckout: String


  init(dataCheckin: String, dataCheckout: String) {
    let randomCode = Int.random(in: 1000...2000)
    code = String(randomCode)
    self.dataCheckin = dataCheckin
    self.dataCheckout = dataCheckout
  }


  func showInfos() {
    print("\(code) | \(dataCheckin) | \(dataCheckout)")
  }
}


let bkn1 = Booking(dataCheckin: "2025-12-15", dataCheckout: "2025-12-20")


bkn1.showInfos()