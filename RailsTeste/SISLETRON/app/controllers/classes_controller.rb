class ClassesController < ApplicationController
  def index
    @classes = Classe.all
  end
end
