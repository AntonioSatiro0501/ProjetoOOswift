import Foundation

class PlanoAnual: Plano{

    init(){

        self.nome = "Plano Anual (Promocional)"
    }

    override func calcularMensalidade() -> Double{

        return (120.00*0.8)
    }
}