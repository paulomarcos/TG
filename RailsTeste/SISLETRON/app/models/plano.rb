class Plano < ActiveRecord::Base
  belongs_to :projeto
  belongs_to :professor
end
