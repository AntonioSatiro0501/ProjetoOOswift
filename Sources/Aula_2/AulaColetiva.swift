import Foundation

class AulaColetiva: Aula{

    private(set) var alunosInscritos: [String: Aluno]
    private let capacidadeMaxima: Int

    func inscrever(aluno: Aluno) -> Bool {

        if((alunosInscritos.count < capacidadeMaxima ) && (alunosInscritos.contains(aluno.nome) == true)){

            alunosInscritos.append(aluno)
            return true

        }else{

            return false
        }
    }

    override func getDescricao() -> String{


        return("Aula: \(nome)\nIntrutor: \(instrutor.nome)\nVagas ocupadas: \()")
    }

}