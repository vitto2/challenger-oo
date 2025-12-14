// Crie uma classe AppConfig com propriedades constantes para a versaoDaAPI (String) e o ambiente (String, ex: "Producao"). Crie um método de classe (static func) exibirConfiguracoes() que imprima ambas as constantes (Pesquise sobre static em classes).


class AppConfig { 

  enum Environment: String {
      case producao = "Produção"
      case homologacao = "Homologação"
      case testes = "Testes/QA"
    }

  private static let  versaoAPI: String  = "1.4.17"
  private static let  ambiente: Environment = .producao


  static func showConfigs() { 
    print("Version: \(versaoAPI) - Environment: \(ambiente.rawValue)")
  }
}


AppConfig.showConfigs()