class ProjetosController < ApplicationController
  before_action :require_professor, only: [:create, :new, :index]

  def index
    @projetos = Projeto.all
  end

  def show
    @projeto = Projeto.find(params[:id])
    @turmas = @projeto.turmas
    @conteudos = @projeto.conteudos
    @atividades = @projeto.atividades

    @execucao = Execucao.where(projeto_id: @projeto.id).pluck('professor_id')
    @professores_execucao = Professor.where(id: @execucao)

    @plano = Plano.where(projeto_id: @projeto.id).pluck('professor_id')
    @professores_plano = Professor.where(id: @plano)
  end

  def new
    @projeto = Projeto.new
    @turmas = Turma.all
  end

  def create
    @projeto = Projeto.new(projeto_params)
    if @projeto.save
      @professor = current_professor
      plano = Plano.new(:professor_id => @professor.id, :projeto_id => @projeto.id)
      plano.save!

      conteudos = params[:projeto][:conteudo_ids]
      conteudos.each do |conteudo|
        c = Conteudo.find_by_id(conteudo)
        if c != nil
          @projeto.conteudos << c
        end
      end

      turmas = params[:projeto][:turma_ids]
      turmas.each do |turma|
        t = Turma.find_by_id(turma)
        if t != nil
          @projeto.turmas << t
        end
      end

      @projeto.save

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
