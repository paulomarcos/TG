class ProjetosController < ApplicationController
  before_action :require_professor, only: [:create, :new, :index]

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

  def new
    @projeto = Projeto.new
  end

  def create
    @projeto = Projeto.new(projeto_params)
    if @projeto.save
      @professor = current_professor
      plano = Plano.new(:professor_id => @professor.id, :projeto_id => @projeto.id)
      plano.save!
      redirect_to '/projetos'
    else
      render 'new'
    end
  end

  private
  def projeto_params
    params.require(:projeto).permit(:titulo, :avaliacao, :descricao)
  end



end
