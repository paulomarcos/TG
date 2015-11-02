class ProjetosController < ApplicationController


  def index
    @projetos = Projeto.all
  end

  def show
    @projeto = Projeto.find(params[:id])
    @turmas = @projeto.turmas
    @conteudos = @projeto.conteudos

    @execucao = Execucao.where(projeto_id: @projeto.id).pluck('professor_id')
    @professores_execucao = Professor.where(id: @execucao)

    @plano = Plano.where(projeto_id: @projeto.id).pluck('professor_id')
    @professores_plano = Professor.where(id: @plano)
  end
end
