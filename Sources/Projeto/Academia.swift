class Academia {
    private let nome: String
    private var alunosMatriculos: [String: Aluno]
    private var instrutoresContratados: [String: Instrutor]
    private var aparelhos: [Aparelho]
    private var aulasDisponiveis: [Aula]

    public func adicionarAparelho(_ aula: Aula){

        aulasDisponiveis.append(aula)
    }

    public func contratarInstrutor(_ instrutor: Instrutor){
        let email = instrutor.email
        if(instrutoresContratados[email] != nil){
            instrutoresContratados[instrutor.email] = instrutor
            print("Instrutor contratado com sucesso")
        } else {
            print("Instrutor já contratado")
        }
    }

    public func matricularAluno(_ aluno: Aluno){
        let matricula = aluno.getMatricula()
        if(alunosMatriculos[matricula] != nil){

        }
    }

    public func listarAulas(){

        print("--- Lista de Aulas Disponíveis ---")
        for aula in aulasDisponiveis {

            print("\n\n\(aula.getDescricao())")
        }
        print("-------------------------------------")
    }
}