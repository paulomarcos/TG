class ProjetoTurma < ActiveRecord::Base
  belongs_to :projeto
  belongs_to :turma
end
