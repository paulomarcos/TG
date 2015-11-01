class Aluno < ActiveRecord::Base
  belongs_to :turma

  has_secure_password
end
