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

t1 = Turma.create(ano: "1", turma: "A", descricao: "Descricao")
t2 = Turma.create(ano: "2", turma: "A", descricao: "Descricao")
t3 = Turma.create(ano: "3", turma: "A", descricao: "Descricao")
t4 = Turma.create(ano: "4", turma: "A", descricao: "Descricao")
t5 = Turma.create(ano: "5", turma: "A", descricao: "Descricao")
t6 = Turma.create(ano: "6", turma: "A", descricao: "Descricao")

t1.professors << [p1, p2, p3, p4, p5, p6]
t2.professors << [p1, p3, p4]
t3.professors << [p1, p2, p3, p4, p5]
t4.professors << [p2, p3, p5, p6]
t5.professors << [p1, p6]
t6.professors << [p1, p2, p3, p6]
