
class DataManager {
  var dadosArmazenados: String

  init(dados: String) {
    dadosArmazenados = dados
  }
}


//let cache = DataManager(dados: "Testando")
let cache = DataManager(dados: "Testando 2")
let backupCache = cache 
print(cache.dadosArmazenados)
print(backupCache.dadosArmazenados)

cache.dadosArmazenados = "Alterando valor"

print(cache.dadosArmazenados)
print(backupCache.dadosArmazenados)