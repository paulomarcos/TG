class Projeto < ActiveRecord::Base
  has_many :projeto_turmas
  has_many :turmas, through: :projeto_turmas

  has_many :projeto_conteudos
  has_many :conteudos, through: :projeto_conteudos

  has_many :execucaos
  has_many :professors, through: :execucao

  has_many :planos
  has_many :professors, through: :planos
end
