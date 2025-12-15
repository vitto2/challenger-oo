import Foundation

class Booking { 
  private let code: String 
  private let dataCheckin: String
  private let dataCheckout: String


  init(dataCheckin: String, dataCheckout: String) { 
    code = String(Int.random(in: 1000...2000))
    self.dataCheckin = dataCheckin
    self.dataCheckout = dataCheckout
  }

  //Retorna um array com os dados da data 
 private func separetedDate(date: String) { 
       return date.components(separatedBy: "-")
  }

 //Cria uma struct com as datas para facilitar a utilização
 private func structData(date: [String]) {

  struct structData { 
    let day: String
    let month: String
    let year: String
  }
  let data = structData(day: date[0], month: date[1], year: date[2])
  
  return data
 }
}



let dataStringCheckIn: String = "2025-12-25"
let dataStringCheckOut: String = "2025-12-30"

let booking1 = Booking(dataCheckin: dataStringCheckIn, dataCheckout: dataStringCheckOut)

print(booking1.structData)