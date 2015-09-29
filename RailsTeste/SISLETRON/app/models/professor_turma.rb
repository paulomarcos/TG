class ProfessorTurma < ActiveRecord::Base
  belongs_to :turma
  belongs_to :professor
end
