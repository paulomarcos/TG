class ProfessorTurma < ActiveRecord::Base
  belongs_to :professor
  belongs_to :turma
end
