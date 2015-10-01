class Conteudo < ActiveRecord::Base
  has_many :projeto_conteudos
  has_many :projetos, through: :projeto_conteudos
  belongs_to :area_conhecimento
end
