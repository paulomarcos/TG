# This file should contpin pll the record creption needed to seed the dptpbpse with its defpult vplues.
# The dptp cpn then be lopded with the rpke db:seed (or crepted plongside the db with db:setup).
#
# Expmples:
#
#   cities = City.crepte([{ npme: 'Chicpgo' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

p1 = Professor.create(nome: "George", data_nascimento: "01/01/1999", identificador: "p1", password: "123456")
p2 = Professor.create(nome: "Milton", data_nascimento: "01/01/1979", identificador: "p2", password: "123456")
p3 = Professor.create(nome: "Elizandro", data_nascimento: "01/01/1970", identificador: "p3", password: "123456")
p4 = Professor.create(nome: "Marciano", data_nascimento: "11/11/1999", identificador: "p4", password: "123456")
p5 = Professor.create(nome: "Wilson", data_nascimento: "01/03/1988", identificador: "p5", password: "123456")
p6 = Professor.create(nome: "Abigail", data_nascimento: "01/01/1966", identificador: "p6", password: "123456")

e1 = Escola.create(nome: "UFPR", telefone: "4133334556")
e2 = Escola.create(nome: "UTFPR", telefone: "4133234422")
e3 = Escola.create(nome: "PUCPR", telefone: "4133001155")
e4 = Escola.create(nome: "Tuiuti", telefone: "4130242753")
e5 = Escola.create(nome: "Unicuritiba", telefone: "4130234456")

t1 = Turma.create(ano: "1", turma: "A", descricao: "1A", escola_id: e1.id)
t2 = Turma.create(ano: "2", turma: "A", descricao: "2A", escola_id: e1.id)
t3 = Turma.create(ano: "3", turma: "A", descricao: "3A", escola_id: e2.id)
t4 = Turma.create(ano: "4", turma: "A", descricao: "4A", escola_id: e2.id)
t5 = Turma.create(ano: "5", turma: "A", descricao: "5A", escola_id: e3.id)
t6 = Turma.create(ano: "6", turma: "A", descricao: "6A", escola_id: e4.id)


pj1 = Projeto.create(titulo: "Meio Ambiente", avaliacao: "8/10", descricao: "Lorem ipsum dolor sit amet.")
pj2 = Projeto.create(titulo: "Desenvolvimento de Jogos", avaliacao: "7/10", descricao: "Consectetur adipiscing elit.")
pj3 = Projeto.create(titulo: "Empreendedorismo", avaliacao: "9.5/10", descricao: "Aenean rhoncus, mauris fringilla ultrices semper.")


ac1 = AreaConhecimento.create(titulo: "Ciências")
ac2 = AreaConhecimento.create(titulo: "Matemática")
ac3 = AreaConhecimento.create(titulo: "Ciências Sociais")

c1 = Conteudo.create(titulo: "Sustentabilidade", descricao: "Lalalala", ano: "1", area_conhecimento_id: ac1.id)
c2 = Conteudo.create(titulo: "Trigonometria", descricao: "Lalalala", ano: "1", area_conhecimento_id: ac2.id)
c3 = Conteudo.create(titulo: "Cálculo I", descricao: "Lalalala", ano: "1", area_conhecimento_id: ac3.id)
c4 = Conteudo.create(titulo: "Vida selvagem", descricao: "Lalalala", ano: "1", area_conhecimento_id: ac1.id)
c5 = Conteudo.create(titulo: "Técnica de Jogos", descricao: "Lalalala", ano: "1", area_conhecimento_id: ac2.id)
c6 = Conteudo.create(titulo: "Introducao ao Negócio", descricao: "Lalalala", ano: "1", area_conhecimento_id: ac3.id)
c7 = Conteudo.create(titulo: "Produção Agrícola", descricao: "Lalalala", ano: "1", area_conhecimento_id: ac1.id)
c8 = Conteudo.create(titulo: "Gráficos Visuais", descricao: "Lalalala", ano: "1", area_conhecimento_id: ac2.id)

a1 = Aluno.create(nome: "Jorge", data_nascimento: "12/12/2002", identificador: "a1", password: "123456", turma_id: t1.id)
a2 = Aluno.create(nome: "André", data_nascimento: "12/03/2002", identificador: "a2", password: "123456", turma_id: t1.id)
a3 = Aluno.create(nome: "Abigail", data_nascimento: "11/02/2002", identificador: "a3", password: "123456", turma_id: t1.id)
a4 = Aluno.create(nome: "Arthur", data_nascimento: "06/06/2002", identificador: "a4", password: "123456", turma_id: t1.id)
a5 = Aluno.create(nome: "Jennifer", data_nascimento: "01/10/2002", identificador: "a5", password: "123456", turma_id: t1.id)
a6 = Aluno.create(nome: "Tabata", data_nascimento: "11/11/2002", identificador: "a6", password: "123456", turma_id: t1.id)
a7 = Aluno.create(nome: "Huiz", data_nascimento: "09/08/2002", identificador: "a7", password: "123456", turma_id: t1.id)
a8 = Aluno.create(nome: "Madelvino", data_nascimento: "05/12/2002", identificador: "a8", password: "123456", turma_id: t1.id)

