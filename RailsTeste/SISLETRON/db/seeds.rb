# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

e1 = Escola.create(nome: "UFPR", telefone: "4133333333", estado: "Paraná", cidade: "Curitiba", imagem: "" )
Classe.create(ano: "1", descricao: "Descrição", turma: "A", escola_id: e1.id)
Classe.create(ano: "1", descricao: "Descrição", turma: "B", escola_id: e1.id)
Classe.create(ano: "2", descricao: "Descrição", turma: "A", escola_id: e1.id)
Classe.create(ano: "2", descricao: "Descrição", turma: "B", escola_id: e1.id)

e2 = Escola.create(nome: "PUCPR", telefone: "4133335555", estado: "Paraná", cidade: "Curitiba", imagem: "" )
Classe.create(ano: "3", descricao: "Descrição", turma: "A", escola_id: e2.id)
Classe.create(ano: "3", descricao: "Descrição", turma: "B", escola_id: e2.id)
Classe.create(ano: "2", descricao: "Descrição", turma: "A", escola_id: e2.id)
Classe.create(ano: "2", descricao: "Descrição", turma: "B", escola_id: e2.id)

e3 = Escola.create(nome: "TUIUTI", telefone: "4133225566", estado: "Paraná", cidade: "Curitiba", imagem: "" )
Classe.create(ano: "1", descricao: "Descrição", turma: "A", escola_id: e3.id)
Classe.create(ano: "2", descricao: "Descrição", turma: "A", escola_id: e3.id)
Classe.create(ano: "3", descricao: "Descrição", turma: "A", escola_id: e3.id)
Classe.create(ano: "3", descricao: "Descrição", turma: "B", escola_id: e3.id)
