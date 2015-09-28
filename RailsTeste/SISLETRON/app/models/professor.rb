class Professor < ActiveRecord::Base
  has_many :professor_turmas
  has_many :turmas, through: :professor_turmas
end
