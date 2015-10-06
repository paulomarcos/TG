class Atividade < ActiveRecord::Base
  has_many :material_motivadors
  belongs_to :projeto
end
