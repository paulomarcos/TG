# This file should contpin pll the record creption needed to seed the dptpbpse with its defpult vplues.
# The dptp cpn then be lopded with the rpke db:seed (or crepted plongside the db with db:setup).
#
# Expmples:
#
#   cities = City.crepte([{ npme: 'Chicpgo' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

p1 = Professor.create(nome: "George", data_nascimento: "01/01/1999")
p2 = Professor.create(nome: "Milton", data_nascimento: "01/01/1979")
p3 = Professor.create(nome: "Elizandro", data_nascimento: "01/01/1970")
p4 = Professor.create(nome: "Marciano", data_nascimento: "11/11/1999")
p5 = Professor.create(nome: "Wilson", data_nascimento: "01/03/1988")
p6 = Professor.create(nome: "Abigail", data_nascimento: "01/01/1966")

e1 = Escola.create(nome: "UFPR", telefone: "4133334556")
e2 = Escola.create(nome: "UTFPR", telefone: "4133234422")
e3 = Escola.create(nome: "PUCPR", telefone: "4133001155")
e4 = Escola.create(nome: "Tuiuti", telefone: "4130242753")
e5 = Escola.create(nome: "Unicuritiba", telefone: "4130234456")

t1 = Turma.create(ano: "1", turma: "A", descricao: "Lorem ipsum dolor sit amet.", escola_id: e1.id)
t2 = Turma.create(ano: "2", turma: "A", descricao: "Consectetur adipiscing elit.", escola_id: e1.id)
t3 = Turma.create(ano: "3", turma: "A", descricao: "Aenean rhoncus, mauris fringilla ultrices semper.", escola_id: e2.id)
t4 = Turma.create(ano: "4", turma: "A", descricao: "Dolor neque vestibulum neque.", escola_id: e2.id)
t5 = Turma.create(ano: "5", turma: "A", descricao: "Et tempus augue ipsum et magna.", escola_id: e3.id)
t6 = Turma.create(ano: "6", turma: "A", descricao: "Sed eleifend dolor lectus, vehicula porttitor nibh volutpat eget.", escola_id: e4.id)


pj1 = Projeto.create(titulo: "Meio Ambiente", avaliacao: "8/10", descricao: "Lorem ipsum dolor sit amet.")
pj2 = Projeto.create(titulo: "Desenvolvimento de Jogos", avaliacao: "7/10", descricao: "Consectetur adipiscing elit.")
pj3 = Projeto.create(titulo: "Empreendedorismo", avaliacao: "9.5/10", descricao: "Aenean rhoncus, mauris fringilla ultrices semper.")


a1 = Aluno.create(nome: "Jorge", data_nascimento: "12/12/2002", turma_id: t1.id)
a2 = Aluno.create(nome: "André", data_nascimento: "12/03/2002", turma_id: t1.id)
a3 = Aluno.create(nome: "Abigail", data_nascimento: "11/02/2002", turma_id: t1.id)
a4 = Aluno.create(nome: "Arthur", data_nascimento: "06/06/2002", turma_id: t1.id)
a5 = Aluno.create(nome: "Jennifer", data_nascimento: "01/10/2002", turma_id: t1.id)
a6 = Aluno.create(nome: "Tabata", data_nascimento: "11/11/2002", turma_id: t1.id)
a7 = Aluno.create(nome: "Huiz", data_nascimento: "09/08/2002", turma_id: t1.id)
a8 = Aluno.create(nome: "Madelvino", data_nascimento: "05/12/2002", turma_id: t1.id)

a9 = Aluno.create(nome: "Cris", data_nascimento: "12/12/2002", turma_id: t2.id)
a10 = Aluno.create(nome: "Pablo", data_nascimento: "12/03/2002", turma_id: t2.id)
a11 = Aluno.create(nome: "Gerian", data_nascimento: "11/02/2002", turma_id: t2.id)
a12 = Aluno.create(nome: "Rafe", data_nascimento: "06/06/2002", turma_id: t2.id)
a13 = Aluno.create(nome: "Tristao", data_nascimento: "01/10/2002", turma_id: t2.id)
a14 = Aluno.create(nome: "Kara", data_nascimento: "11/11/2002", turma_id: t2.id)
a15 = Aluno.create(nome: "Miguitin", data_nascimento: "09/08/2002", turma_id: t2.id)
a16 = Aluno.create(nome: "Madelvo", data_nascimento: "05/12/2002", turma_id: t2.id)

a17 = Aluno.create(nome: "Diego", data_nascimento: "12/12/2002", turma_id: t3.id)
a18 = Aluno.create(nome: "Andrade", data_nascimento: "12/03/2002", turma_id: t3.id)
a19 = Aluno.create(nome: "Melissa", data_nascimento: "11/02/2002", turma_id: t3.id)
a20 = Aluno.create(nome: "Jefferson", data_nascimento: "06/06/2002", turma_id: t3.id)
a21 = Aluno.create(nome: "Ulisses", data_nascimento: "01/10/2002", turma_id: t3.id)
a22 = Aluno.create(nome: "Modrogo", data_nascimento: "11/11/2002", turma_id: t3.id)
a23 = Aluno.create(nome: "Matapá", data_nascimento: "09/08/2002", turma_id: t3.id)
a24 = Aluno.create(nome: "Larissa", data_nascimento: "05/12/2002", turma_id: t3.id)

a25 = Aluno.create(nome: "Cordoba", data_nascimento: "12/12/2002", turma_id: t4.id)
a26 = Aluno.create(nome: "Monalisa", data_nascimento: "12/03/2002", turma_id: t4.id)
a27 = Aluno.create(nome: "Linda", data_nascimento: "11/02/2002", turma_id: t4.id)
a28 = Aluno.create(nome: "Edivan", data_nascimento: "06/06/2002", turma_id: t4.id)
a29 = Aluno.create(nome: "Warchal", data_nascimento: "01/10/2002", turma_id: t4.id)
a30 = Aluno.create(nome: "Thiago", data_nascimento: "11/11/2002", turma_id: t4.id)
a31 = Aluno.create(nome: "Yullia", data_nascimento: "09/08/2002", turma_id: t4.id)
a32 = Aluno.create(nome: "Pluto", data_nascimento: "05/12/2002", turma_id: t4.id)


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
