class MaterialMotivador < ActiveRecord::Base
  belongs_to :atividade
  has_many :exercicios
end
