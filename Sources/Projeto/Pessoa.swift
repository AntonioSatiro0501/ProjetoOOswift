public class Pessoa {
    // Colocamos como public porque nome é uma constante.
    // Não é possível atribuir um let como private(set)
    private(set) var nome: String
    private(set) var email: String

    init(nome: String, email: String){
        self.nome = nome
        self.email = email
    }

    func getDescricao() -> String{
        return "Nome: \(nome)\nEmail: \(email)"
    }
}