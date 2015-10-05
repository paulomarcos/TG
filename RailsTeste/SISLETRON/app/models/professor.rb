class Professor < ActiveRecord::Base
  has_many :professor_turmas
  has_many :turmas, through: :professor_turmas

  has_many :execucaos
  has_many :projetos, through: :execucao

  has_many :planos
  has_many :projetos, through: :planos
end
