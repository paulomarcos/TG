class Resposta < ActiveRecord::Base
  belongs_to :aluno
  belongs_to :exercicio
end
