class Turma < ActiveRecord::Base
  belongs_to :escola
  has_many :alunos
  has_many :professor_turmas
  has_many :professors, through: :professor_turmas
end
