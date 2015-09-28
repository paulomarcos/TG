class TurmasController < ApplicationController
  def index
    tclasses = Turma.all
  end
end
