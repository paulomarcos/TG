class Resposta < ActiveRecord::Base
  validates :conteudo, presence: true

  belongs_to :aluno
  belongs_to :exercicio
end
