class Professor < ActiveRecord::Base
  validates :identificador, presence: true, uniqueness: true
  validates :password, :presence => true, :confirmation => true, :length => { minimum: 6 }
  
  has_many :professor_turmas
  has_many :turmas, through: :professor_turmas

  has_many :execucaos
  has_many :projetos, through: :execucao

  has_many :planos
  has_many :projetos, through: :planos

  has_secure_password
end
