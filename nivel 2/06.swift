// Crie uma classe DataManager com uma propriedade variável dadosArmazenados(String). Crie uma instância (cache) dessa classe. Crie uma segunda variável (backupCache) que referencie a primeira. Mude dadosArmazenados através de cache. Imprima o valor em backupCache para provar que a mudança foi compartilhada.


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