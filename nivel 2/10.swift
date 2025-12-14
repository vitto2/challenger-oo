class Produto {
  private(set) let name: String 
  private(set) var stock: Int


  init(name: String, stockInitial: Int) { 
    self.name = name 
    stock = stockInitial
  }

  func sell(amount: Int) { 

    guard amount > 0 else {
      print("❌ Venda Inválida: A quantidade deve ser maior que zero.")
      return
    }

    if stock >= amount {
      stock-=amount
      print("✅ Venda realizada de \(amount) unidades de \(name). Estoque atual: \(stock).")
    } else {
      print("⚠️ Falha na Venda: Não há produtos o suficiente de \(name) no estoque.")
      print("Quantidade solicitada: \(amount) | Quantidade disponível: \(stock)")
    }

  }
}