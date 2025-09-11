import Foundation

let academia:Academia = Academia(nome: "Academia POO 360", alunosMatriculados: [:], instrutoresContratados: [:], aparelhos: [], aulasDisponiveis: [])

let planomensal: PlanoMensal = PlanoMensal()
let planoanual: PlanoAnual = PlanoAnual()

let instrutor1: Instrutor = Instrutor(nome: "Felipe Santana", email: "felipe0421@gmail.com", especialidade: "Triceps")
let instrutor2: Instrutor = Instrutor(nome: "Bruno Wagner", email: "wagner32412@gmail.com", especialidade: "Abdutor")

academia.contratarInstrutor(instrutor1)
academia.contratarInstrutor(instrutor2)

let aluno1 = academia.matricularAluno(nome: "Rubens Tanaka", email: "tanaka523@gmail.com", matricula: "1234", plano: planomensal)
let aluno2 = academia.matricularAluno(nome: "Lidia Riquelme", email: "lidgia453@hotmail.com", matricula: "1433", plano: planoanual)

let aula1: AulaPersonal = AulaPersonal(nome: "Peito", instrutor: instrutor1, aluno: aluno1)
let aula2: AulaColetiva = AulaColetiva(nome: "Zumba", instrutor: instrutor2, capacidadeMaxima: 3)

academia.adicionarAula(aula1)
academia.adicionarAula(aula2)

aula2.inscrever(aluno: aluno1)
aula2.inscrever(aluno: aluno2)

let aluno3: Aluno = academia.matricularAluno(nome: "Rose Magalhães", email: "rose9545@yahoo.com.br", matricula: "3134", plano: planomensal)
let aluno4: Aluno = academia.matricularAluno(nome: "Fernando Miguel", email: "fefe431@outlook.com.br", matricula: "6243", plano: planoanual)

aula2.inscrever(aluno: aluno3)
aula2.inscrever(aluno: aluno4)

academia.listarAlunos()
academia.listarAulas()

var aulasLista: [Aula] = [] 
aulasLista.append(aula1)
aulasLista.append(aula2)

for teste in aulasLista{
    print(teste.getDescricao())
}

var pessoasLista: [Pessoa] = []
pessoasLista.append(instrutor1)
pessoasLista.append(aluno1)

for teste in pessoasLista{
    print(teste.getDescricao())
}
