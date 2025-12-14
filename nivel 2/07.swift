// Crie uma classe base ViewComponent. Crie uma classe filha CustomButton que herde de ViewComponent e adicione a ela uma propriedade titulo (String
// ). Crie uma instância de CustomButton e acesse um método (vazio, só para simular) chamado renderizar() que você definiu em ViewComponent
// .

class ViewComponent { 
  func renderizar() { 
    print("renderizou")
  }
}

class CustomButton: ViewComponent { 
 
  private(set) var title: String

  init(title: String) { 
    self.title = title
  }

  override func renderizar() { 
    // Garante que a lógica de "renderização" base aconteça primeiro
    super.renderizar()
    print(self.title)
  }
}


let btn1 = CustomButton(title: "clique aqui")


btn1.renderizar()