a9 = Aluno.create(nome: "Cris", data_nascimento: "12/12/2002", identificador: "a9", password: "123456", turma_id: t2.id)
a10 = Aluno.create(nome: "Pablo", data_nascimento: "12/03/2002", identificador: "a10", password: "123456", turma_id: t2.id)
a11 = Aluno.create(nome: "Gerian", data_nascimento: "11/02/2002", identificador: "a11", password: "123456", turma_id: t2.id)
a12 = Aluno.create(nome: "Rafe", data_nascimento: "06/06/2002", identificador: "a12", password: "123456", turma_id: t2.id)
a13 = Aluno.create(nome: "Tristao", data_nascimento: "01/10/2002", identificador: "a13", password: "123456", turma_id: t2.id)
a14 = Aluno.create(nome: "Kara", data_nascimento: "11/11/2002", identificador: "a14", password: "123456", turma_id: t2.id)
a15 = Aluno.create(nome: "Miguitin", data_nascimento: "09/08/2002", identificador: "a15", password: "123456", turma_id: t2.id)
a16 = Aluno.create(nome: "Madelvo", data_nascimento: "05/12/2002", identificador: "a16", password: "123456", turma_id: t2.id)

a17 = Aluno.create(nome: "Diego", data_nascimento: "12/12/2002", identificador: "a17", password: "123456", turma_id: t3.id)
a18 = Aluno.create(nome: "Andrade", data_nascimento: "12/03/2002", identificador: "a18", password: "123456", turma_id: t3.id)
a19 = Aluno.create(nome: "Melissa", data_nascimento: "11/02/2002", identificador: "a19", password: "123456", turma_id: t3.id)
a20 = Aluno.create(nome: "Jefferson", data_nascimento: "06/06/2002", identificador: "a20", password: "123456", turma_id: t3.id)
a21 = Aluno.create(nome: "Ulisses", data_nascimento: "01/10/2002", identificador: "a21", password: "123456", turma_id: t3.id)
a22 = Aluno.create(nome: "Modrogo", data_nascimento: "11/11/2002", identificador: "a22", password: "123456", turma_id: t3.id)
a23 = Aluno.create(nome: "Matapá", data_nascimento: "09/08/2002", identificador: "a23", password: "123456", turma_id: t3.id)
a24 = Aluno.create(nome: "Larissa", data_nascimento: "05/12/2002", identificador: "a24", password: "123456", turma_id: t3.id)

a25 = Aluno.create(nome: "Cordoba", data_nascimento: "12/12/2002", identificador: "a25", password: "123456", turma_id: t4.id)
a26 = Aluno.create(nome: "Monalisa", data_nascimento: "12/03/2002", identificador: "a26", password: "123456", turma_id: t4.id)
a27 = Aluno.create(nome: "Linda", data_nascimento: "11/02/2002", identificador: "a27", password: "123456", turma_id: t4.id)
a28 = Aluno.create(nome: "Edivan", data_nascimento: "06/06/2002", identificador: "a28", password: "123456", turma_id: t4.id)
a29 = Aluno.create(nome: "Warchal", data_nascimento: "01/10/2002", identificador: "a29", password: "123456", turma_id: t4.id)
a30 = Aluno.create(nome: "Thiago", data_nascimento: "11/11/2002", identificador: "a30", password: "123456", turma_id: t4.id)
a31 = Aluno.create(nome: "Yullia", data_nascimento: "09/08/2002", identificador: "a31", password: "123456", turma_id: t4.id)
a32 = Aluno.create(nome: "Pluto", data_nascimento: "05/12/2002", identificador: "a32", password: "123456", turma_id: t4.id)


t1.professors << [p1, p2, p3, p4, p5, p6]
t2.professors << [p1, p3, p4]
t3.professors << [p1, p2, p3, p4, p5]
t4.professors << [p2, p3, p5, p6]
t5.professors << [p1, p6]
t6.professors << [p1, p2, p3, p6]

t1.projetos << [pj1, pj2, pj3]
t2.projetos << [pj1, pj3]
t3.projetos << [pj1, pj2]
t4.projetos << [pj2, pj3]
t5.projetos << [pj1]
t6.projetos << [pj1]

pj1.conteudos << [c1, c4, c7]
pj2.conteudos << [c2, c5, c8]
pj3.conteudos << [c3, c6]

