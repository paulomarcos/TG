class ProfessorsController < ApplicationController
  def index
    @professors = Professor.all
  end

  def show
    @professor = Professor.find(params[:id])

    @turmas = @professor.turmas

    @plano = Plano.where(professor_id: @professor.id).pluck('projeto_id')
    @projetos_plano = Projeto.where(id: @plano)

    @execucao = Execucao.where(professor_id: @professor.id).pluck('projeto_id')
    @projetos_execucao = Projeto.where(id: @execucao)

  end

end
