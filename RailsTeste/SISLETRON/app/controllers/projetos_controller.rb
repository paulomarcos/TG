class ProjetosController < ApplicationController
  before_action :authorize
  before_action :require_professor, only: [:create, :new, :edit, :update]

  def index

    if current_professor?
      @execucao_id = Execucao.where(professor_id: current_professor.id).pluck('projeto_id')
      @projetos_execucao = Projeto.find(@execucao_id)
      @plano_id = Plano.where(professor_id: current_professor.id).pluck('projeto_id')
      @projetos_plano = Projeto.find(@plano_id)
    else # current_aluno
      @projetos_turma = ProjetoTurma.where(turma_id: current_aluno.turma_id).pluck('projeto_id')
      @projetos = Projeto.find(@projetos_turma)
    end
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

  def edit
    @projeto = Projeto.find(params[:id])

    projeto_id = @projeto.id
    plano = Plano.where(projeto_id: projeto_id).pluck('professor_id')
    execucao = Execucao.where(projeto_id: projeto_id).pluck('professor_id')

    if plano.include?(current_professor.id) || execucao.include?(current_professor.id)
      @turmas = Turma.all
    else
      redirect_to :back, alert: "Você não tem autorização para editar este projeto"
    end

  end

  def update
    @projeto = Projeto.find(params[:id])

    projeto_id = @projeto.id
    plano = Plano.where(projeto_id: projeto_id).pluck('professor_id')
    execucao = Execucao.where(projeto_id: projeto_id).pluck('professor_id')

    if plano.include?(current_professor.id) || execucao.include?(current_professor.id)
      if  @projeto.update_attributes(projeto_params)

        @projeto.conteudos.clear
        conteudos = params[:projeto][:conteudo_ids]
        conteudos.each do |conteudo|
          c = Conteudo.find_by_id(conteudo)
          if c != nil
            @projeto.conteudos << c
          end
        end

        @projeto.turmas.clear
        turmas = params[:projeto][:turma_ids]
        turmas.each do |turma|
          t = Turma.find_by_id(turma)
          if t != nil
            @projeto.turmas << t
          end
        end

        @projeto.save


        redirect_to projeto_path(@projeto)
      else
        render 'edit'
      end
    else
      redirect_to :back, alert: "Você não tem autorização para editar este projeto"
    end
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
    params.require(:projeto).permit(:titulo, :avaliacao, :descricao, :turma_ids, :conteudo_ids)
  end



end
