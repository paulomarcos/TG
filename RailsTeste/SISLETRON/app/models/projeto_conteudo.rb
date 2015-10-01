class ProjetoConteudo < ActiveRecord::Base
  belongs_to :projeto
  belongs_to :conteudo
end
