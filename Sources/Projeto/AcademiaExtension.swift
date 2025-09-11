extension Academia {

    private func gerarRelatorio() -> (totalAlunos: Int, totalInstrutores: Int, totalAulas: Int){

        return (totalAlunos: alunosMatriculados.count, totalInstrutores: instrutoresContratados.count, totalAulas: aulasDisponiveis.count )
    }
}