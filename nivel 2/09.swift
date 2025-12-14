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