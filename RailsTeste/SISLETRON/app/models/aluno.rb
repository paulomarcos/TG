class Aluno < ActiveRecord::Base
  validates :identificador, presence: true, uniqueness: true
  validates :nome, presence: true
  validates :password, :presence => true, :confirmation => true, :length => { minimum: 6 }

  belongs_to :turma

  has_many :respostas

  has_secure_password
end
