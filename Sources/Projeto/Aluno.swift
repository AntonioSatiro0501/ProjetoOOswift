import Foundation

public class Aluno: Pessoa {

    private var matricula: String
    private var nivel: NivelAluno
    private(set) var plano: Plano

    init(nome: String, email: String, matricula: String, plano: Plano) {

        self.matricula = matricula
        self.nivel = .iniciante
        self.plano = plano
        super.init(nome: nome, email: email)
    }

    func getMatricula() -> String{

        return matricula
    }

    override func getDescricao () -> String{

        return "(\(super.getDescricao()) \nMatricula: \(matricula)\nPlano: \(plano.nome))"
    }

}