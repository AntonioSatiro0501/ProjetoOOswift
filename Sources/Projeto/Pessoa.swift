public class Pessoa {
    // nome foi escolhido como public devido à impossibilidade de estabelecer nome como private(set) enquanto let
    public let nome: String
    private(set) var email: String

    init(nome: String, email: String){
        self.nome = nome
        self.email = email
    }

    func getDescricao() -> String{
        return "Nome: \(nome)\nEmail: \(email)"
    }
}