// Crie uma classe Booking (Reserva) com codigo (String), dataCheckin (String), e dataCheckout (String). Implemente um init que receba os 3. Após a criação da instância, imprima a diferença de dias (simulada por um simples Int) entre as datas usando um método chamado calcularDuracao().
import Foundation

class Booking {
    private let code: String
    private let dataCheckin: String
    private let dataCheckout: String
  
     struct DateFormat {
      let day: Int 
      let month: Int
      let year: Int
    }

    init(dataCheckin: String, dataCheckout: String) {
      let randomCode = Int.random(in: 1000...2000)
      code = String(randomCode)
      self.dataCheckin = dataCheckin
      self.dataCheckout = dataCheckout
    }

    private func formatedData(date: String) -> DateFormat {
        let dateNormalize = date.split(separator: "-")
        .map {Int($0) ?? 0}
        
      return DateFormat(day: dateNormalize[2], month: dateNormalize[1], year: dateNormalize[0])
      }

    func showInfos() {
      print("\(code) | \(dataCheckin) | \(dataCheckout)")
    }

   func calcularDuracao() {
    let dataCheckInStructured = formatedData(date: dataCheckin)
    let dataCheckOutStructured = formatedData(date: dataCheckout)

    let validateDay = dataCheckOutStructured.day > dataCheckInStructured.day
    let validateMonth = dataCheckOutStructured.month >= dataCheckInStructured.month
    let validateYear = dataCheckOutStructured.year >= dataCheckInStructured.year
    
    if validateDay && validateMonth && validateYear { 
      let dias = dataCheckOutStructured.day - dataCheckInStructured.day
      print("Duração: \(dias) dia(s)")
    } else {
      print("Período inválido. Tente novamente.")
    }
  }
}


let bkn1 = Booking(dataCheckin: "2025-12-15", dataCheckout: "2025-12-20")


bkn1.calcularDuracao()