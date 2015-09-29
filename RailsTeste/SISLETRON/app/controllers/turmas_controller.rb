class TurmasController < ApplicationController
  def index
    @turmas = Turma.all
  end

  def show
    @turma = Turma.find(params[:id])
    @professors = @turma.professors
  end
end
