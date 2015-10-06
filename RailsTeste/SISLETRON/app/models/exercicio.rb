class Exercicio < ActiveRecord::Base
  belongs_to :material_motivador
  has_many :respostas
end
