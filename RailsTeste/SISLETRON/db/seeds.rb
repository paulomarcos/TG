# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

e1 = Escola.create(nome: "UFPR", telefone: "4133333333", estado: "Paraná", cidade: "Curitiba", imagem: "" )
Turma.create(ano: "1", descricao: "Descrição", turma: "A", escola_id: e1.id)
Turma.create(ano: "1", descricao: "Descrição", turma: "B", escola_id: e1.id)
Turma.create(ano: "2", descricao: "Descrição", turma: "A", escola_id: e1.id)
Turma.create(ano: "2", descricao: "Descrição", turma: "B", escola_id: e1.id)

e2 = Escola.create(nome: "PUCPR", telefone: "4133335555", estado: "Paraná", cidade: "Curitiba", imagem: "" )
Turma.create(ano: "3", descricao: "Descrição", turma: "A", escola_id: e2.id)
Turma.create(ano: "3", descricao: "Descrição", turma: "B", escola_id: e2.id)
Turma.create(ano: "2", descricao: "Descrição", turma: "A", escola_id: e2.id)
Turma.create(ano: "2", descricao: "Descrição", turma: "B", escola_id: e2.id)

e3 = Escola.create(nome: "TUIUTI", telefone: "4133225566", estado: "Paraná", cidade: "Curitiba", imagem: "" )
Turma.create(ano: "1", descricao: "Descrição", turma: "A", escola_id: e3.id)
Turma.create(ano: "2", descricao: "Descrição", turma: "A", escola_id: e3.id)
Turma.create(ano: "3", descricao: "Descrição", turma: "A", escola_id: e3.id)
Turma.create(ano: "3", descricao: "Descrição", turma: "B", escola_id: e3.id)

p1 = Professor.create(nome: "Laurence", data_nascimento: "12/12/1993")
p2 = Professor.create(nome: "Eduardo", data_nascimento: "02/02/1974")
p1 = Professor.create(nome: "Milton", data_nascimento: "11/04/1977")

t1 = Turma.create(ano: "2", descricao: "Descrição", turma: "B", escola_id: e2.id)
t2 = Turma.create(ano: "2", descricao: "Descrição", turma: "B", escola_id: e1.id)
t3 = Turma.create(ano: "2", descricao: "Descrição", turma: "B", escola_id: e3.id)

t1.professors << [p1, p2]
t2.professors << [p1, p3]
t3.professors << [p2, p3]
