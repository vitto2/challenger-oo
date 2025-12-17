// Crie uma classe base ContaBancaria com um método extrato(). Crie uma classe filha ContaCorrente que herde de ContaBancaria. Na classe filha, sobrescreva (override func) o método extrato() para que ele imprima, além do extrato, uma mensagem adicional específica da ContaCorrente (ex: "Tarifas mensais aplicáveis").


class ContaBancaria { 
  
  func extrato() {
    print("Extrato - 2025/12")
  }
}


class ContaCorrente: ContaBancaria { 

  override func extrato() {
    super.extrato()
    print("Tarifas mensais aplicáveis. ")
  }
}

let acc = ContaCorrente()


acc.extrato()