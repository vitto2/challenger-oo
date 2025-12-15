// Crie uma classe Booking (Reserva) com codigo (String), dataCheckin (String), e dataCheckout (String). Implemente um init que receba os 3. Após a criação da instância, imprima a diferença de dias (simulada por um simples Int) entre as datas usando um método chamado calcularDuracao().

class Booking {
  private(set) let code: String
  private(set) let dataCheckin: String
  private(set) let dataCheckout: String


  init(dataCheckin: String, dataCheckout: String) {
    code = Int.random(in: 1000...2000)
    self.dataCheckin = dataCheckin
    self.dataCheckout = dataCheckout
  }
}