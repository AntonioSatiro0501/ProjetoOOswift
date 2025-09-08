class Pessoa {

    var nome: String
    var email: String

    func getDescricao() -> String{

        return "Nome: \(nome)\nEmail: \(email)"
    }

    init(nome: String, email: String){

        self.nome = nome
        self.email = email
    }
}