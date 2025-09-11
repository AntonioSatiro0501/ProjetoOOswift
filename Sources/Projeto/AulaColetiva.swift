class AulaColetiva: Aula {
    private(set) var alunosInscritos: [String: Aluno] = [:]
    private var capacidadeMaxima: Int

    override init(nome: String, instrutor: Instrutor){
        self.capacidadeMaxima = 25
        super.init(nome: nome, instrutor: instrutor)
    }

    init(nome: String, instrutor: Instrutor, capacidadeMaxima: Int){
        if(capacidadeMaxima > 0){
            self.capacidadeMaxima = capacidadeMaxima
        } else {
            self.capacidadeMaxima = 25
        }
        super.init(nome: nome, instrutor: instrutor)
    }

    func inscrever(aluno: Aluno) -> Bool {
        if(alunosInscritos.count < capacidadeMaxima && alunosInscritos[aluno.getMatricula()] ==  nil){
            print("Aluno \(aluno.nome) inscrito com sucesso em \(self.nome)")
            alunosInscritos[aluno.getMatricula()] = aluno
            return true
        }
        print("ERRO: aluno \(aluno.nome) não foi inscrito!")
        return false
    }

    override func getDescricao() -> String {
    
        return "\(super.getDescricao()) \nNúmero de vagas ocupadas: \(alunosInscritos.count) | Máximo: \(capacidadeMaxima))"
    }
}