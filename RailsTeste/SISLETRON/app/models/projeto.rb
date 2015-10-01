class Projeto < ActiveRecord::Base
  has_many :projeto_turmas
  has_many :turmas, through: :projeto_turmas
end