ex1 = Execucao.create(professor_id: p1.id, projeto_id: pj1.id)
ex2 = Execucao.create(professor_id: p2.id, projeto_id: pj1.id)
ex3 = Execucao.create(professor_id: p3.id, projeto_id: pj1.id)
ex4 = Execucao.create(professor_id: p4.id, projeto_id: pj2.id)
ex5 = Execucao.create(professor_id: p5.id, projeto_id: pj2.id)
ex6 = Execucao.create(professor_id: p6.id, projeto_id: pj2.id)
ex7 = Execucao.create(professor_id: p2.id, projeto_id: pj3.id)
ex8 = Execucao.create(professor_id: p4.id, projeto_id: pj3.id)
ex9 = Execucao.create(professor_id: p6.id, projeto_id: pj3.id)

pl1 = Plano.create(professor_id: p4.id, projeto_id: pj1.id)
pl2 = Plano.create(professor_id: p5.id, projeto_id: pj1.id)
pl3 = Plano.create(professor_id: p6.id, projeto_id: pj1.id)
pl4 = Plano.create(professor_id: p4.id, projeto_id: pj2.id)
pl5 = Plano.create(professor_id: p1.id, projeto_id: pj2.id)
pl6 = Plano.create(professor_id: p2.id, projeto_id: pj2.id)
pl7 = Plano.create(professor_id: p2.id, projeto_id: pj3.id)
pl8 = Plano.create(professor_id: p3.id, projeto_id: pj3.id)
pl9 = Plano.create(professor_id: p6.id, projeto_id: pj3.id)

at1 = Atividade.create(titulo: "Geometria Analítica", projeto_id: pj2.id)
at2 = Atividade.create(titulo: "Cálculo Diferencial e Integral", projeto_id: pj2.id)
at3 = Atividade.create(titulo: "Análise de Risco", projeto_id: pj3.id)
at4 = Atividade.create(titulo: "Plantas Herbáceas", projeto_id: pj1.id)
at5 = Atividade.create(titulo: "Animais em Cativeiro", projeto_id: pj1.id)

mm1 = MaterialMotivador.create(titulo: "Base de Vetores", palavrasChave: "matemática", tipo: "texto", conteudo: "Este é o começo da Geometria Analítica...", atividade_id: at1.id)
mm2 = MaterialMotivador.create(titulo: "Diferenças Finitas", palavrasChave: "matemática", tipo: "texto", conteudo: "Este é o começo do Cálculo...", atividade_id: at2.id)
mm3 = MaterialMotivador.create(titulo: "Canvas MM", palavrasChave: "administração", tipo: "texto", conteudo: "A primeira pergunta que devemos nos fazer é: qual a...", atividade_id: at3.id)
mm4 = MaterialMotivador.create(titulo: "Pinheiros ou Araucárias?", palavrasChave: "ciências", tipo: "vídeo", conteudo: "Link do youtube", atividade_id: at4.id)
mm5 = MaterialMotivador.create(titulo: "Papagaios Raros na Mata Atlântica", palavrasChave: "ciências", tipo: "vídeo", conteudo: "Link do youtube", atividade_id: at5.id)

exr1 = Exercicio.create(numero: 1, enunciado: "Dentre quais as alternativas corretas...", nota: 10.0, correcao: "Null", tipo: "dissertativa", material_motivador_id: mm1.id)
exr2 = Exercicio.create(numero: 2, enunciado: "Dentre quais as alternativas corretas...", nota: 10.0, correcao: "Null", tipo: "dissertativa", material_motivador_id: mm1.id)
exr3 = Exercicio.create(numero: 1, enunciado: "Dentre quais as alternativas corretas...", nota: 10.0, correcao: "Null", tipo: "dissertativa", material_motivador_id: mm2.id)
exr4 = Exercicio.create(numero: 2, enunciado: "Dentre quais as alternativas corretas...", nota: 10.0, correcao: "Null", tipo: "dissertativa", material_motivador_id: mm2.id)
exr5 = Exercicio.create(numero: 1, enunciado: "Dentre quais as alternativas corretas...", nota: 10.0, correcao: "Null", tipo: "dissertativa", material_motivador_id: mm3.id)
exr6 = Exercicio.create(numero: 2, enunciado: "Dentre quais as alternativas corretas...", nota: 10.0, correcao: "Null", tipo: "dissertativa", material_motivador_id: mm3.id)
exr7 = Exercicio.create(numero: 1, enunciado: "Dentre quais as alternativas corretas...", nota: 10.0, correcao: "Null", tipo: "dissertativa", material_motivador_id: mm4.id)
exr8 = Exercicio.create(numero: 2, enunciado: "Dentre quais as alternativas corretas...", nota: 10.0, correcao: "Null", tipo: "dissertativa", material_motivador_id: mm4.id)
exr9 = Exercicio.create(numero: 1, enunciado: "Dentre quais as alternativas corretas...", nota: 10.0, correcao: "Null", tipo: "dissertativa", material_motivador_id: mm5.id)
exr10 = Exercicio.create(numero: 2, enunciado: "Dentre quais as alternativas corretas...", nota: 10.0, correcao: "Null", tipo: "dissertativa", material_motivador_id: mm5.id)
