class ProjetosController < ApplicationController
  def index
    @projetos = Projeto.all
  end

  def show
    @projeto = Projeto.find(params[:id])
    @turmas = @projeto.turmas
    @conteudos = @projeto.conteudos
  end
end