class Aparelho: Manutencao{
     internal let nomeItem: String
     private(set) var dataUltimaManutencao: String
     func realizarManutencao() -> Bool{
         print("Realizando manutenção do aparelho \(nomeItem)!")
         return true
     }
     init(nomeItem: String){
        self.nomeItem = nomeItem
        self.dataUltimaManutencao = "Nenhuma"
     }
}