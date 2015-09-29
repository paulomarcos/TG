class Turma < ActiveRecord::Base
  has_many :professor_turmas
  has_many :professors, through: :professor_turmas
end
